<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於SHA-256</h3>
<p>SHA-256 是一種密碼學雜湊函數，可以從任意長度的資料產生 256 位元雜湊值。它是 SHA-2 家族的一種，常用於檔案竄改偵測、資料完整性確認、數位簽章、憑證、區塊鏈等場景。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以 64 位十六進制顯示 SHA-256 雜湊值。</p>

<p>例如，「Hello, world!」的 SHA-256 雜湊值如下。</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>雜湊值的特點</h4>
<p>SHA-256 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">SHA-256 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
