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

import java.util.List;

import com.dencode.logic.dencoder.annotation.Dencoder;
import com.dencode.logic.dencoder.annotation.DencoderFunction;
import com.dencode.logic.model.DencodeCondition;

@Dencoder(type="hash", method="hash.sha3", hasEncoder=true, hasDecoder=false, useOe=true, useNl=true)
public class HashSha3Dencoder {

	private static final List<String> SUPPORTED_FUNCTIONS = List.of("SHA3-224", "SHA3-256", "SHA3-384", "SHA3-512");
	private static final String DEFAULT_FUNCTION = "SHA3-256";

	private HashSha3Dencoder() {
		// NOP
	}


	@DencoderFunction
	public static String encHashSha3(DencodeCondition cond) {
		String function = normalizeFunction(DencodeUtils.getOption(cond.options(), "hash.sha3.function", DEFAULT_FUNCTION));
		return DencodeUtils.encHash(cond.valueAsBinary(), function);
	}

	private static String normalizeFunction(String function) {
		if (SUPPORTED_FUNCTIONS.contains(function)) {
			return function;
		}
		return DEFAULT_FUNCTION;
	}
}
