<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于行排序</h3>
<p>行排序用于按行重新排列多行文本。它可以将输入的各行按升序或降序排序，也可以直接反转当前行顺序。</p>
<p>升序和降序会把每一整行作为一个 Unicode 字符串进行比较。逆序不会改变每一行的内容，只会把行的上下顺序倒过来。</p>

<p>例如，将以下文本按升序排序：</p>

<pre>
banana
apple
orange
</pre>

<p>转换结果如下：</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">顺序</th><th scope="col">说明</th><th scope="col">转换示例</th></tr>
		<tr><td>升序</td><td>按 Unicode 字符串值从小到大排列各行。</td><td><code>apple</code>、<code>banana</code>、<code>orange</code></td></tr>
		<tr><td>降序</td><td>按 Unicode 字符串值从大到小排列各行。</td><td><code>orange</code>、<code>banana</code>、<code>apple</code></td></tr>
		<tr><td>逆序</td><td>反转输入行的顺序。</td><td><code>orange</code>、<code>apple</code>、<code>banana</code></td></tr>
	</table>
</div>

<p>大小写字母、数字、符号以及非拉丁字符都会作为 Unicode 字符进行比较。因此，排序结果基于字符串比较，而不是自然语言的字典顺序或数值大小。</p>
