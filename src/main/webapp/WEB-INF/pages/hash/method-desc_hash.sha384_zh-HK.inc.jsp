<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於SHA-384</h3>
<p>SHA-384 是一種密碼學雜湊函數，可以從任意長度的資料產生 384 位元雜湊值。它是 SHA-2 家族的一種，輸出的雜湊值比 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 更長。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以 96 位十六進制顯示 SHA-384 雜湊值。</p>

<p>例如，「Hello, world!」的 SHA-384 雜湊值如下。</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>雜湊值的特點</h4>
<p>SHA-384 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">SHA-384 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
