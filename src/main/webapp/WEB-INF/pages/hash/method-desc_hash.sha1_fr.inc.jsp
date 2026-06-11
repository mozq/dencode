<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de SHA-1</h3>
<p>SHA-1 est une fonction de hachage cryptographique qui génère une valeur de hachage de 160 bits à partir de données de longueur quelconque. Elle a été largement utilisée par le passé, mais ses faiblesses de résistance aux collisions font qu’elle n’est plus recommandée pour les nouveaux usages cryptographiques.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage SHA-1 est affichée sur 40 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage SHA-1 de « Hello, world! » est la suivante.</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>Caractéristiques du hachage</h4>
<p>SHA-1 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage SHA-1</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>Il peut être utilisé pour la compatibilité avec des systèmes existants, mais pour de nouveaux usages, envisagez <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> ou une fonction de hachage plus forte.</p>
