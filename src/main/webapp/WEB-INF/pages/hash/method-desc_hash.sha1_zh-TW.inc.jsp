<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於SHA-1</h3>
<p>SHA-1 是一種密碼學雜湊函數，可以從任意長度的資料產生 160 位元雜湊值。它過去曾被廣泛使用，但現在碰撞抵抗性存在問題，不建議用於新的密碼學用途。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以 40 位十六進制顯示 SHA-1 雜湊值。</p>

<p>例如，「Hello, world!」的 SHA-1 雜湊值如下。</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>雜湊值的特點</h4>
<p>SHA-1 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">SHA-1 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>它有時用於與現有系統保持相容，但新的用途請考慮使用 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 或更強的雜湊函數。</p>
