<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About SHA-384</h3>
<p>SHA-384 is a cryptographic hash function that generates a 384-bit hash value from data of any length. It is part of the SHA-2 family and outputs a longer hash value than <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the SHA-384 hash value is displayed as 96 hexadecimal digits.</p>

<p>For example, the SHA-384 hash value of "Hello, world!" is as follows.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Hash value characteristics</h4>
<p>SHA-384 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">SHA-384 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
