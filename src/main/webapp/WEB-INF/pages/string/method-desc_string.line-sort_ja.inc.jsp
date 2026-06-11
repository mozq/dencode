<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>行ソートについて</h3>
<p>行ソートは、複数行のテキストを行単位で並べ替える変換です。入力された行を、昇順、降順、または現在の並びを反転した逆順に並べ替えます。</p>
<p>昇順と降順では、各行全体を1つの文字列として扱い、Unicodeの文字順で比較します。逆順では、各行の文字列そのものは変更せず、行の並びだけを上下逆にします。</p>

<p>例えば、以下のテキストを昇順で行ソートします。</p>

<pre>
banana
apple
orange
</pre>

<p>変換結果は以下のようになります。</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">順序</th><th scope="col">説明</th><th scope="col">変換例</th></tr>
		<tr><td>昇順</td><td>Unicode文字列として小さい順に行を並べ替えます。</td><td><code>apple</code>、<code>banana</code>、<code>orange</code></td></tr>
		<tr><td>降順</td><td>Unicode文字列として大きい順に行を並べ替えます。</td><td><code>orange</code>、<code>banana</code>、<code>apple</code></td></tr>
		<tr><td>逆順</td><td>入力された行の順番を上下逆にします。</td><td><code>orange</code>、<code>apple</code>、<code>banana</code></td></tr>
	</table>
</div>

<p>大文字と小文字、数字、記号、日本語などは、それぞれのUnicode文字として比較されます。自然言語の辞書順や数値としての大小ではなく、文字列比較による並び替えになります。</p>
