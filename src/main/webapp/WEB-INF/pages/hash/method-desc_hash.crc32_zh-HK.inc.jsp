<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於CRC32</h3>
<p>CRC32 是一種錯誤偵測方式，可以從任意長度的資料產生 32 位元檢查值。它常用於檔案傳輸、壓縮格式等場景，用來確認資料是否損壞。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以十六進制顯示 CRC32 值。</p>

<p>例如，「Hello, world!」的 CRC32 如下。</p>

<pre>ebe6c6e6</pre>

<h4>CRC32 的特點</h4>
<p>CRC32 適合偵測偶發的資料損壞。但它不是密碼學雜湊函數，因此不適合需要防竄改安全性的用途。</p>
<p>CRC32 對相同輸入始終產生相同的值。輸入改變時，輸出值也會改變。不過，無法從 CRC32 值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
