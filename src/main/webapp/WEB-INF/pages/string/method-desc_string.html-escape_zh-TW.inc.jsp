<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於 HTML 轉義</h3>
<p>HTML 轉義會把在 HTML 中具有特殊含義的字元轉換為字元參照，以便將字串安全地作為 HTML 文字顯示。例如，可能被解讀為標籤的 <code>&lt;</code> 和 <code>&gt;</code> 會寫成 <code>&amp;lt;</code> 和 <code>&amp;gt;</code>。</p>
<p>進行 HTML 轉義後，輸入的字串不會被解讀為 HTML 標籤或屬性，而是可以原樣顯示在畫面上。</p>

<p>例如，對「&lt;p&gt;Hello, world!&lt;/p&gt;」進行 HTML 轉義後，結果如下。</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">字元</th><th scope="col">HTML 轉義後</th><th scope="col">說明</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>可能被解讀為 HTML 標籤的開始。</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>可能被解讀為 HTML 標籤的結束。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>可能被解讀為字元參照的開始。</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>在屬性值使用雙引號包住時具有特殊含義。</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>在屬性值使用單引號包住時具有特殊含義。</td></tr>
	</table>
</div>

<h4>基本轉義與全部轉義</h4>
<p>DenCode 會顯示兩種 HTML 轉義結果：「基本」和「全部」。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">類型</th><th scope="col">說明</th><th scope="col">「A &lt; あ」的轉換例</th></tr>
		<tr><td>HTML轉義 (基本)</td><td>轉換 <code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> 這 5 個字元。</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTML轉義 (全部)</td><td>有 HTML 命名字元參照的字元會轉換為命名字元參照，其他字元會轉換為十進位數值字元參照。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>在一般 HTML 顯示中，通常會使用只轉換必要字元的基本轉義。全部轉義適合用於想把字串作為 HTML 字元參照確認，或想用明確的參照形式表示所有字元的情況。</p>

<h4>反轉義</h4>
<p>HTML 反轉義會把 HTML 字元參照還原為原本的字元。DenCode 可以解碼 <code>&amp;lt;</code>、<code>&amp;amp;</code> 等命名字元參照，也可以解碼 <code>&amp;#12354;</code> 這類十進位數值字元參照，以及 <code>&amp;#x3042;</code> 這類十六進位數值字元參照。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML 字元參照</th><th scope="col">反轉義後</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
