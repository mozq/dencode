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

<h4>HTML 转义选项</h4>
<p>DenCode 可以选择目标字符、命名字符引用的使用方式，以及数字引用表示法。</p>

<div class="table-responsive">
	<table class="table">
		<caption>目标</caption>
		<tr><th scope="col">选项</th><th scope="col">说明</th><th scope="col">“A &lt; 😀” 的转换示例</th></tr>
		<tr><td>基本</td><td>转换 <code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> 这 5 个字符。</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>基本 + 非ASCII</td><td>转换 5 个基本字符以及非 ASCII 字符。</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>非字母数字</td><td>转换 ASCII 字母和数字以外的字符。</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>全部</td><td>转换所有字符。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>在普通 HTML 显示中，通常使用“基本”，因为它只转换必要的字符。如果想将字符串作为 HTML 字符引用检查，或将每个字符明确表示为引用，可以使用“全部”。</p>

<div class="table-responsive">
	<table class="table">
		<caption>命名字符引用</caption>
		<tr><th scope="col">选项</th><th scope="col">说明</th><th scope="col">示例</th></tr>
		<tr><td>HTML5</td><td>使用 HTML5 定义的命名字符引用。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>使用 HTML4 定义的命名字符引用。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>使用 <code>&amp;lt;</code>、<code>&amp;gt;</code>、<code>&amp;amp;</code>、<code>&amp;quot;</code>、<code>&amp;apos;</code> 这 5 个引用。</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>无</td><td>不使用命名字符引用，只使用数字引用。</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>数字引用表示法</caption>
		<tr><th scope="col">选项</th><th scope="col">说明</th><th scope="col">示例</th></tr>
		<tr><td>十进制</td><td>使用十进制数字引用。</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>十六进制小写</td><td>使用小写十六进制数字引用。</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>十六进制大写</td><td>使用大写十六进制数字引用。</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
