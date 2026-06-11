<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD2について</h3>
<p>MD2は、任意の長さのデータから128ビットのハッシュ値を生成するハッシュ関数です。古い方式であり、現在の暗号学的な用途には推奨されません。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、MD2のハッシュ値を16進数32桁で表示します。</p>

<p>例えば、「Hello, world!」のMD2ハッシュ値は以下のようになります。</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>ハッシュ値の特徴</h4>
<p>MD2では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">MD2ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2は互換性確認などに使われることがありますが、新しい用途では<a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>など、より新しいハッシュ関数の使用を検討してください。</p>
