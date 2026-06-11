<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于删除重复行</h3>
<p>删除重复行用于从多行文本中移除重复出现的行。当同一行出现多次时，只保留第一次出现的行，后续相同行会被删除。</p>
<p>保留下来的行会维持原来的出现顺序，不会进行排序。</p>

<p>例如，从以下文本中删除重复行：</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>转换结果如下：</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入行</th><th scope="col">结果</th><th scope="col">说明</th></tr>
		<tr><td><code>apple</code>（第1次）</td><td>保留</td><td>这是首次出现的行。</td></tr>
		<tr><td><code>banana</code>（第1次）</td><td>保留</td><td>这是首次出现的行。</td></tr>
		<tr><td><code>apple</code>（第2次）</td><td>删除</td><td>相同的行已经出现过。</td></tr>
		<tr><td><code>orange</code>（第1次）</td><td>保留</td><td>这是首次出现的行。</td></tr>
		<tr><td><code>banana</code>（第2次）</td><td>删除</td><td>相同的行已经出现过。</td></tr>
	</table>
</div>

<p>重复判定会比较每一整行的字符串。大小写、首尾空格、全角与半角字符的差异都会被视为不同的文本。</p>
