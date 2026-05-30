/*!
 * dencode-web
 * Copyright 2016 Mozq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.dencode.web.servlet.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns = "/*")
public class LegacyPathRedirectFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
		// NOP
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		if (request instanceof HttpServletRequest && response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse res = (HttpServletResponse) response;

			String servletPath = req.getServletPath();
			String pathInfo = req.getPathInfo();
			String fullPath = servletPath + ((pathInfo == null) ? "" : pathInfo);

			if (fullPath.endsWith("/string/program-string")) {
				String contextPath = req.getContextPath();
				String newPath = contextPath + fullPath.replace("/string/program-string", "/string/literal");

				String queryString = req.getQueryString();
				if (queryString != null) {
					newPath += "?" + queryString;
				}

				res.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
				res.setHeader("Location", newPath);
				return;
			}
		}

		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// NOP
	}
}
