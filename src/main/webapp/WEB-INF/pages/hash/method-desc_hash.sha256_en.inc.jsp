<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About SHA-256</h3>
<p>SHA-256 is a cryptographic hash function that generates a 256-bit hash value from data of any length. It is part of the SHA-2 family and is used for file tamper detection, data integrity checks, digital signatures, certificates, blockchains, and many other purposes.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the SHA-256 hash value is displayed as 64 hexadecimal digits.</p>

<p>For example, the SHA-256 hash value of "Hello, world!" is as follows.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Hash value characteristics</h4>
<p>SHA-256 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">SHA-256 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
