<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de CRC32</h3>
<p>CRC32 est une méthode de détection d’erreurs qui génère une valeur de contrôle de 32 bits à partir de données de longueur quelconque. Elle est utilisée dans les transferts de fichiers, les formats compressés et des contextes similaires pour vérifier que les données ne sont pas corrompues.</p>
<p>Dans DenCode, le texte saisi est traité comme une suite d’octets dans l’encodage de caractères sélectionné, et la valeur CRC32 est affichée en hexadécimal.</p>

<p>Par exemple, le CRC32 de « Hello, world! » est le suivant.</p>

<pre>ebe6c6e6</pre>

<h4>Caractéristiques de CRC32</h4>
<p>CRC32 convient à la détection de corruptions accidentelles des données. En revanche, comme ce n’est pas une fonction de hachage cryptographique, il ne convient pas aux usages qui exigent une protection contre les modifications.</p>
<p>CRC32 génère toujours la même valeur pour la même entrée. Lorsque l’entrée change, la valeur produite change également. Toutefois, il n’est pas possible de retrouver les données d’entrée d’origine à partir de la valeur CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
