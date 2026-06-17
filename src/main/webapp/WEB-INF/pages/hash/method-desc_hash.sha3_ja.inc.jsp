<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-3について</h3>
<p>SHA-3は、任意の長さのデータから固定長のハッシュ値を生成する暗号学的ハッシュ関数です。SHA-3には、ハッシュ値のビット長の違いにより SHA3-224、SHA3-256、SHA3-384、SHA3-512 の4種類があります。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、SHA-3のハッシュ値を16進数で表示します。</p>

<p>例えば、「Hello, world!」のSHA3-256ハッシュ値は以下のようになります。</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>ハッシュ値の特徴</h4>
<p>SHA-3では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">SHA3-256ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>SHA-2との違い</h4>
<p>SHA-2がMD5やSHA-1と同系統のMerkle-Damgård構造をもとにしているのに対し、SHA-3はKeccakを標準化したもので、スポンジ構造を採用しています。そのため、SHA-256とSHA3-256は同じ256ビットのハッシュ値を出力しますが、出力される値は異なります。</p>
