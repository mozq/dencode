<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de l’échappement HTML</h3>
<p>L’échappement HTML convertit les caractères qui ont une signification particulière en HTML en références de caractères, afin qu’une chaîne puisse être affichée en toute sécurité comme texte HTML. Par exemple, <code>&lt;</code> et <code>&gt;</code>, qui peuvent être interprétés comme des balises, s’écrivent <code>&amp;lt;</code> et <code>&amp;gt;</code>.</p>
<p>Échapper du HTML empêche le texte saisi d’être interprété comme des balises ou des attributs HTML, et permet de l’afficher tel quel à l’écran.</p>

<p>Par exemple, l’échappement HTML de « &lt;p&gt;Hello, world!&lt;/p&gt; » donne le résultat suivant.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Caractère</th><th scope="col">Après échappement HTML</th><th scope="col">Description</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Peut être interprété comme le début d’une balise HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Peut être interprété comme la fin d’une balise HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Peut être interprété comme le début d’une référence de caractère.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>A une signification particulière lorsqu’une valeur d’attribut est entourée de guillemets doubles.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>A une signification particulière lorsqu’une valeur d’attribut est entourée de guillemets simples.</td></tr>
	</table>
</div>

<h4>Options d'échappement HTML</h4>
<p>DenCode permet de choisir la cible, la manière d'utiliser les références de caractères nommées et la notation des références numériques.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Cible</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Exemple pour « A &lt; 😀 »</th></tr>
		<tr><td>Basique</td><td>Convertit les cinq caractères <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> et <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Basique + non-ASCII</td><td>Convertit les cinq caractères de base ainsi que les caractères non ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Non alphanumérique</td><td>Convertit les caractères autres que les lettres et chiffres ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Tout</td><td>Convertit tous les caractères.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Pour l'affichage HTML courant, « Basique » est souvent utilisé, car il ne convertit que les caractères nécessaires. Utilisez « Tout » lorsque vous voulez examiner une chaîne sous forme de références de caractères HTML ou représenter chaque caractère explicitement comme une référence.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Références de caractères nommées</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Exemple</th></tr>
		<tr><td>HTML5</td><td>Utilise les références de caractères nommées définies par HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Utilise les références de caractères nommées définies par HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Utilise les cinq références <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> et <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Aucune</td><td>N'utilise pas de références nommées ; seules les références numériques sont utilisées.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notation des références numériques</caption>
		<tr><th scope="col">Option</th><th scope="col">Description</th><th scope="col">Exemple</th></tr>
		<tr><td>Décimal</td><td>Utilise des références numériques décimales.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hexadécimal minuscule</td><td>Utilise des références numériques hexadécimales en minuscules.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hexadécimal majuscule</td><td>Utilise des références numériques hexadécimales en majuscules.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
