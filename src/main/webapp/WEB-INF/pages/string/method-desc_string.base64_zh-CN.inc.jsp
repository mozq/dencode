<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于 Base64</h3>
<p>Base64 是使用 7 位可打印 ASCII 字符的编码方式。主要用于电子邮件中通过 7 位数据路径传输 8 位数据。</p>
<p>在 Base64 中，数据被每 6 个比特分为一组，并转换为英数字 (A-Z, a-z, 0-9) 和符号 (+, /) 来表示。每 4 个字符转换一次，如果最后不足 4 个字符，则用等号 (=) 填充。</p>
<p>此外，RFC 1421 (PEM: Privacy-Enhanced Mail) 规定每 64 个字符换行，RFC 2045 (MIME) 规定每 76 个字符换行。</p>

<p>Base64 字符转换表如下。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6比特数据</th><th>Base64 字符</th></tr>
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

<p>例如，将“Hello”用 Base64 转换如下。</p>

<p>1. 转换为二进制表示。</p>

<pre>01001000 01100101 01101100 01101100 01101111  (US-ASCII / UTF-8)</pre>

<p>2. 每 6 个比特分隔。不足 6 比特的在末尾用“0”填充。</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. 使用转换表转换为字符。每 4 个字符转换一次，不足 4 个字符的在末尾用“=”填充。</p>

<pre>SGVs bG8=</pre>

<p>4. 连接所有字符作为 Base64 转换结果。</p>

<pre>SGVsbG8=</pre>


<h4>电子邮件的 MIME 消息头格式 (RFC 2047)</h4>
<p>DenCode 也支持如下的 MIME 消息头格式 (RFC 2047) 解码。这种格式用于电子邮件的主题或收视人等包含非 ASCII 字符的情况。</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>解码后的结果如下。</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) 是一种使用 Base64url 编码将 JSON 数据紧凑表示的令牌格式。它在 Web 应用程序的认证和授权中被广泛使用，并在 RFC 7519 中标准化。</p>

<p>JWT 由三个通过点 (.) 分隔的元素组成。</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>各元素的作用如下。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>元素</th><th>说明</th></tr>
		<tr><td>Header</td><td>包含令牌类型 (typ) 和签名算法 (alg) 等元数据的 JSON 对象</td></tr>
		<tr><td>Payload</td><td>包含用户 ID 和过期时间等信息的 JSON 对象</td></tr>
		<tr><td>Signature</td><td>用于检测头部和载荷是否被篡改的签名数据</td></tr>
	</table>
</div>

<p>头部和载荷分别进行 Base64url 编码。与标准 Base64 相比，Base64url 将"+"替换为"-"，将"/"替换为"_"，并省略填充"="(RFC 4648)。这使得它们可以安全地包含在 URL 和 HTTP 头部中。</p>

<p>例如，解码以下 JWT 可以分别获取头部和载荷的 JSON 数据。</p>

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

<p>头部和载荷中包含的主要字段（声明）如下。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>字段</th><th>名称</th><th>说明</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>用于签名或加密的算法（如 HS256、RS256、ES256）</td></tr>
		<tr><td>typ</td><td>Type</td><td>令牌类型（通常为 "JWT"）</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>载荷的内容类型（嵌套 JWT 时为 "JWT"）</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>用于签名验证的密钥标识符</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>用于签名验证的 JWK Set 参考 URL</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>用于签名验证的 X.509 证书链参考 URL</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>用于签名验证的 X.509 证书的 SHA-1 指纹</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>字段</th><th>名称</th><th>说明</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>令牌的签发者</td></tr>
		<tr><td>sub</td><td>Subject</td><td>令牌的主体（如用户 ID）</td></tr>
		<tr><td>aud</td><td>Audience</td><td>令牌的接收方</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>令牌的过期时间（Unix 时间戳）</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>令牌生效时间（Unix 时间戳）</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>令牌的签发时间（Unix 时间戳）</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>令牌的唯一标识符</td></tr>
	</table>
</div>
