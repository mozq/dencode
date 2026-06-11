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

<h4>Échappement de base et échappement complet</h4>
<p>DenCode affiche deux résultats pour l’échappement HTML : « Basique » et « Complet ».</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Type</th><th scope="col">Description</th><th scope="col">Exemple pour « A &lt; あ »</th></tr>
		<tr><td>Échappement HTML (Basique)</td><td>Convertit les cinq caractères <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> et <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>Échappement HTML (Complet)</td><td>Utilise les références de caractères nommées lorsqu’elles existent, et des références numériques décimales pour les autres caractères.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Pour l’affichage HTML courant, on utilise généralement l’échappement de base, qui ne convertit que les caractères nécessaires. L’échappement complet est utile pour vérifier une chaîne sous forme de références de caractères HTML ou pour représenter explicitement chaque caractère.</p>

<h4>Déséchappement</h4>
<p>Le déséchappement HTML reconvertit les références de caractères HTML en caractères d’origine. DenCode peut décoder les références nommées comme <code>&amp;lt;</code> et <code>&amp;amp;</code>, les références numériques décimales comme <code>&amp;#12354;</code>, ainsi que les références numériques hexadécimales comme <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Référence de caractère HTML</th><th scope="col">Après déséchappement</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
