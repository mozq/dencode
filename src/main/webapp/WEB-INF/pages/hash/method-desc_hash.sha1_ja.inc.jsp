<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>SHA-1について</h3>
<p>SHA-1は、任意の長さのデータから160ビットのハッシュ値を生成する暗号学的ハッシュ関数です。以前は広く使われていましたが、現在は衝突耐性に問題があるため、新しい暗号学的用途には推奨されません。</p>
<p>DenCodeでは、入力された文字列を指定された文字コードのバイト列として扱い、SHA-1のハッシュ値を16進数40桁で表示します。</p>

<p>例えば、「Hello, world!」のSHA-1ハッシュ値は以下のようになります。</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>ハッシュ値の特徴</h4>
<p>SHA-1では、同じ入力からは常に同じハッシュ値が生成されます。入力が少しでも変わると、出力されるハッシュ値は大きく変化します。</p>
<p>ハッシュ関数は一方向関数であり、ハッシュ値から元の入力データを復元することはできません。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">入力</th><th scope="col">SHA-1ハッシュ値</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>既存システムとの互換性確認などで使われることがありますが、新しい用途では<a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>以上のハッシュ関数の使用を検討してください。</p>
