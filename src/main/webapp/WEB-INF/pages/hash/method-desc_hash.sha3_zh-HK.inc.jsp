<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於SHA-3</h3>
<p>SHA-3 是一種密碼學雜湊函數，可以從任意長度的資料產生固定長度的雜湊值。SHA-3 包含 SHA3-224、SHA3-256、SHA3-384、SHA3-512 四種雜湊值長度不同的函數。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以十六進制顯示 SHA-3 雜湊值。</p>

<p>例如，「Hello, world!」的 SHA3-256 雜湊值如下。</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>雜湊值的特點</h4>
<p>SHA-3 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">SHA3-256 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>與 SHA-2 的差異</h4>
<p>SHA-2 基於與 MD5、SHA-1 同一類的 Merkle-Damgård 結構，而 SHA-3 是對 Keccak 的標準化，採用的是海綿結構。因此，SHA-256 和 SHA3-256 都輸出 256 位元雜湊值，但產生的值不同。</p>
