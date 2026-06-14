/*!
 * DenCode
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
package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class StringHtmlEscapeDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			StringHtmlEscapeDencoder::encStrHtmlEscape,
			StringHtmlEscapeDencoder::decStrHtmlEscape,
			"string.html-escape.target",
			"string.html-escape.named-refs",
			"string.html-escape.numeric-ref-notation");

	@Test
	public void test_blank() {
		tester.test("", "", tester.options());
	}

	@Test
	public void test_default() {
		tester.test("<p>Hello, world!</p>", "&lt;p&gt;Hello, world!&lt;/p&gt;");
		tester.test("<div class=\"msg\">Tom & 'Jerry'</div>", "&lt;div class=&quot;msg&quot;&gt;Tom &amp; &apos;Jerry&apos;&lt;/div&gt;");
		tester.test("© ア 😀", "© ア 😀");
	}

	@Test
	public void test_target() {
		// basic
		tester.test("<>&\"'", "&#60;&#62;&#38;&#34;&#39;", tester.options("basic", "none")); // Basic
		tester.test("Az09", "Az09", tester.options("basic", "none")); // Alnum
		tester.test(" !@[]`~_", " !@[]`~_", tester.options("basic", "none")); // Symbol
		tester.test("\t\n\r\u007F", "\t\n\r\u007F", tester.options("basic", "none")); // Control
		tester.test("©®\u00A0Α€ア😀", "©®\u00A0Α€ア😀", tester.options("basic", "none")); // Non-ASCII

		// non-ascii
		tester.test("<>&\"'", "&#60;&#62;&#38;&#34;&#39;", tester.options("non-ascii", "none")); // Basic
		tester.test("Az09", "Az09", tester.options("non-ascii", "none")); // Alnum
		tester.test(" !@[]`~_", " !@[]`~_", tester.options("non-ascii", "none")); // Symbol
		tester.test("\t\n\r\u007F", "\t\n\r\u007F", tester.options("non-ascii", "none")); // Control
		tester.test("©®\u00A0Α€ア😀", "&#169;&#174;&#160;&#913;&#8364;&#12450;&#128512;", tester.options("non-ascii", "none")); // Non-ASCII

		// non-alnum
		tester.test("<>&\"'", "&#60;&#62;&#38;&#34;&#39;", tester.options("non-alnum", "none")); // Basic
		tester.test("Az09", "Az09", tester.options("non-alnum", "none")); // Alnum
		tester.test(" !@[]`~_", "&#32;&#33;&#64;&#91;&#93;&#96;&#126;&#95;", tester.options("non-alnum", "none")); // Symbol
		tester.test("\t\n\r\u007F", "&#9;&#10;&#13;&#127;", tester.options("non-alnum", "none")); // Control
		tester.test("©®\u00A0Α€ア😀", "&#169;&#174;&#160;&#913;&#8364;&#12450;&#128512;", tester.options("non-alnum", "none")); // Non-ASCII

		// all
		tester.test("<>&\"'", "&#60;&#62;&#38;&#34;&#39;", tester.options("all", "none")); // Basic
		tester.test("Az09", "&#65;&#122;&#48;&#57;", tester.options("all", "none")); // Alnum
		tester.test(" !@[]`~_", "&#32;&#33;&#64;&#91;&#93;&#96;&#126;&#95;", tester.options("all", "none")); // Symbol
		tester.test("\t\n\r\u007F", "&#9;&#10;&#13;&#127;", tester.options("all", "none")); // Control
		tester.test("©®\u00A0Α€ア😀", "&#169;&#174;&#160;&#913;&#8364;&#12450;&#128512;", tester.options("all", "none")); // Non-ASCII
	}

	@Test
	public void test_namedReferences() {
		// html5
		tester.test("<>&\"'", "&lt;&gt;&amp;&quot;&apos;", tester.options("all", "html5")); // Basic
		tester.test("Az09", "&#65;&#122;&#48;&#57;", tester.options("all", "html5")); // Alnum
		tester.test(" !@[]`~_", "&#32;&excl;&commat;&lsqb;&rsqb;&grave;&#126;&lowbar;", tester.options("all", "html5")); // Symbol
		tester.test("\t\n\r\u007F", "&Tab;&NewLine;&#13;&#127;", tester.options("all", "html5")); // Control
		tester.test("©®\u00A0Α€ア😀", "&copy;&reg;&nbsp;&Alpha;&euro;&#12450;&#128512;", tester.options("all", "html5")); // Non-ASCII

		// html4
		tester.test("<>&\"'", "&lt;&gt;&amp;&quot;&#39;", tester.options("all", "html4")); // Basic
		tester.test("Az09", "&#65;&#122;&#48;&#57;", tester.options("all", "html4")); // Alnum
		tester.test(" !@[]`~_", "&#32;&#33;&#64;&#91;&#93;&#96;&#126;&#95;", tester.options("all", "html4")); // Symbol
		tester.test("\t\n\r\u007F", "&#9;&#10;&#13;&#127;", tester.options("all", "html4")); // Control
		tester.test("©®\u00A0Α€ア😀", "&copy;&reg;&nbsp;&Alpha;&euro;&#12450;&#128512;", tester.options("all", "html4")); // Non-ASCII

		// xhtml
		tester.test("<>&\"'", "&lt;&gt;&amp;&quot;&apos;", tester.options("all", "xhtml")); // Basic
		tester.test("Az09", "&#65;&#122;&#48;&#57;", tester.options("all", "xhtml")); // Alnum
		tester.test(" !@[]`~_", "&#32;&#33;&#64;&#91;&#93;&#96;&#126;&#95;", tester.options("all", "xhtml")); // Symbol
		tester.test("\t\n\r\u007F", "&#9;&#10;&#13;&#127;", tester.options("all", "xhtml")); // Control
		tester.test("©®\u00A0Α€ア😀", "&#169;&#174;&#160;&#913;&#8364;&#12450;&#128512;", tester.options("all", "xhtml")); // Non-ASCII

		// none
		tester.test("<>&\"'", "&#60;&#62;&#38;&#34;&#39;", tester.options("all", "none")); // Basic
		tester.test("Az09", "&#65;&#122;&#48;&#57;", tester.options("all", "none")); // Alnum
		tester.test(" !@[]`~_", "&#32;&#33;&#64;&#91;&#93;&#96;&#126;&#95;", tester.options("all", "none")); // Symbol
		tester.test("\t\n\r\u007F", "&#9;&#10;&#13;&#127;", tester.options("all", "none")); // Control
		tester.test("©®\u00A0Α€ア😀", "&#169;&#174;&#160;&#913;&#8364;&#12450;&#128512;", tester.options("all", "none")); // Non-ASCII
	}

	@Test
	public void test_namedReferencesLangRang() {
		tester.testEncoder("\u2329\u232A", "&#9001;&#9002;", tester.options("all", "html5"));
		tester.testEncoder("\u27E8\u27E9", "&lang;&rang;", tester.options("all", "html5"));

		tester.testEncoder("\u2329\u232A", "&lang;&rang;", tester.options("all", "html4"));
		tester.testEncoder("\u27E8\u27E9", "&#10216;&#10217;", tester.options("all", "html4"));
	}

	@Test
	public void test_numericReferenceNotation() {
		tester.test("A©😀", "&#65;&#169;&#128512;", tester.options("all", "none", "decimal"));
		tester.test("A©😀", "&#x41;&#xa9;&#x1f600;", tester.options("all", "none", "hex-lower"));
		tester.test("A©😀", "&#x41;&#xA9;&#x1F600;", tester.options("all", "none", "hex-upper"));
	}

	@Test
	public void test_optionCombinations() {
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "html5", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "html5", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "html5", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#39;©😀", tester.options("basic", "html4", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#x27;©😀", tester.options("basic", "html4", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#x27;©😀", tester.options("basic", "html4", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "xhtml", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "xhtml", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;©😀", tester.options("basic", "xhtml", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&#60;&#38;&#34;&#39;©😀", tester.options("basic", "none", "decimal"));
		tester.test("A !<&\"'©😀", "A !&#x3c;&#x26;&#x22;&#x27;©😀", tester.options("basic", "none", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&#x3C;&#x26;&#x22;&#x27;©😀", tester.options("basic", "none", "hex-upper"));

		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&copy;&#128512;", tester.options("non-ascii", "html5", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&copy;&#x1f600;", tester.options("non-ascii", "html5", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&copy;&#x1F600;", tester.options("non-ascii", "html5", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#39;&copy;&#128512;", tester.options("non-ascii", "html4", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#x27;&copy;&#x1f600;", tester.options("non-ascii", "html4", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&#x27;&copy;&#x1F600;", tester.options("non-ascii", "html4", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&#169;&#128512;", tester.options("non-ascii", "xhtml", "decimal"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&#xa9;&#x1f600;", tester.options("non-ascii", "xhtml", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&lt;&amp;&quot;&apos;&#xA9;&#x1F600;", tester.options("non-ascii", "xhtml", "hex-upper"));
		tester.test("A !<&\"'©😀", "A !&#60;&#38;&#34;&#39;&#169;&#128512;", tester.options("non-ascii", "none", "decimal"));
		tester.test("A !<&\"'©😀", "A !&#x3c;&#x26;&#x22;&#x27;&#xa9;&#x1f600;", tester.options("non-ascii", "none", "hex-lower"));
		tester.test("A !<&\"'©😀", "A !&#x3C;&#x26;&#x22;&#x27;&#xA9;&#x1F600;", tester.options("non-ascii", "none", "hex-upper"));

		tester.test("A !<&\"'©😀", "A&#32;&excl;&lt;&amp;&quot;&apos;&copy;&#128512;", tester.options("non-alnum", "html5", "decimal"));
		tester.test("A !<&\"'©😀", "A&#x20;&excl;&lt;&amp;&quot;&apos;&copy;&#x1f600;", tester.options("non-alnum", "html5", "hex-lower"));
		tester.test("A !<&\"'©😀", "A&#x20;&excl;&lt;&amp;&quot;&apos;&copy;&#x1F600;", tester.options("non-alnum", "html5", "hex-upper"));
		tester.test("A !<&\"'©😀", "A&#32;&#33;&lt;&amp;&quot;&#39;&copy;&#128512;", tester.options("non-alnum", "html4", "decimal"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&lt;&amp;&quot;&#x27;&copy;&#x1f600;", tester.options("non-alnum", "html4", "hex-lower"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&lt;&amp;&quot;&#x27;&copy;&#x1F600;", tester.options("non-alnum", "html4", "hex-upper"));
		tester.test("A !<&\"'©😀", "A&#32;&#33;&lt;&amp;&quot;&apos;&#169;&#128512;", tester.options("non-alnum", "xhtml", "decimal"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&lt;&amp;&quot;&apos;&#xa9;&#x1f600;", tester.options("non-alnum", "xhtml", "hex-lower"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&lt;&amp;&quot;&apos;&#xA9;&#x1F600;", tester.options("non-alnum", "xhtml", "hex-upper"));
		tester.test("A !<&\"'©😀", "A&#32;&#33;&#60;&#38;&#34;&#39;&#169;&#128512;", tester.options("non-alnum", "none", "decimal"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&#x3c;&#x26;&#x22;&#x27;&#xa9;&#x1f600;", tester.options("non-alnum", "none", "hex-lower"));
		tester.test("A !<&\"'©😀", "A&#x20;&#x21;&#x3C;&#x26;&#x22;&#x27;&#xA9;&#x1F600;", tester.options("non-alnum", "none", "hex-upper"));

		tester.test("A !<&\"'©😀", "&#65;&#32;&excl;&lt;&amp;&quot;&apos;&copy;&#128512;", tester.options("all", "html5", "decimal"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&excl;&lt;&amp;&quot;&apos;&copy;&#x1f600;", tester.options("all", "html5", "hex-lower"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&excl;&lt;&amp;&quot;&apos;&copy;&#x1F600;", tester.options("all", "html5", "hex-upper"));
		tester.test("A !<&\"'©😀", "&#65;&#32;&#33;&lt;&amp;&quot;&#39;&copy;&#128512;", tester.options("all", "html4", "decimal"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&lt;&amp;&quot;&#x27;&copy;&#x1f600;", tester.options("all", "html4", "hex-lower"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&lt;&amp;&quot;&#x27;&copy;&#x1F600;", tester.options("all", "html4", "hex-upper"));
		tester.test("A !<&\"'©😀", "&#65;&#32;&#33;&lt;&amp;&quot;&apos;&#169;&#128512;", tester.options("all", "xhtml", "decimal"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&lt;&amp;&quot;&apos;&#xa9;&#x1f600;", tester.options("all", "xhtml", "hex-lower"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&lt;&amp;&quot;&apos;&#xA9;&#x1F600;", tester.options("all", "xhtml", "hex-upper"));
		tester.test("A !<&\"'©😀", "&#65;&#32;&#33;&#60;&#38;&#34;&#39;&#169;&#128512;", tester.options("all", "none", "decimal"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&#x3c;&#x26;&#x22;&#x27;&#xa9;&#x1f600;", tester.options("all", "none", "hex-lower"));
		tester.test("A !<&\"'©😀", "&#x41;&#x20;&#x21;&#x3C;&#x26;&#x22;&#x27;&#xA9;&#x1F600;", tester.options("all", "none", "hex-upper"));
	}

	@Test
	public void test_unknownOptions() {
		tester.test("<©", "&lt;©", tester.options("invalid", "invalid", "invalid"));
		tester.test("<©", "&#x3c;©", tester.options("invalid", "none", "hex-lower"));
		tester.test("<©😀", "&lt;&copy;&#x1f600;", tester.options("non-ascii", "invalid", "hex-lower"));
		tester.test("A©", "&#65;&#169;", tester.options("all", "none", "invalid"));
	}

	@Test
	public void test_decoder() {
		tester.testDecoder("&lt;p&gt;Hello, world!&lt;/p&gt;", "<p>Hello, world!</p>");
		tester.testDecoder("&#12450;&#x30A2;&#x30a2;", "アアア");
		tester.testDecoder("&#128512;&#x1F600;", "😀😀");
		tester.testDecoder("&copy;&reg;&nbsp;", "©®\u00A0"); // U+00A0 NO-BREAK SPACE

		// Unsupported references are left as-is
		tester.testDecoder("&unknown;&notClosed", "&unknown;&notClosed");
		tester.testDecoder("&#xZZ;&#99999999;", "&#xZZ;&#99999999;");
	}

	@Test
	public void test_lineBreak() {
		tester.test("a\n<b>", "a\n&lt;b&gt;");
		tester.test("a\n<b>", "a\r\n&lt;b&gt;", "a\r\n<b>", tester.options(), "\r\n");
		tester.test("a\nb", "&#97;&#13;&NewLine;&#98;", "a\r\nb", tester.options("all"), "\r\n");
	}
}
