<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de la suppression de doublons</h3>
<p>La suppression de doublons retire les lignes répétées d'un texte multiligne. Lorsqu'une même ligne apparaît plusieurs fois, seule sa première occurrence est conservée ; les suivantes sont supprimées.</p>
<p>Les lignes restantes gardent leur ordre d'origine. Aucun tri n'est effectué.</p>

<p>Par exemple, si l'on supprime les lignes en double du texte suivant :</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>Le résultat est le suivant :</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ligne d'entrée</th><th scope="col">Résultat</th><th scope="col">Description</th></tr>
		<tr><td><code>apple</code> (1re fois)</td><td>Conservée</td><td>C'est la première occurrence de la ligne.</td></tr>
		<tr><td><code>banana</code> (1re fois)</td><td>Conservée</td><td>C'est la première occurrence de la ligne.</td></tr>
		<tr><td><code>apple</code> (2e fois)</td><td>Supprimée</td><td>La même ligne est déjà apparue.</td></tr>
		<tr><td><code>orange</code> (1re fois)</td><td>Conservée</td><td>C'est la première occurrence de la ligne.</td></tr>
		<tr><td><code>banana</code> (2e fois)</td><td>Supprimée</td><td>La même ligne est déjà apparue.</td></tr>
	</table>
</div>

<p>La détection des doublons compare la ligne entière. Les différences de casse, les espaces au début ou à la fin, ainsi que les caractères pleine largeur ou demi-largeur sont considérés comme du texte différent.</p>
