<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Base64</h3>
<p>Base64 is an encoding method that uses 7-bit printable ASCII characters. Mainly used in email to transfer 8-bit data over a 7-bit data path.</p>
<p>In Base64, data is divided into 6 bits and converted into alphanumeric characters (A-Z, a-z, 0-9) and symbols (+, /). Converts every 4 characters, and if the last is less than 4 characters, pad with the equal symbol (=).</p>
<p>In addition, RFC 1421 (PEM: Privacy-Enhanced Mail) stipulates line breaks every 64 characters, and RFC 2045 (MIME) stipulates line breaks every 76 characters.</p>

<p>The conversion table for Base64 characters is as follows.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>6-bit data</th><th>Base64 character</th></tr>
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

<p>For example, if you convert "Hello" with Base64, it will be as follows.</p>

<p>1. Convert it to a binary representation.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (For US-ASCII / UTF-8)</pre>

<p>2. Split into 6-bit groups. If the last group is less than 6 bits, pad it with "0" at the end.</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Convert to characters using a conversion table. Convert every 4 characters, and if it is less than 4 characters, pad the end with "=".</p>

<pre>SGVs bG8=</pre>

<p>4. Connect all the characters to get the Base64 conversion result.</p>

<pre>SGVsbG8=</pre>


<h4>Email MIME message header type (RFC 2047)</h4>
<p>DenCode also supports decoding of MIME message header format (RFC 2047), such as below. This format is used when the subject, recipient, etc. of the email contains non-ASCII characters.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>The result after decoding is as follows.</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) is a token format that compactly represents JSON data using Base64url encoding. It is widely used for authentication and authorization in web applications, and is standardized in RFC 7519.</p>

<p>A JWT consists of three elements separated by dots (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>The role of each element is as follows.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Description</th></tr>
		<tr><td>Header</td><td>A JSON object containing metadata such as the token type (typ) and signing algorithm (alg)</td></tr>
		<tr><td>Payload</td><td>A JSON object containing information such as user ID and expiration time</td></tr>
		<tr><td>Signature</td><td>Signature data used to detect tampering of the header and payload</td></tr>
	</table>
</div>

<p>The header and payload are each Base64url encoded. Base64url replaces "+" with "-" and "/" with "_", and omits the padding "=" compared to standard Base64 (RFC 4648). This allows them to be safely included in URLs and HTTP headers.</p>

<p>For example, decoding the following JWT yields the header and payload as JSON.</p>

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

<p>The main fields (claims) contained in the header and payload are as follows.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Field</th><th>Name</th><th>Description</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algorithm used for signing or encryption (e.g. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Token type (usually "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Content type of the payload ("JWT" for nested JWTs)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Identifier of the key used for signature verification</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL referencing the JWK Set used for signature verification</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL referencing the X.509 certificate chain used for signature verification</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>SHA-1 thumbprint of the X.509 certificate used for signature verification</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Field</th><th>Name</th><th>Description</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Issuer of the token</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Subject of the token (e.g. user ID)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Recipient of the token</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Expiration time of the token (Unix timestamp)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Time before which the token is not valid (Unix timestamp)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Time at which the token was issued (Unix timestamp)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Unique identifier of the token</td></tr>
	</table>
</div>
