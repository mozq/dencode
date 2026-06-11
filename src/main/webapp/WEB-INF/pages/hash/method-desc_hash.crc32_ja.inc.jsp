<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>CRC32について</h3>
<p>CRC32は、任意の長さのデータから32ビットの検査値を生成する誤り検出用の方式です。ファイル転送や圧縮形式などで、データが破損していないかを確認するために使われます。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、CRC32の値を16進数で表示します。</p>

<p>例えば、「Hello, world!」のCRC32は以下のようになります。</p>

<pre>ebe6c6e6</pre>

<h4>CRC32の特徴</h4>
<p>CRC32はデータの偶発的な破損を検出する目的に適しています。一方で、暗号学的ハッシュ関数ではないため、改ざんに対する安全性が必要な用途には適していません。</p>
<p>CRC32では、同じ入力からは常に同じ値が生成されます。入力が変わると、出力される値も変わります。ただし、CRC32の値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
