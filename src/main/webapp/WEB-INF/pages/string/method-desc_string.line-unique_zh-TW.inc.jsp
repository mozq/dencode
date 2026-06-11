<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於刪除重複行</h3>
<p>刪除重複行用來從多行文字中移除重複出現的行。當同一行出現多次時，只保留第一次出現的行，後續相同行會被刪除。</p>
<p>保留下來的行會維持原本的出現順序，不會進行排序。</p>

<p>例如，從以下文字中刪除重複行：</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>轉換結果如下：</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入行</th><th scope="col">結果</th><th scope="col">說明</th></tr>
		<tr><td><code>apple</code>（第1次）</td><td>保留</td><td>這是首次出現的行。</td></tr>
		<tr><td><code>banana</code>（第1次）</td><td>保留</td><td>這是首次出現的行。</td></tr>
		<tr><td><code>apple</code>（第2次）</td><td>刪除</td><td>相同的行已經出現過。</td></tr>
		<tr><td><code>orange</code>（第1次）</td><td>保留</td><td>這是首次出現的行。</td></tr>
		<tr><td><code>banana</code>（第2次）</td><td>刪除</td><td>相同的行已經出現過。</td></tr>
	</table>
</div>

<p>重複判定會比較每一整行的字串。大小寫、首尾空格、全形與半形字元的差異都會被視為不同的文字。</p>
