<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de Base64</h3>
<p>Base64 est un schéma de codage utilisant des caractères ASCII imprimables sur 7 bits. Il est principalement utilisé dans les e-mails pour transférer des données 8 bits sur un chemin de données 7 bits.</p>
<p>Dans Base64, les données sont divisées en groupes de 6 bits et converties en caractères alphanumériques (A-Z, a-z, 0-9) et symboles (+, /). La conversion se fait par blocs de 4 caractères, et si le dernier bloc comporte moins de 4 caractères, il est rempli avec des signes égal (=).</p>
<p>De plus, la <a href="https://tools.ietf.org/html/rfc1421" target="_blank">RFC 1421 (PEM : Privacy-Enhanced Mail)</a> spécifie un saut de ligne tous les 64 caractères, et la <a href="https://tools.ietf.org/html/rfc2045" target="_blank">RFC 2045 (MIME)</a> tous les 76 caractères.</p>

<p>Le tableau de conversion en caractères Base64 est le suivant.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Données 6 bits</th><th>Caractère Base64</th></tr>
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

<p>Par exemple, la conversion de "Hello" en Base64 donne ce qui suit.</p>

<p>1. Mettre en représentation binaire.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (pour US-ASCII / UTF-8)</pre>

<p>2. Diviser par 6 bits. S'il y a moins de 6 bits, remplir la fin avec "0".</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Convertir en caractères à l'aide du tableau de conversion. Convertir tous les 4 caractères, et s'il y a moins de 4 caractères, remplir la fin avec "=".</p>

<pre>SGVs bG8=</pre>

<p>4. Concaténer tous les caractères pour obtenir le résultat de la conversion Base64.</p>

<pre>SGVsbG8=</pre>


<h4>Format d'en-tête de message MIME pour les e-mails (RFC 2047)</h4>
<p>DenCode prend également en charge le décodage des formats d'en-tête de message MIME (RFC 2047) tels que ci-dessous. Ce format est utilisé lorsque l'objet ou le destinataire d'un e-mail contient des caractères non ASCII.</p>

<pre>Subject: =?UTF-8?B?44K144Oz44OX44Or?=</pre>

<p>Le résultat après décodage est le suivant.</p>

<pre>Subject: サンプル</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) est un format de jeton qui représente de manière compacte des données JSON en utilisant l'encodage Base64url. Il est largement utilisé pour l'authentification et l'autorisation dans les applications web et est standardisé dans la RFC 7519.</p>

<p>Un JWT est composé de trois éléments séparés par des points (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>Le rôle de chaque élément est le suivant.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Élément</th><th>Description</th></tr>
		<tr><td>Header</td><td>Un objet JSON contenant des métadonnées telles que le type de jeton (typ) et l'algorithme de signature (alg)</td></tr>
		<tr><td>Payload</td><td>Un objet JSON contenant des informations telles que l'identifiant utilisateur et la date d'expiration</td></tr>
		<tr><td>Signature</td><td>Données de signature utilisées pour détecter la falsification de l'en-tête et de la charge utile</td></tr>
	</table>
</div>

<p>L'en-tête et la charge utile sont chacun encodés en Base64url. Base64url remplace « + » par « - » et « / » par « _ », et omet le remplissage « = » par rapport au Base64 standard (RFC 4648). Cela permet de les inclure en toute sécurité dans les URLs et les en-têtes HTTP.</p>

<p>Par exemple, le décodage du JWT suivant donne l'en-tête et la charge utile au format JSON.</p>

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

<p>Les principaux champs (claims) contenus dans l'en-tête et la charge utile sont les suivants.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Champ</th><th>Nom</th><th>Description</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Algorithme utilisé pour la signature ou le chiffrement (p. ex. HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Type de jeton (généralement « JWT »)</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Type de contenu de la charge utile (« JWT » pour les JWT imbriqués)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Identifiant de la clé utilisée pour la vérification de signature</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL du jeu JWK utilisé pour la vérification de signature</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL de la chaîne de certificats X.509 utilisée pour la vérification de signature</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Empreinte SHA-1 du certificat X.509 utilisé pour la vérification de signature</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Champ</th><th>Nom</th><th>Description</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Émetteur du jeton</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Sujet du jeton (p. ex. identifiant utilisateur)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Destinataire du jeton</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Date d'expiration du jeton (horodatage Unix)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Date avant laquelle le jeton n'est pas valide (horodatage Unix)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Date d'émission du jeton (horodatage Unix)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Identifiant unique du jeton</td></tr>
	</table>
</div>
