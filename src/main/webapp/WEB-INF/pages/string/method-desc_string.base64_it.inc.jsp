<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni su Base64</h3>
<p>Base64 è uno schema di codifica che utilizza caratteri ASCII stampabili a 7 bit. È utilizzato principalmente nelle e-mail per trasferire dati a 8 bit su percorsi a 7 bit.</p>
<p>Base64 divide i dati in blocchi di 6 bit e li converte in caratteri alfanumerici (A-Z, a-z, 0-9) e simboli (+, /). Converte ogni 4 caratteri e, se l'ultimo blocco è inferiore a 4 caratteri, riempie con il simbolo uguale (=).</p>
<p>Inoltre, RFC 1421 (PEM) specifica un ritorno a capo ogni 64 caratteri, e RFC 2045 (MIME) specifica un ritorno a capo ogni 76 caratteri.</p>

<p>La tabella di conversione dei caratteri Base64 è la seguente:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Dati a 6 bit</th><th>Carattere Base64</th></tr>
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

<p>Ad esempio, la conversione di "Hello" in Base64 è la seguente.</p>

<p>1. Rappresentazione binaria.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (Per US-ASCII / UTF-8)</pre>

<p>2. Dividi ogni 6 bit. Se meno di 6 bit, riempi con "0" alla fine.</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Converti in caratteri usando la tabella di conversione. Converti ogni 4 caratteri; se meno di 4, riempi con "=" alla fine.</p>

<pre>SGVs bG8=</pre>

<p>4. Unisci tutti i caratteri per il risultato finale.</p>

<pre>SGVsbG8=</pre>


<h4>Formato dell'intestazione del messaggio MIME (RFC 2047)</h4>
<p>DenCode supporta anche la decodifica del formato di intestazione dei messaggi MIME (RFC 2047). Questo formato è utilizzato quando l'oggetto o il destinatario dell'e-mail contiene caratteri non ASCII.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>Il risultato dopo la decodifica è il seguente:</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) è un formato di token che rappresenta in modo compatto i dati JSON utilizzando la codifica Base64url. È ampiamente utilizzato per l'autenticazione e l'autorizzazione nelle applicazioni web ed è standardizzato nella RFC 7519.</p>

<p>Un JWT è composto da tre elementi separati da punti (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>Il ruolo di ciascun elemento è il seguente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemento</th><th>Descrizione</th></tr>
		<tr><td>Header</td><td>Un oggetto JSON contenente metadati come il tipo di token (typ) e l'algoritmo di firma (alg)</td></tr>
		<tr><td>Payload</td><td>Un oggetto JSON contenente informazioni come l'ID utente e la scadenza</td></tr>
		<tr><td>Signature</td><td>Dati di firma utilizzati per rilevare la manomissione dell'intestazione e del payload</td></tr>
	</table>
</div>

<p>L'intestazione e il payload sono ciascuno codificati in Base64url. Base64url sostituisce "+" con "-" e "/" con "_", e omette il padding "=" rispetto al Base64 standard (RFC 4648). Ciò consente di includerli in modo sicuro negli URL e nelle intestazioni HTTP.</p>

<p>Ad esempio, decodificando il seguente JWT si ottengono l'intestazione e il payload in formato JSON.</p>

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

<p>I principali campi (claim) contenuti nell'intestazione e nel payload sono i seguenti.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Campo</th><th>Nome</th><th>Descrizione</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algoritmo utilizzato per la firma o la crittografia (es. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Tipo di token (solitamente "JWT")</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Tipo di contenuto del payload ("JWT" per JWT annidati)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Identificatore della chiave utilizzata per la verifica della firma</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL del set JWK utilizzato per la verifica della firma</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL della catena di certificati X.509 utilizzata per la verifica della firma</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Impronta SHA-1 del certificato X.509 utilizzato per la verifica della firma</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Campo</th><th>Nome</th><th>Descrizione</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Emittente del token</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Soggetto del token (es. ID utente)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Destinatario del token</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Scadenza del token (timestamp Unix)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Data prima della quale il token non è valido (timestamp Unix)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Data di emissione del token (timestamp Unix)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Identificatore univoco del token</td></tr>
	</table>
</div>
