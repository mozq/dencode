<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>重複行削除について</h3>
<p>重複行削除は、複数行のテキストから重複している行を取り除く変換です。同じ行が複数回出現した場合は、最初の行だけを残し、2回目以降の同じ行を削除します。</p>
<p>残った行の順序は、元の出現順のまま保持されます。行の並べ替えは行いません。</p>

<p>例えば、以下のテキストから重複行を削除します。</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>結果は以下のようになります。</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力行</th><th scope="col">結果</th><th scope="col">説明</th></tr>
		<tr><td><code>apple</code> (1回目)</td><td>残る</td><td>最初に出現した行です。</td></tr>
		<tr><td><code>banana</code> (1回目)</td><td>残る</td><td>最初に出現した行です。</td></tr>
		<tr><td><code>apple</code> (2回目)</td><td>削除</td><td>すでに同じ行が出現しています。</td></tr>
		<tr><td><code>orange</code> (1回目)</td><td>残る</td><td>最初に出現した行です。</td></tr>
		<tr><td><code>banana</code> (2回目)</td><td>削除</td><td>すでに同じ行が出現しています。</td></tr>
	</table>
</div>

<p>重複判定は、各行全体の文字列を使って行われます。大文字と小文字、前後の空白、全角・半角の違いなどは、別の文字列として扱われます。</p>
