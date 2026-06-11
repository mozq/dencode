<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Line Sort</h3>
<p>Line Sort rearranges a block of text one line at a time. It can sort the input lines in ascending or descending order, or simply reverse their current order.</p>
<p>Ascending and descending order compare each whole line as a Unicode string. Reverse order does not change the text in each line; it only flips the order of the lines from top to bottom.</p>

<p>For example, when the following text is sorted in ascending order:</p>

<pre>
banana
apple
orange
</pre>

<p>The result is:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Order</th><th scope="col">Description</th><th scope="col">Conversion Example</th></tr>
		<tr><td>Ascending</td><td>Sorts the lines from smaller to larger Unicode string values.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Descending</td><td>Sorts the lines from larger to smaller Unicode string values.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Reverse</td><td>Reverses the order of the input lines.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Uppercase and lowercase letters, numbers, symbols, and non-Latin characters are compared as Unicode characters. The result is based on string comparison, not on natural-language dictionary order or numeric value.</p>
