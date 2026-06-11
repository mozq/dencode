<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於行排序</h3>
<p>行排序用於逐行重新排列多行文字。它可以將輸入的各行按升序或降序排序，亦可以直接反轉目前的行順序。</p>
<p>升序和降序會將每一整行視為一個 Unicode 字串進行比較。逆序不會改變每一行的內容，只會將行的上下順序倒轉。</p>

<p>例如，將以下文字按升序排序：</p>

<pre>
banana
apple
orange
</pre>

<p>轉換結果如下：</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">順序</th><th scope="col">說明</th><th scope="col">轉換範例</th></tr>
		<tr><td>升序</td><td>按 Unicode 字串值由小至大排列各行。</td><td><code>apple</code>、<code>banana</code>、<code>orange</code></td></tr>
		<tr><td>降序</td><td>按 Unicode 字串值由大至小排列各行。</td><td><code>orange</code>、<code>banana</code>、<code>apple</code></td></tr>
		<tr><td>逆序</td><td>反轉輸入行的順序。</td><td><code>orange</code>、<code>apple</code>、<code>banana</code></td></tr>
	</table>
</div>

<p>大小寫字母、數字、符號以及非拉丁字元都會作為 Unicode 字元進行比較。因此，排序結果以字串比較為準，而不是自然語言的字典順序或數值大小。</p>
