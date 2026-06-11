<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-512について</h3>
<p>SHA-512は、任意の長さのデータから512ビットのハッシュ値を生成する暗号学的ハッシュ関数です。SHA-2ファミリーの1つで、<a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>より長いハッシュ値を出力します。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、SHA-512のハッシュ値を16進数128桁で表示します。</p>

<p>例えば、「Hello, world!」のSHA-512ハッシュ値は以下のようになります。</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>ハッシュ値の特徴</h4>
<p>SHA-512では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">SHA-512ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
