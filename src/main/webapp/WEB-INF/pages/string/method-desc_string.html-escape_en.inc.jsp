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

<h4>Basic and fully escaped output</h4>
<p>DenCode shows two HTML escape results: “Basic” and “Fully”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Type</th><th scope="col">Description</th><th scope="col">Example for “A &lt; あ”</th></tr>
		<tr><td>HTML Escape (Basic)</td><td>Converts the five characters <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code>, and <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML Escape (Fully)</td><td>Uses named character references where available and decimal numeric character references for other characters.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>For normal HTML display, the basic escape that converts only the necessary characters is commonly used. Fully escaped output is useful when you want to inspect a string as HTML character references or represent every character explicitly as a reference.</p>

<h4>Unescape</h4>
<p>HTML unescape converts HTML character references back to the original characters. DenCode can decode named character references such as <code>&amp;lt;</code> and <code>&amp;amp;</code>, decimal numeric character references such as <code>&amp;#12354;</code>, and hexadecimal numeric character references such as <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML character reference</th><th scope="col">After unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
