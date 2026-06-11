<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du tri de lignes</h3>
<p>Le tri de lignes réorganise un texte multiligne ligne par ligne. Il permet de classer les lignes par ordre croissant, par ordre décroissant ou simplement d'inverser leur ordre actuel.</p>
<p>Pour les ordres croissant et décroissant, chaque ligne entière est comparée comme une chaîne Unicode. En mode inverse, le contenu des lignes n'est pas modifié ; seul leur ordre de haut en bas est inversé.</p>

<p>Par exemple, si le texte suivant est trié par ordre croissant :</p>

<pre>
banana
apple
orange
</pre>

<p>Le résultat est le suivant :</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ordre</th><th scope="col">Description</th><th scope="col">Exemple de conversion</th></tr>
		<tr><td>Croissant</td><td>Trie les lignes de la plus petite à la plus grande valeur de chaîne Unicode.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Décroissant</td><td>Trie les lignes de la plus grande à la plus petite valeur de chaîne Unicode.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Inverse</td><td>Inverse l'ordre des lignes saisies.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Les majuscules, les minuscules, les chiffres, les symboles et les caractères non latins sont comparés comme des caractères Unicode. Le tri repose donc sur une comparaison de chaînes, et non sur l'ordre alphabétique d'une langue naturelle ni sur la valeur numérique.</p>
