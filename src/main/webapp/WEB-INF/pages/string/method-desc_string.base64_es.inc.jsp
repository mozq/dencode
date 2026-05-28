<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre Base64</h3>
<p>Base64 es un método de codificación que utiliza caracteres ASCII imprimibles de 7 bits. Se utiliza principalmente en correo electrónico para transferir datos de 8 bits a través de rutas de datos de 7 bits.</p>
<p>En Base64, los datos se dividen en grupos de 6 bits, que se convierten en caracteres alfanuméricos (A-Z, a-z, 0-9) y símbolos (+, /). Se convierten cada 4 caracteres, y si el final tiene menos de 4 caracteres, se rellena con el signo igual (=).</p>
<p>Además, RFC 1421 (PEM: Privacy-Enhanced Mail) especifica saltos de línea cada 64 caracteres, y RFC 2045 (MIME) especifica saltos de línea cada 76 caracteres.</p>

<p>La tabla de conversión a caracteres Base64 es la siguiente:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Datos de 6 bits</th><th>Carácter Base64</th></tr>
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

<p>Por ejemplo, convertir "Hello" en Base64 da el siguiente resultado:</p>

<p>1. Convertir a representación binaria.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (Para US-ASCII / UTF-8)</pre>

<p>2. Dividir en grupos de 6 bits. Si hay menos de 6 bits, rellenar el final con "0".</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Convertir a caracteres usando la tabla de conversión. Se convierten cada 4 caracteres, y si hay menos de 4 caracteres, se rellena el final con "=".</p>

<pre>SGVs bG8=</pre>

<p>4. Unir todos los caracteres para obtener el resultado de la conversión Base64.</p>

<pre>SGVsbG8=</pre>


<h4>Formato de encabezado de mensaje MIME para correo electrónico (RFC 2047)</h4>
<p>DenCode también soporta la decodificación del formato de encabezado de mensaje MIME (RFC 2047) como se muestra a continuación. Este formato se utiliza cuando el asunto o el destinatario del correo electrónico contienen caracteres no ASCII.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>El resultado después de la decodificación es el siguiente:</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) es un formato de token que representa datos JSON de forma compacta mediante codificación Base64url. Se utiliza ampliamente para autenticación y autorización en aplicaciones web y está estandarizado en RFC 7519.</p>

<p>Un JWT consta de tres elementos separados por puntos (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>El papel de cada elemento es el siguiente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemento</th><th>Descripción</th></tr>
		<tr><td>Header</td><td>Un objeto JSON con metadatos como el tipo de token (typ) y el algoritmo de firma (alg)</td></tr>
		<tr><td>Payload</td><td>Un objeto JSON con información como el ID de usuario y la fecha de expiración</td></tr>
		<tr><td>Signature</td><td>Datos de firma utilizados para detectar alteraciones en el encabezado y la carga útil</td></tr>
	</table>
</div>

<p>El encabezado y la carga útil están codificados en Base64url. Base64url reemplaza "+" por "-" y "/" por "_", y omite el relleno "=" en comparación con el Base64 estándar (RFC 4648). Esto permite incluirlos de forma segura en URLs y encabezados HTTP.</p>

<p>Por ejemplo, al decodificar el siguiente JWT se obtienen el encabezado y la carga útil como JSON.</p>

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

<p>Los principales campos (claims) contenidos en el encabezado y la carga útil son los siguientes.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Campo</th><th>Nombre</th><th>Descripción</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algoritmo utilizado para la firma o cifrado (p. ej. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Tipo de token (normalmente "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Tipo de contenido de la carga útil ("JWT" para JWTs anidados)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Identificador de la clave utilizada para la verificación de firma</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL del conjunto JWK utilizado para la verificación de firma</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL de la cadena de certificados X.509 utilizada para la verificación de firma</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Huella digital SHA-1 del certificado X.509 utilizado para la verificación de firma</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Campo</th><th>Nombre</th><th>Descripción</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Emisor del token</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Sujeto del token (p. ej. ID de usuario)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Destinatario del token</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Tiempo de expiración del token (marca de tiempo Unix)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Tiempo antes del cual el token no es válido (marca de tiempo Unix)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Tiempo en que se emitió el token (marca de tiempo Unix)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Identificador único del token</td></tr>
	</table>
</div>
