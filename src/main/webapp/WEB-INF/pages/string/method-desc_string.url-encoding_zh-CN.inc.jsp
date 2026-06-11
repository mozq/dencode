<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于URL编码</h3>
<p>URL编码是一种在 URL 中安全表示文本的编码方式。其正式名称是 URI 规范 <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a> 中定义的“百分号编码 (percent-encoding)”。</p>
<p>在 URL 中具有特殊含义的字符，或不适合直接放入 URL 的字符，会被转换为百分号 (%) 加两位十六进制数字的形式。</p>
<p>例如，半角空格表示为 <code>%20</code>，感叹号 (<code>!</code>) 表示为 <code>%21</code>，日文字符“あ”在 UTF-8 中表示为 <code>%E3%81%82</code>。</p>

<p>URL编码会先使用所选字符编码将文本转换为字节序列，然后根据需要把每个字节表示为 <code>%HH</code>。在 DenCode 中，RFC 3986 的非保留字符，即字母数字以及 <code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> 不会被转换，其他字符会进行百分号编码。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">字符</th><th scope="col">URL编码后</th><th scope="col">说明</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>字母数字是非保留字符，因此不会转换。</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> 是非保留字符，因此不会转换。</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>该字符用于分隔 URL 路径片段；作为值使用时需要编码。</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>表示查询字符串开始的保留字符。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>用于分隔查询参数的保留字符。</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>用于分隔查询参数名称和值的保留字符。</td></tr>
		<tr><td>半角空格</td><td><code>%20</code></td><td>在 URL 的百分号编码中编码为 <code>%20</code>；在 <code>application/x-www-form-urlencoded</code> 中编码为 <code>+</code>。</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>当 <code>+</code> 本身作为值使用时，需要进行编码。</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>在 UTF-8 中会编码为 3 个字节的序列。</td></tr>
	</table>
</div>

<p>例如，将“Hello, world!”进行 URL编码后如下。</p>

<pre>Hello%2C%20world%21</pre>

<p>在此示例中，逗号 (<code>,</code>) 转换为 <code>%2C</code>，半角空格转换为 <code>%20</code>，感叹号 (<code>!</code>) 转换为 <code>%21</code>。</p>


<h4>application/x-www-form-urlencoded 中的空格表示</h4>
<p>在 HTML 表单提交等场景使用的 <code>application/x-www-form-urlencoded</code> 中，半角空格可以表示为 <code>+</code>。该格式在 <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> 中定义为表单提交编码。</p>
<p>DenCode 在编码时可以选择将半角空格输出为 <code>%20</code> 或 <code>+</code>。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">格式</th><th scope="col">“Hello world”的转换结果</th><th scope="col">用途</th></tr>
		<tr><td>百分号编码</td><td><code>Hello%20world</code></td><td>适用于一般 URL 的格式。</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>用于 HTML 表单的查询字符串和请求正文。</td></tr>
	</table>
</div>
