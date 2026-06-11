<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-384について</h3>
<p>SHA-384は、任意の長さのデータから384ビットのハッシュ値を生成する暗号学的ハッシュ関数です。SHA-2ファミリーの1つで、<a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>より長いハッシュ値を出力します。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、SHA-384のハッシュ値を16進数96桁で表示します。</p>

<p>例えば、「Hello, world!」のSHA-384ハッシュ値は以下のようになります。</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>ハッシュ値の特徴</h4>
<p>SHA-384では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">SHA-384ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
