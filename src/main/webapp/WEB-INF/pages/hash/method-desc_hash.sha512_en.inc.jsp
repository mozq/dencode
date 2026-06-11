<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About SHA-512</h3>
<p>SHA-512 is a cryptographic hash function that generates a 512-bit hash value from data of any length. It is part of the SHA-2 family and outputs a longer hash value than <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the SHA-512 hash value is displayed as 128 hexadecimal digits.</p>

<p>For example, the SHA-512 hash value of "Hello, world!" is as follows.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Hash value characteristics</h4>
<p>SHA-512 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">SHA-512 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
