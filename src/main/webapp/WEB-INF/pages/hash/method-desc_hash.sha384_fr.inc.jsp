<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de SHA-384</h3>
<p>SHA-384 est une fonction de hachage cryptographique qui génère une valeur de hachage de 384 bits à partir de données de longueur quelconque. Elle fait partie de la famille SHA-2 et produit une valeur de hachage plus longue que <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage SHA-384 est affichée sur 96 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage SHA-384 de « Hello, world! » est la suivante.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Caractéristiques du hachage</h4>
<p>SHA-384 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
