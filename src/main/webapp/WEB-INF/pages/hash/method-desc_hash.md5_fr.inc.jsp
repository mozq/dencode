<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de MD5</h3>
<p>MD5 est une fonction de hachage qui génère une valeur de hachage de 128 bits à partir de données de longueur quelconque. Elle a été largement utilisée, mais ses faiblesses de résistance aux collisions font qu’elle n’est plus recommandée pour les usages cryptographiques actuels.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage MD5 est affichée sur 32 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage MD5 de « Hello, world! » est la suivante.</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>Caractéristiques du hachage</h4>
<p>MD5 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage MD5</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 peut apparaître lors de la comparaison d’anciennes sommes de contrôle, mais pour les usages qui exigent de la sécurité, comme la détection de modification ou les signatures, envisagez <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> ou une fonction de hachage plus récente.</p>
