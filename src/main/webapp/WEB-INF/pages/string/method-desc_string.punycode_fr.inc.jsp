<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de Punycode IDN</h3>
<p>Punycode est une méthode d’encodage qui permet de représenter des chaînes Unicode uniquement avec des caractères ASCII. Elle sert surtout à convertir des noms de domaine internationalisés (IDN), par exemple avec des caractères japonais, chinois, coréens ou des lettres latines accentuées, dans une forme ASCII utilisable par le DNS.</p>
<p>Dans un nom de domaine internationalisé, chaque label du domaine est converti avec Punycode, puis le préfixe <code>xn--</code> est ajouté au label converti. Cette forme ASCII est appelée A-label ; la forme Unicode d’origine est appelée U-label.</p>

<p>Par exemple, la conversion de « ドメイン.com » en Punycode IDN donne le résultat suivant.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>Dans cet exemple, le domaine de premier niveau <code>com</code> ne contient que des caractères ASCII et reste inchangé ; seul le label « ドメイン » est converti en <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Forme Unicode</th><th scope="col">Forme Punycode IDN</th><th scope="col">Description</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nom de domaine contenant des caractères japonais.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Chaque label est converti séparément.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Exemple contenant une lettre latine accentuée.</td></tr>
	</table>
</div>

<p>Punycode IDN est différent de l’encodage URL. L’encodage URL représente les caractères dans une URL sous forme de suites d’octets comme <code>%E3%81%82</code>, tandis que Punycode IDN convertit les labels d’un nom de domaine en labels ASCII commençant par <code>xn--</code>.</p>

<h4>Conversion par label de domaine</h4>
<p>Un nom de domaine est une suite de labels séparés par des points (<code>.</code>). Punycode IDN ne convertit pas le nom de domaine entier comme une seule chaîne ; chaque label est converti séparément.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Label</th><th scope="col">Résultat de la conversion</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Ainsi, <code>例え.テスト</code> devient <code>xn--r8jz45g.xn--zckzah</code>.</p>
