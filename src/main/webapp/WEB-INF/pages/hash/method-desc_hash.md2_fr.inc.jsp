<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de MD2</h3>
<p>MD2 est une fonction de hachage qui génère une valeur de hachage de 128 bits à partir de données de longueur quelconque. C’est un ancien algorithme, qui n’est pas recommandé pour les usages cryptographiques actuels.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage MD2 est affichée sur 32 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage MD2 de « Hello, world! » est la suivante.</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>Caractéristiques du hachage</h4>
<p>MD2 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage MD2</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 peut être utilisé pour des vérifications de compatibilité, mais pour de nouveaux usages, envisagez une fonction de hachage plus récente comme <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
