<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于 HTML 转义</h3>
<p>HTML 转义会把在 HTML 中具有特殊含义的字符转换为字符引用，以便将字符串安全地作为 HTML 文本显示。例如，可能被解释为标签的 <code>&lt;</code> 和 <code>&gt;</code> 会写成 <code>&amp;lt;</code> 和 <code>&amp;gt;</code>。</p>
<p>进行 HTML 转义后，输入的字符串不会被解释为 HTML 标签或属性，而是可以按原样显示在页面上。</p>

<p>例如，对“&lt;p&gt;Hello, world!&lt;/p&gt;”进行 HTML 转义后，结果如下。</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">字符</th><th scope="col">HTML 转义后</th><th scope="col">说明</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>可能被解释为 HTML 标签的开始。</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>可能被解释为 HTML 标签的结束。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>可能被解释为字符引用的开始。</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>在属性值使用双引号包围时具有特殊含义。</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>在属性值使用单引号包围时具有特殊含义。</td></tr>
	</table>
</div>

<h4>基本转义与全部转义</h4>
<p>DenCode 会显示两种 HTML 转义结果：“基本”和“全部”。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">类型</th><th scope="col">说明</th><th scope="col">“A &lt; あ”的转换示例</th></tr>
		<tr><td>HTML转义 (基本)</td><td>转换 <code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> 这 5 个字符。</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML转义 (全部)</td><td>有 HTML 命名字符引用的字符会转换为命名字符引用，其他字符会转换为十进制数字字符引用。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>在普通 HTML 显示中，通常使用只转换必要字符的基本转义。全部转义适用于想把字符串作为 HTML 字符引用进行确认，或想用明确的引用形式表示所有字符的场景。</p>

<h4>反转义</h4>
<p>HTML 反转义会把 HTML 字符引用还原为原来的字符。DenCode 可以解码 <code>&amp;lt;</code>、<code>&amp;amp;</code> 等命名字符引用，也可以解码 <code>&amp;#12354;</code> 这样的十进制数字字符引用，以及 <code>&amp;#x3042;</code> 这样的十六进制数字字符引用。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML 字符引用</th><th scope="col">反转义后</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
