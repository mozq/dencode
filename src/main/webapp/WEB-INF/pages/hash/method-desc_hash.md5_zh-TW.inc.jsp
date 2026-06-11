<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於MD5</h3>
<p>MD5 是一種雜湊函數，可以從任意長度的資料產生 128 位元雜湊值。它曾被廣泛使用，但由於碰撞抵抗性存在問題，不建議用於目前的密碼學用途。</p>
<p>在 DenCode 中，輸入的字串會按指定字元編碼作為位元組序列處理，並以 32 位十六進制顯示 MD5 雜湊值。</p>

<p>例如，「Hello, world!」的 MD5 雜湊值如下。</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>雜湊值的特點</h4>
<p>MD5 對相同輸入始終產生相同的雜湊值。即使輸入只改變一點，輸出的雜湊值也會有很大變化。</p>
<p>雜湊函數是單向函數，因此無法從雜湊值還原原始輸入資料。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">輸入</th><th scope="col">MD5 雜湊值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 有時會出現在舊檢查碼的比對中，但在竄改偵測、簽章等需要安全性的用途下，請考慮使用 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 等更新的雜湊函數。</p>
