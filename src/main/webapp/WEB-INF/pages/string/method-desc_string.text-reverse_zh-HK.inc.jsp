<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於逆序文字</h3>
<p>逆序文字會將輸入字串中的字元按相反順序排列。整個字串會由最後一個字元讀回第一個字元。</p>

<p>例如，將 "Hello, world!" 逆序後，結果如下：</p>

<pre>!dlrow ,olleH</pre>

<p>在多行文字中，換行符號亦屬於字串的一部分。因此，包含行順序在內的全部內容都會被反轉。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">逆序轉換後</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>此轉換不會在保持句子意思的前提下調整詞序。它只是直接反轉輸入字元的順序。</p>
