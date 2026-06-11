<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於 Punycode IDN</h3>
<p>Punycode 是一種編碼方式，用於只使用 ASCII 字元表示 Unicode 字串。它主要用於將包含日文、中文、韓文或帶重音拉丁字母等字元的國際化域名（IDN）轉換為 DNS 可以處理的 ASCII 形式。</p>
<p>在國際化域名中，域名的每個標籤都會用 Punycode 轉換，並在轉換後的標籤前加上 <code>xn--</code>。這種 ASCII 形式稱為 A-label，原來的 Unicode 形式稱為 U-label。</p>

<p>例如，將「ドメイン.com」轉換為 Punycode IDN 後如下。</p>

<pre>xn--eckwd4c7c.com</pre>

<p>在這個例子中，頂級域名 <code>com</code> 只包含 ASCII 字元，因此保持不變；只有「ドメイン」這個標籤被轉換為 <code>xn--eckwd4c7c</code>。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode 形式</th><th scope="col">Punycode IDN 形式</th><th scope="col">說明</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>包含日文字符的域名。</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>多個標籤會分別轉換。</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>包含帶重音拉丁字母的例子。</td></tr>
	</table>
</div>

<p>Punycode IDN 與 URL 編碼是不同的機制。URL 編碼會把 URL 中的字元表示為 <code>%E3%81%82</code> 這樣的位元組序列，而 Punycode IDN 會把域名標籤轉換為以 <code>xn--</code> 開頭的 ASCII 標籤。</p>

<h4>按域名標籤轉換</h4>
<p>域名由點號（<code>.</code>）分隔的多個標籤組成。Punycode IDN 不是把整個域名當作一個字串轉換，而是分別轉換每個標籤。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">標籤</th><th scope="col">轉換結果</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>因此，<code>例え.テスト</code> 的轉換結果是 <code>xn--r8jz45g.xn--zckzah</code>。</p>
