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

<h4>HTML 跳脫選項</h4>
<p>DenCode 可以選擇目標、命名字元參照的使用方式，以及數值參照表示法。</p>

<div class="table-responsive">
	<table class="table">
		<caption>目標</caption>
		<tr><th scope="col">選項</th><th scope="col">說明</th><th scope="col">「A &lt; 😀」的轉換範例</th></tr>
		<tr><td>基本</td><td>轉換 <code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> 這 5 個字元。</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>基本 + 非ASCII</td><td>轉換 5 個基本字元以及非 ASCII 字元。</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>非英數</td><td>轉換 ASCII 英文字母和數字以外的字元。</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>全部</td><td>轉換所有字元。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>一般 HTML 顯示通常使用「基本」，因為它只轉換必要的字元。如果想將字串作為 HTML 字元參照檢查，或將每個字元明確表示為參照，可以使用「全部」。</p>

<div class="table-responsive">
	<table class="table">
		<caption>命名字元參照</caption>
		<tr><th scope="col">選項</th><th scope="col">說明</th><th scope="col">範例</th></tr>
		<tr><td>HTML5</td><td>使用 HTML5 定義的命名字元參照。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>使用 HTML4 定義的命名字元參照。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>使用 <code>&amp;lt;</code>、<code>&amp;gt;</code>、<code>&amp;amp;</code>、<code>&amp;quot;</code>、<code>&amp;apos;</code> 這 5 個參照。</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>無</td><td>不使用命名字元參照，只使用數值參照。</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>數值參照表示法</caption>
		<tr><th scope="col">選項</th><th scope="col">說明</th><th scope="col">範例</th></tr>
		<tr><td>十進位</td><td>使用十進位數值參照。</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>十六進位小寫</td><td>使用小寫十六進位數值參照。</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>十六進位大寫</td><td>使用大寫十六進位數值參照。</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
