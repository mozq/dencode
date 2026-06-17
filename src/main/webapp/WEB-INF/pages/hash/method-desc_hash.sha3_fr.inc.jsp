<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de SHA-3</h3>
<p>SHA-3 est une fonction de hachage cryptographique qui génère une valeur de hachage de longueur fixe à partir de données de longueur quelconque. SHA-3 comprend quatre fonctions selon la longueur de la valeur de hachage : SHA3-224, SHA3-256, SHA3-384 et SHA3-512.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage SHA-3 est affichée en hexadécimal.</p>

<p>Par exemple, la valeur de hachage SHA3-256 de « Hello, world! » est la suivante.</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>Caractéristiques du hachage</h4>
<p>SHA-3 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage SHA3-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>Différence avec SHA-2</h4>
<p>SHA-2 repose sur une construction Merkle-Damgård, de la même grande famille que MD5 et SHA-1. SHA-3 standardise Keccak et utilise à la place une construction en éponge. Ainsi, SHA-256 et SHA3-256 produisent tous deux une valeur de hachage de 256 bits, mais les valeurs obtenues sont différentes.</p>
