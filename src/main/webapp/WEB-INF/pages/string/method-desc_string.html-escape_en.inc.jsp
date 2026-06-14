<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About HTML escape</h3>
<p>HTML escape converts characters that have special meaning in HTML into character references, so that a string can be displayed safely as HTML text. For example, <code>&lt;</code> and <code>&gt;</code>, which may be interpreted as tags, are written as <code>&amp;lt;</code> and <code>&amp;gt;</code>.</p>
<p>Escaping HTML prevents the input text from being interpreted as HTML tags or attributes and lets it appear on the screen as text.</p>

<p>For example, escaping “&lt;p&gt;Hello, world!&lt;/p&gt;” produces the following.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Character</th><th scope="col">After HTML escape</th><th scope="col">Description</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>May be interpreted as the start of an HTML tag.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>May be interpreted as the end of an HTML tag.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>May be interpreted as the start of a character reference.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Has special meaning when an attribute value is enclosed in double quotes.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Has special meaning when an attribute value is enclosed in single quotes.</td></tr>
	</table>
</div>

<h4>HTML escape options</h4>
<p>DenCode lets you choose the target characters, how named character references are used, and the numeric reference notation.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Target</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Example for “A &lt; 😀”</th></tr>
		<tr><td>Basic</td><td>Converts the five characters <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, and <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Basic + Non-ASCII</td><td>Converts the five basic characters and non-ASCII characters.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Non-Alphanumeric</td><td>Converts characters other than ASCII letters and digits.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>All</td><td>Converts all characters.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>For normal HTML display, “Basic” is commonly used because it converts only the necessary characters. Use “All” when you want to inspect a string as HTML character references or represent every character explicitly as a reference.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Named Character References</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Example</th></tr>
		<tr><td>HTML5</td><td>Uses named character references defined by HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Uses named character references defined by HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Uses the five references <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code>, and <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>None</td><td>Does not use named character references; only numeric references are used.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Numeric Reference Notation</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Example</th></tr>
		<tr><td>Decimal</td><td>Uses decimal numeric references.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hex lower-case</td><td>Uses hexadecimal numeric references with lower-case digits.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hex upper-case</td><td>Uses hexadecimal numeric references with upper-case digits.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
