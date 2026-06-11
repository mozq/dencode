<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>MD5について</h3>
<p>MD5は、任意の長さのデータから128ビットのハッシュ値を生成するハッシュ関数です。広く使われてきた方式ですが、衝突耐性に問題があるため、現在の暗号学的な用途には推奨されません。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、MD5のハッシュ値を16進数32桁で表示します。</p>

<p>例えば、「Hello, world!」のMD5ハッシュ値は以下のようになります。</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>ハッシュ値の特徴</h4>
<p>MD5では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">MD5ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5は古いチェックサムとの照合などで見かけることがありますが、改ざん検出や署名などの安全性が必要な用途では<a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>などの使用を検討してください。</p>
