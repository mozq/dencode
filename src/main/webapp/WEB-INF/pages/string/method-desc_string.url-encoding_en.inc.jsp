<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About URL Encoding</h3>
<p>URL encoding is an encoding method for safely representing text in URLs. Its formal name is "percent-encoding", defined by the URI specification <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Characters that have special meaning in URLs, or characters that are difficult to handle as-is in URLs, are converted to a percent sign (%) followed by two hexadecimal digits.</p>
<p>For example, a space is represented as <code>%20</code>, an exclamation mark (<code>!</code>) as <code>%21</code>, and the Japanese character "あ" as <code>%E3%81%82</code> in UTF-8.</p>

<p>URL encoding first converts text to bytes using the selected character encoding, then represents each byte as <code>%HH</code> when needed. In DenCode, the RFC 3986 unreserved characters, alphanumeric characters and <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, are not converted, and the other characters are percent-encoded.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Character</th><th scope="col">After URL Encoding</th><th scope="col">Description</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Alphanumeric characters are unreserved characters, so they are not converted.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code>, and <code>~</code> are unreserved characters, so they are not converted.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>This character separates URL path segments, so encode it when it is used as a value.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>This reserved character starts the query string.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>This reserved character separates query parameters.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>This reserved character separates a query parameter name and value.</td></tr>
		<tr><td>Space</td><td><code>%20</code></td><td>In URL percent-encoding, a space is encoded as <code>%20</code>; in <code>application/x-www-form-urlencoded</code>, it is encoded as <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Encode <code>+</code> when the plus sign itself is used as a value.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>In UTF-8, this character is encoded as a three-byte sequence.</td></tr>
	</table>
</div>

<p>For example, URL encoding "Hello, world!" gives the following result.</p>

<pre>Hello%2C%20world%21</pre>

<p>In this example, the comma (<code>,</code>) becomes <code>%2C</code>, the space becomes <code>%20</code>, and the exclamation mark (<code>!</code>) becomes <code>%21</code>.</p>


<h4>Space Representation in application/x-www-form-urlencoded</h4>
<p>In <code>application/x-www-form-urlencoded</code>, used for HTML form submission, spaces may be represented as <code>+</code>. This format is defined as the form submission encoding in the <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a>.</p>
<p>DenCode lets you choose whether spaces are output as <code>%20</code> or <code>+</code> when encoding.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Result for "Hello world"</th><th scope="col">Use</th></tr>
		<tr><td>Percent-encoding</td><td><code>Hello%20world</code></td><td>A general-purpose form for URLs.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Used in HTML form query strings and request bodies.</td></tr>
	</table>
</div>
