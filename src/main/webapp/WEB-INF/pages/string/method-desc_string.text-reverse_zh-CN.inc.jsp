<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于逆序文本</h3>
<p>逆序文本会将输入字符串中的字符按相反顺序排列。整个字符串会从最后一个字符读回到第一个字符。</p>

<p>例如，将 "Hello, world!" 逆序后，结果如下：</p>

<pre>!dlrow ,olleH</pre>

<p>在多行文本中，换行符也属于字符串的一部分。因此，包含行顺序在内的全部内容都会被反转。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">逆序转换后</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>此转换不会在保持句子含义的前提下调整词序。它只是直接反转输入字符的顺序。</p>
