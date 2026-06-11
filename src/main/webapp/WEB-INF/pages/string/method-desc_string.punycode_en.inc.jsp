<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Punycode IDN</h3>
<p>Punycode is an encoding method for representing Unicode strings using only ASCII characters. It is mainly used to convert internationalized domain names (IDNs), such as domain names containing Japanese, Chinese, Korean, or accented Latin characters, into an ASCII form that can be handled by DNS.</p>
<p>In an internationalized domain name, each domain label is converted with Punycode and the converted label is prefixed with <code>xn--</code>. This ASCII form is called an A-label, while the original Unicode form is called a U-label.</p>

<p>For example, converting “ドメイン.com” to Punycode IDN produces the following.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>In this example, the top-level domain <code>com</code> contains only ASCII characters and remains unchanged; only the “ドメイン” label is converted to <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode form</th><th scope="col">Punycode IDN form</th><th scope="col">Description</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Domain name containing Japanese characters.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Each label is converted separately.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Example containing an accented Latin character.</td></tr>
	</table>
</div>

<p>Punycode IDN is different from URL encoding. URL encoding represents characters in a URL as byte sequences such as <code>%E3%81%82</code>, while Punycode IDN converts domain-name labels into ASCII labels beginning with <code>xn--</code>.</p>

<h4>Converting domain-name labels</h4>
<p>A domain name is a sequence of labels separated by dots (<code>.</code>). Punycode IDN does not convert the whole domain name as one string; it converts each label separately.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Conversion result</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Therefore, <code>例え.テスト</code> is converted to <code>xn--r8jz45g.xn--zckzah</code>.</p>
