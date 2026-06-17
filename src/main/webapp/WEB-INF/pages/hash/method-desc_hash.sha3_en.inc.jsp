<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About SHA-3</h3>
<p>SHA-3 is a cryptographic hash function that generates a fixed-length hash value from data of any length. SHA-3 includes four functions with different hash value lengths: SHA3-224, SHA3-256, SHA3-384, and SHA3-512.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the SHA-3 hash value is displayed in hexadecimal.</p>

<p>For example, the SHA3-256 hash value of "Hello, world!" is as follows.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Hash value characteristics</h4>
<p>SHA-3 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">SHA3-256 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Difference from SHA-2</h4>
<p>SHA-2 is based on a Merkle-Damgård construction, the same broad family of designs as MD5 and SHA-1. SHA-3 standardizes Keccak and uses a sponge construction instead. For this reason, SHA-256 and SHA3-256 both output 256-bit hash values, but the values they produce are different.</p>
