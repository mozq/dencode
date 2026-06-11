<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About CRC32</h3>
<p>CRC32 is an error-detection method that generates a 32-bit check value from data of any length. It is used in file transfers, compressed formats, and similar contexts to check whether data has been corrupted.</p>
<p>In DenCode, the entered text is treated as a byte sequence in the selected character encoding, and the CRC32 value is displayed in hexadecimal.</p>

<p>For example, the CRC32 of "Hello, world!" is as follows.</p>

<pre>ebe6c6e6</pre>

<h4>CRC32 characteristics</h4>
<p>CRC32 is suited to detecting accidental data corruption. However, because it is not a cryptographic hash function, it is not suitable for uses that require security against tampering.</p>
<p>CRC32 always generates the same value from the same input. When the input changes, the output value also changes. However, the original input data cannot be restored from the CRC32 value.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
