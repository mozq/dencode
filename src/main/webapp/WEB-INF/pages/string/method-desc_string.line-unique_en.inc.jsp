<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Line Unique</h3>
<p>Line Unique removes duplicate lines from multi-line text. When the same line appears more than once, the first occurrence is kept and later occurrences are removed.</p>
<p>The remaining lines stay in their original order. This conversion does not sort the text.</p>

<p>For example, when duplicate lines are removed from the following text:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>The result is:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Input Line</th><th scope="col">Result</th><th scope="col">Description</th></tr>
		<tr><td><code>apple</code> (1st)</td><td>Kept</td><td>This is the first occurrence of the line.</td></tr>
		<tr><td><code>banana</code> (1st)</td><td>Kept</td><td>This is the first occurrence of the line.</td></tr>
		<tr><td><code>apple</code> (2nd)</td><td>Deleted</td><td>The same line has already appeared.</td></tr>
		<tr><td><code>orange</code> (1st)</td><td>Kept</td><td>This is the first occurrence of the line.</td></tr>
		<tr><td><code>banana</code> (2nd)</td><td>Deleted</td><td>The same line has already appeared.</td></tr>
	</table>
</div>

<p>Duplicate detection uses the entire string of each line. Differences in uppercase and lowercase letters, leading or trailing spaces, and full-width or half-width characters are treated as different text.</p>
