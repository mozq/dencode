<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Text Reverse</h3>
<p>Text Reverse reverses the characters in the input string. The entire string is read from the last character back to the first.</p>

<p>For example, reversing "Hello, world!" gives:</p>

<pre>!dlrow ,olleH</pre>

<p>In multi-line text, newline characters are also part of the string. As a result, the whole content is reversed, including the order of the lines.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input</th><th scope="col">After Reversal</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>This conversion does not rearrange words while preserving the meaning of a sentence. It simply reverses the order of the input characters.</p>
