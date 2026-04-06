<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Base64について</h3>
<p>Base64は、7ビットの印字可能なASCII文字を使用した符号化方式です。主に電子メールにおいて、8ビットデータを7ビットデータパスで転送するために使用します。</p>
<p>Base64では、データを6ビットずつに分割し、それらを英数字(A-Z, a-z, 0-9)や記号(+, /)の文字に変換して表します。4文字ごとに変換し、最後が4文字に満たない場合はイコール記号(=)でパディングします。</p>
<p>また、RFC 1421 (PEM: Privacy-Enhanced Mail)では64文字ごとに改行、RFC 2045 (MIME)では76文字ごとに改行することが規定されています。</p>

<p>Base64の文字への変換表は以下のとおりです。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6ビットデータ</th><th>Base64文字</th></tr>
		<tr><td>000000</td><td>A</td></tr>
		<tr><td>000001</td><td>B</td></tr>
		<tr><td>000010</td><td>C</td></tr>
		<tr><td>000011</td><td>D</td></tr>
		<tr><td>000100</td><td>E</td></tr>
		<tr><td>000101</td><td>F</td></tr>
		<tr><td>000110</td><td>G</td></tr>
		<tr><td>000111</td><td>H</td></tr>
		<tr><td>001000</td><td>I</td></tr>
		<tr><td>001001</td><td>J</td></tr>
		<tr><td>001010</td><td>K</td></tr>
		<tr><td>001011</td><td>L</td></tr>
		<tr><td>001100</td><td>M</td></tr>
		<tr><td>001101</td><td>N</td></tr>
		<tr><td>001110</td><td>O</td></tr>
		<tr><td>001111</td><td>P</td></tr>
		<tr><td>010000</td><td>Q</td></tr>
		<tr><td>010001</td><td>R</td></tr>
		<tr><td>010010</td><td>S</td></tr>
		<tr><td>010011</td><td>T</td></tr>
		<tr><td>010100</td><td>U</td></tr>
		<tr><td>010101</td><td>V</td></tr>
		<tr><td>010110</td><td>W</td></tr>
		<tr><td>010111</td><td>X</td></tr>
		<tr><td>011000</td><td>Y</td></tr>
		<tr><td>011001</td><td>Z</td></tr>
		<tr><td>011010</td><td>a</td></tr>
		<tr><td>011011</td><td>b</td></tr>
		<tr><td>011100</td><td>c</td></tr>
		<tr><td>011101</td><td>d</td></tr>
		<tr><td>011110</td><td>e</td></tr>
		<tr><td>011111</td><td>f</td></tr>
		<tr><td>100000</td><td>g</td></tr>
		<tr><td>100001</td><td>h</td></tr>
		<tr><td>100010</td><td>i</td></tr>
		<tr><td>100011</td><td>j</td></tr>
		<tr><td>100100</td><td>k</td></tr>
		<tr><td>100101</td><td>l</td></tr>
		<tr><td>100110</td><td>m</td></tr>
		<tr><td>100111</td><td>n</td></tr>
		<tr><td>101000</td><td>o</td></tr>
		<tr><td>101001</td><td>p</td></tr>
		<tr><td>101010</td><td>q</td></tr>
		<tr><td>101011</td><td>r</td></tr>
		<tr><td>101100</td><td>s</td></tr>
		<tr><td>101101</td><td>t</td></tr>
		<tr><td>101110</td><td>u</td></tr>
		<tr><td>101111</td><td>v</td></tr>
		<tr><td>110000</td><td>w</td></tr>
		<tr><td>110001</td><td>x</td></tr>
		<tr><td>110010</td><td>y</td></tr>
		<tr><td>110011</td><td>z</td></tr>
		<tr><td>110100</td><td>0</td></tr>
		<tr><td>110101</td><td>1</td></tr>
		<tr><td>110110</td><td>2</td></tr>
		<tr><td>110111</td><td>3</td></tr>
		<tr><td>111000</td><td>4</td></tr>
		<tr><td>111001</td><td>5</td></tr>
		<tr><td>111010</td><td>6</td></tr>
		<tr><td>111011</td><td>7</td></tr>
		<tr><td>111100</td><td>8</td></tr>
		<tr><td>111101</td><td>9</td></tr>
		<tr><td>111110</td><td>+</td></tr>
		<tr><td>111111</td><td>/</td></tr>
	</table>
