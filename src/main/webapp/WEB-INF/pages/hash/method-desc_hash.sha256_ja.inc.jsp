<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>SHA-256について</h3>
<p>SHA-256は、任意の長さのデータから256ビットのハッシュ値を生成する暗号学的ハッシュ関数です。SHA-2ファミリーの1つで、ファイルの改ざん検出、データの整合性確認、電子署名、証明書、ブロックチェーンなど、さまざまな用途で使用されます。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、SHA-256のハッシュ値を16進数64桁で表示します。</p>

<p>例えば、「Hello, world!」のSHA-256ハッシュ値は以下のようになります。</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>ハッシュ値の特徴</h4>
<p>SHA-256では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">SHA-256ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
