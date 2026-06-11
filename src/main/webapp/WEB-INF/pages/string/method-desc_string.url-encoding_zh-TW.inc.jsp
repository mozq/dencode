<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於URL編碼</h3>
<p>URL編碼是一種在 URL 中安全表示文字的編碼方式。其正式名稱是 URI 規格 <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a> 中定義的「百分號編碼 (percent-encoding)」。</p>
<p>在 URL 中具有特殊意義的字元，或不適合直接放入 URL 的字元，會轉換為百分號 (%) 加兩位十六進位數字的形式。</p>
<p>例如，半形空格表示為 <code>%20</code>，驚嘆號 (<code>!</code>) 表示為 <code>%21</code>，日文字元「あ」在 UTF-8 中表示為 <code>%E3%81%82</code>。</p>

<p>URL編碼會先使用所選字元編碼將文字轉換為位元組序列，然後依需要將每個位元組表示為 <code>%HH</code>。在 DenCode 中，RFC 3986 的非保留字元，也就是英文字母、數字以及 <code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> 不會被轉換，其他字元會進行百分號編碼。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">字元</th><th scope="col">URL編碼後</th><th scope="col">說明</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>英文字母和數字是非保留字元，因此不會轉換。</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> 是非保留字元，因此不會轉換。</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>此字元用於分隔 URL 路徑片段；作為值使用時需要編碼。</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>表示查詢字串開始的保留字元。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>用於分隔查詢參數的保留字元。</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>用於分隔查詢參數名稱和值的保留字元。</td></tr>
		<tr><td>半形空格</td><td><code>%20</code></td><td>在 URL 的百分號編碼中會編碼為 <code>%20</code>；在 <code>application/x-www-form-urlencoded</code> 中會編碼為 <code>+</code>。</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>當 <code>+</code> 本身作為值使用時，需要進行編碼。</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>在 UTF-8 中會編碼為 3 個位元組的序列。</td></tr>
	</table>
</div>

<p>例如，將「Hello, world!」進行 URL編碼後如下。</p>

<pre>Hello%2C%20world%21</pre>

<p>在此範例中，逗號 (<code>,</code>) 轉換為 <code>%2C</code>，半形空格轉換為 <code>%20</code>，驚嘆號 (<code>!</code>) 轉換為 <code>%21</code>。</p>


<h4>application/x-www-form-urlencoded 中的空格表示</h4>
<p>HTML 表單提交等情境使用的 <code>application/x-www-form-urlencoded</code> 中，半形空格可以表示為 <code>+</code>。此格式在 <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> 中定義為表單提交編碼。</p>
<p>DenCode 在編碼時可選擇將半形空格輸出為 <code>%20</code> 或 <code>+</code>。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">格式</th><th scope="col">「Hello world」的轉換結果</th><th scope="col">用途</th></tr>
		<tr><td>百分號編碼</td><td><code>Hello%20world</code></td><td>適用於一般 URL 的格式。</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>用於 HTML 表單的查詢字串和請求本文。</td></tr>
	</table>
</div>
