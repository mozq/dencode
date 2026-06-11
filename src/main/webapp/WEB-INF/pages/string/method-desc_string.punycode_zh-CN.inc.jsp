<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于 Punycode IDN</h3>
<p>Punycode 是一种编码方式，用于只使用 ASCII 字符表示 Unicode 字符串。它主要用于将包含日文、中文、韩文或带重音拉丁字母等字符的国际化域名（IDN）转换为 DNS 可以处理的 ASCII 形式。</p>
<p>在国际化域名中，域名的每个标签都会用 Punycode 转换，并在转换后的标签前加上 <code>xn--</code>。这种 ASCII 形式称为 A-label，原来的 Unicode 形式称为 U-label。</p>

<p>例如，将“ドメイン.com”转换为 Punycode IDN 后如下。</p>

<pre>xn--eckwd4c7c.com</pre>

<p>在这个例子中，顶级域名 <code>com</code> 只包含 ASCII 字符，因此保持不变；只有“ドメイン”这一标签被转换为 <code>xn--eckwd4c7c</code>。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode 形式</th><th scope="col">Punycode IDN 形式</th><th scope="col">说明</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>包含日文字符的域名。</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>多个标签会分别转换。</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>包含带重音拉丁字母的示例。</td></tr>
	</table>
</div>

<p>Punycode IDN 与 URL 编码是不同的机制。URL 编码会把 URL 中的字符表示为 <code>%E3%81%82</code> 这样的字节序列，而 Punycode IDN 会把域名标签转换为以 <code>xn--</code> 开头的 ASCII 标签。</p>

<h4>按域名标签转换</h4>
<p>域名由点号（<code>.</code>）分隔的多个标签组成。Punycode IDN 不是把整个域名当作一个字符串转换，而是分别转换每个标签。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">标签</th><th scope="col">转换结果</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>因此，<code>例え.テスト</code> 的转换结果是 <code>xn--r8jz45g.xn--zckzah</code>。</p>