</div>

<p>例えば、「Hello」をBase64で変換すると以下のようになります。</p>

<p>1. 2進数表現にする。</p>

<pre>01001000 01100101 01101100 01101100 01101111  (US-ASCII / UTF-8の場合)</pre>

<p>2. 6ビットごとに区切る。6ビットに満たない場合は末尾を「0」でパディングする。</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. 変換表を使用して文字に変換する。4文字ごとに変換し、4文字に満たない場合は末尾を「=」でパディングする。</p>

<pre>SGVs bG8=</pre>

<p>4. 文字を全て繋げてBase64の変換結果とする。</p>

<pre>SGVsbG8=</pre>


<h4>EメールのMIMEメッセージヘッダー型式 (RFC 2047)</h4>
<p>DenCodeでは、以下のようなMIMEメッセージヘッダー型式 (RFC 2047) のデコードもサポートします。この型式は、Eメールの件名や宛先などにASCII文字以外が含まれる場合に使用されます。</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>デコードの後の結果は以下のとおりです。</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) は、JSON形式のデータをBase64urlエンコードしてコンパクトに表現するトークン形式です。主にWebアプリケーションにおける認証・認可の仕組みとして広く使用されており、RFC 7519で標準化されています。</p>

<p>JWTは、ドット (.) で区切られた3つの要素から構成されます。</p>

<pre>&lt;ヘッダー&gt;.&lt;ペイロード&gt;.&lt;署名&gt;</pre>

<p>各要素の役割は以下のとおりです。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>要素</th><th>説明</th></tr>
		<tr><td>ヘッダー (Header)</td><td>トークンの種類 (typ) や署名アルゴリズム (alg) などのメタ情報を含むJSONオブジェクト</td></tr>
		<tr><td>ペイロード (Payload)</td><td>ユーザーIDや有効期限などの情報を含むJSONオブジェクト</td></tr>
		<tr><td>署名 (Signature)</td><td>ヘッダーとペイロードの改ざんを検出するための署名データ</td></tr>
	</table>
</div>

<p>ヘッダーとペイロードはそれぞれBase64urlエンコードされています。Base64urlは、標準のBase64と比べて、「+」を「-」に、「/」を「_」に置き換え、パディングの「=」を省略した形式です (RFC 4648)。これにより、URLやHTTPヘッダーに安全に含めることができます。</p>

<p>例えば、以下のJWTをデコードすると、ヘッダーとペイロードをそれぞれJSONとして取得できます。</p>

<pre>eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c</pre>

<pre>
{
  "alg": "HS256",
  "typ": "JWT"
}
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
</pre>

<p>ヘッダーやペイロードに含まれる主なフィールド (クレーム) は以下のとおりです。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>フィールド</th><th>名称</th><th>説明</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>署名や暗号化に使用するアルゴリズム (HS256, RS256, ES256 など)</td></tr>
		<tr><td>typ</td><td>Type</td><td>トークンの種類 (通常は "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>ペイロードのコンテンツタイプ (ネストされたJWTの場合は "JWT")</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>署名検証に使用する鍵の識別子</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>署名検証に使用するJWK Setの参照先URL</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>署名検証に使用するX.509証明書チェーンの参照先URL</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>署名検証に使用するX.509証明書のSHA-1サムプリント</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>フィールド</th><th>名称</th><th>説明</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>トークンの発行者</td></tr>
		<tr><td>sub</td><td>Subject</td><td>トークンの主体 (ユーザーIDなど)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>トークンの受信者</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>トークンの有効期限 (UNIXタイムスタンプ)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>トークンの有効開始日時 (UNIXタイムスタンプ)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>トークンの発行日時 (UNIXタイムスタンプ)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>トークンの一意な識別子</td></tr>
	</table>
</div>
