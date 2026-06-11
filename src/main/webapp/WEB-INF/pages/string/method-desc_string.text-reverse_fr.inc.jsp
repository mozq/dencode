<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du texte inversé</h3>
<p>L'inversion de texte inverse les caractères de la chaîne saisie. Toute la chaîne est relue du dernier caractère jusqu'au premier.</p>

<p>Par exemple, inverser "Hello, world!" donne :</p>

<pre>!dlrow ,olleH</pre>

<p>Dans un texte multiligne, les sauts de ligne font aussi partie de la chaîne. L'ensemble du contenu est donc inversé, y compris l'ordre des lignes.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrée</th><th scope="col">Après inversion</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Cette conversion ne réorganise pas les mots en conservant le sens d'une phrase. Elle inverse simplement l'ordre des caractères saisis.</p>
