<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>逆順テキストについて</h3>
<p>逆順テキストは、入力された文字列を文字単位で逆向きに並べ替える変換です。文字列全体を対象に、末尾の文字から先頭の文字へ向かって読み直します。</p>

<p>例えば、「Hello, world!」を逆順に変換すると以下のようになります。</p>

<pre>!dlrow ,olleH</pre>

<p>複数行のテキストでは、改行も文字列の一部として扱われるため、行の順序も含めて全体が反転します。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">逆順変換後</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>この変換は、文の意味を保ったまま単語の順序を入れ替えるものではありません。入力された文字の並びをそのまま逆順にします。</p>
