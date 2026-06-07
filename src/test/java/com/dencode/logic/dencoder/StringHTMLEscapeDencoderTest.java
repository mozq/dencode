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

public class StringHTMLEscapeDencoderTest {
	private final DencoderTester basicTester = new DencoderTester(
			StringHTMLEscapeDencoder::encStrHTMLEscape,
			StringHTMLEscapeDencoder::decStrHTMLEscape);
	private final DencoderTester fullyTester = new DencoderTester(
			StringHTMLEscapeDencoder::encStrHTMLEscapeFully,
			StringHTMLEscapeDencoder::decStrHTMLEscape);
	private final DencoderTester decoderTester = new DencoderTester(
			StringHTMLEscapeDencoder::encStrHTMLEscape,
			StringHTMLEscapeDencoder::decStrHTMLEscape);

	@Test
	public void test_basic() {
		// Blank
		basicTester.test("", "");

		// Method description example
		basicTester.test("<p>Hello, world!</p>", "&lt;p&gt;Hello, world!&lt;/p&gt;");

		// Basic HTML-sensitive characters
		basicTester.test("<div class=\"msg\">Tom & 'Jerry'</div>", "&lt;div class=&quot;msg&quot;&gt;Tom &amp; &apos;Jerry&apos;&lt;/div&gt;");

		// Non-ASCII characters are not escaped in basic mode
		basicTester.test("© ア 😀", "© ア 😀");
	}

	@Test
	public void test_fully() {
		fullyTester.test("", "");
		fullyTester.test("ABC", "&#65;&#66;&#67;");
		fullyTester.test("<>&\"'", "&lt;&gt;&amp;&quot;&apos;");
		fullyTester.test("©", "&COPY;");
		fullyTester.test("ア", "&#12450;");
		fullyTester.test("😀", "&#128512;");
	}

	@Test
	public void test_decoder() {
		decoderTester.testDecoder("&lt;p&gt;Hello, world!&lt;/p&gt;", "<p>Hello, world!</p>");
		decoderTester.testDecoder("&#12450;&#x30A2;&#x30a2;", "アアア");
		decoderTester.testDecoder("&#128512;&#x1F600;", "😀😀");
		decoderTester.testDecoder("&copy;&reg;&nbsp;", "©®\u00A0"); // U+00A0 NO-BREAK SPACE

		// Unsupported references are left as-is
		decoderTester.testDecoder("&unknown;&notClosed", "&unknown;&notClosed");
	}

	@Test
	public void test_lineBreak() {
		basicTester.test("a\n<b>", "a\n&lt;b&gt;");
		basicTester.test("a\n<b>", "a\r\n&lt;b&gt;", "a\r\n<b>", basicTester.options(), "\r\n");
		fullyTester.test("a\nb", "&#97;&#13;&NewLine;&#98;", "a\r\nb", fullyTester.options(), "\r\n");
	}
}
