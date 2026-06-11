<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de SHA-512</h3>
<p>SHA-512 est une fonction de hachage cryptographique qui génère une valeur de hachage de 512 bits à partir de données de longueur quelconque. Elle fait partie de la famille SHA-2 et produit une valeur de hachage plus longue que <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage SHA-512 est affichée sur 128 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage SHA-512 de « Hello, world! » est la suivante.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Caractéristiques du hachage</h4>
<p>SHA-512 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
