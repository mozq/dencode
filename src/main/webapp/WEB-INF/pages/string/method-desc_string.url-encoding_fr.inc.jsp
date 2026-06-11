<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de l'encodage URL</h3>
<p>L'encodage URL est une méthode permettant de représenter du texte de manière sûre dans une URL. Son nom formel est « encodage en pourcentage » (percent-encoding), défini par la spécification URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Les caractères qui ont une signification spéciale dans les URL, ou qui sont difficiles à utiliser tels quels dans une URL, sont convertis en un signe de pourcentage (%) suivi de deux chiffres hexadécimaux.</p>
<p>Par exemple, un espace est représenté par <code>%20</code>, un point d'exclamation (<code>!</code>) par <code>%21</code>, et le caractère japonais « あ » par <code>%E3%81%82</code> en UTF-8.</p>

<p>L'encodage URL convertit d'abord le texte en octets avec l'encodage de caractères sélectionné, puis représente chaque octet sous la forme <code>%HH</code> si nécessaire. Dans DenCode, les caractères non réservés de la RFC 3986, c'est-à-dire les caractères alphanumériques et <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, ne sont pas convertis; les autres caractères sont encodés en pourcentage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Caractère</th><th scope="col">Après encodage URL</th><th scope="col">Description</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Les caractères alphanumériques sont non réservés et ne sont donc pas convertis.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> et <code>~</code> sont non réservés et ne sont donc pas convertis.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Ce caractère sépare les segments de chemin d'une URL; encodez-le lorsqu'il fait partie d'une valeur.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Caractère réservé qui marque le début de la chaîne de requête.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Caractère réservé qui sépare les paramètres de requête.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Caractère réservé qui sépare le nom et la valeur d'un paramètre.</td></tr>
		<tr><td>Espace</td><td><code>%20</code></td><td>Dans l'encodage en pourcentage des URL, un espace est encodé en <code>%20</code>; dans <code>application/x-www-form-urlencoded</code>, il est encodé en <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Encodez <code>+</code> lorsque le signe plus lui-même doit être utilisé comme valeur.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>En UTF-8, ce caractère est encodé sur trois octets.</td></tr>
	</table>
</div>

<p>Par exemple, l'encodage URL de « Hello, world! » donne le résultat suivant.</p>

<pre>Hello%2C%20world%21</pre>

<p>Dans cet exemple, la virgule (<code>,</code>) devient <code>%2C</code>, l'espace devient <code>%20</code>, et le point d'exclamation (<code>!</code>) devient <code>%21</code>.</p>


<h4>Représentation des espaces dans application/x-www-form-urlencoded</h4>
<p>Dans <code>application/x-www-form-urlencoded</code>, utilisé pour l'envoi de formulaires HTML, les espaces peuvent être représentés par <code>+</code>. Ce format est défini par le <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> comme encodage d'envoi de formulaire.</p>
<p>DenCode permet de choisir si les espaces sont affichés sous la forme <code>%20</code> ou <code>+</code> lors de l'encodage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Format</th><th scope="col">Résultat pour « Hello world »</th><th scope="col">Utilisation</th></tr>
		<tr><td>Encodage en pourcentage</td><td><code>Hello%20world</code></td><td>Format général pratique pour les URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Utilisé dans les chaînes de requête et les corps de requête des formulaires HTML.</td></tr>
	</table>
</div>
