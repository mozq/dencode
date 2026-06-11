<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de SHA-256</h3>
<p>SHA-256 est une fonction de hachage cryptographique qui génère une valeur de hachage de 256 bits à partir de données de longueur quelconque. Elle fait partie de la famille SHA-2 et sert notamment à détecter les modifications de fichiers, vérifier l’intégrité des données, créer des signatures numériques, des certificats et des chaînes de blocs.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur de hachage SHA-256 est affichée sur 64 chiffres hexadécimaux.</p>

<p>Par exemple, la valeur de hachage SHA-256 de « Hello, world! » est la suivante.</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>Caractéristiques du hachage</h4>
<p>SHA-256 génère toujours la même valeur de hachage pour la même entrée. Si l’entrée change même légèrement, la valeur de hachage produite change fortement.</p>
<p>Une fonction de hachage est une fonction à sens unique : il n’est donc pas possible de retrouver les données d’entrée d’origine à partir de la valeur de hachage.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Hachage SHA-256</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
