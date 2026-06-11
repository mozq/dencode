<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About SHA-1</h3>
<p>SHA-1 is a cryptographic hash function that generates a 160-bit hash value from data of any length. It was once widely used, but because it now has collision-resistance weaknesses, it is not recommended for new cryptographic use.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the SHA-1 hash value is displayed as 40 hexadecimal digits.</p>

<p>For example, the SHA-1 hash value of "Hello, world!" is as follows.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Hash value characteristics</h4>
<p>SHA-1 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">SHA-1 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>It may be used for compatibility with existing systems, but for new use cases, consider <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> or a stronger hash function.</p>
