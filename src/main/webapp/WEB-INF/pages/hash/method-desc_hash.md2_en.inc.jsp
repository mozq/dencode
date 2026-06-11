<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>About MD2</h3>
<p>MD2 is a hash function that generates a 128-bit hash value from data of any length. It is an old algorithm and is not recommended for current cryptographic use.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the MD2 hash value is displayed as 32 hexadecimal digits.</p>

<p>For example, the MD2 hash value of "Hello, world!" is as follows.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Hash value characteristics</h4>
<p>MD2 always generates the same hash value from the same input. If the input changes even slightly, the output hash value changes significantly.</p>
<p>A hash function is a one-way function, so the original input data cannot be restored from the hash value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">MD2 hash value</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 may be used for compatibility checks, but for new use cases, consider a newer hash function such as <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
