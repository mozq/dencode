<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About MD5</h3>
<p>MD5 is a hash function that generates a 128-bit hash value from data of any length. It has been widely used, but because it has collision-resistance weaknesses, it is not recommended for current cryptographic use.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the MD5 hash value is displayed as 32 hexadecimal digits.</p>

<p>For example, the MD5 hash value of "Hello, world!" is as follows.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Hash value characteristics</h4>
<p>MD5 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">MD5 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 may appear when comparing old checksums, but for uses that require security such as tamper detection or signatures, consider using <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> or another newer hash function.</p>
