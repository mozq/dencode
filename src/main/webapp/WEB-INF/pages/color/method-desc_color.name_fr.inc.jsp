<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos des noms de couleur</h3>
<p>Les noms de couleur permettent de représenter des couleurs avec les couleurs nommées définies en CSS. Comme elles peuvent être indiquées avec des mots-clés tels que <code>red</code>, <code>blue</code> et <code>orange</code>, les couleurs courantes en HTML et CSS peuvent être écrites de façon lisible.</p>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Nom de couleur</th><th>Notation RGB</th><th>Notation hexadécimale</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Bleu</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Blanc</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Noir</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Orange</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparent</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> est un nom de couleur spécial qui représente un noir transparent.</p>

<p>Les noms de couleur, à l’exception de <code>transparent</code>, ne contiennent pas d’information de transparence. Dans DenCode, lorsqu’une couleur avec transparence peut être représentée comme une couleur nommée, elle est affichée avec la syntaxe de couleur relative CSS. Par exemple, un <code>red</code> semi-transparent est représenté par <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Différence entre les noms de couleur et RGB</h4>
<p>Les noms de couleur représentent des couleurs courantes avec des mots-clés lisibles. À l’inverse, <a href="${dc:h(basePath)}/color/rgb">RGB</a> indique les valeurs des composantes rouge, verte et bleue, et peut représenter beaucoup plus de couleurs numériquement. Les noms de couleur sont souvent utilisés lorsque la lisibilité en CSS ou HTML est prioritaire; la notation RGB est souvent utilisée pour des indications précises ou des conversions de couleur.</p>
