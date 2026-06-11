<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於SHA-512</h3>
<p>SHA-512 是一種密碼學雜湊函數，可以從任意長度的資料產生 512 位元雜湊值。它是 SHA-2 家族的一種，輸出的雜湊值比 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 更長。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以 128 位十六進制顯示 SHA-512 雜湊值。</p>

<p>例如，「Hello, world!」的 SHA-512 雜湊值如下。</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>雜湊值的特點</h4>
<p>SHA-512 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">SHA-512 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
