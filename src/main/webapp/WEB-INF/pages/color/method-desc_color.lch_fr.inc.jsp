<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur LCH</h3>
<p>La couleur LCH est un espace colorimétrique qui représente les couleurs avec la luminosité, le chroma et la teinte. Elle reprend l’idée perceptuelle de Lab, mais exprime la couleur avec un chroma et un angle, ce qui facilite l’ajustement séparé de l’intensité et de la teinte.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosité</td><td>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Représente l’intensité de la couleur. 0 est achromatique et les valeurs plus grandes donnent des couleurs plus vives.</td><td><code>80</code></td></tr>
			<tr><td>H: Teinte</td><td>Représente la teinte sous forme d’angle.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation LCH</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Traitement de la luminosité, du chroma et de la teinte</h4>
<p>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc Les valeurs sous 0% sont traitées comme 0%, et celles au-dessus de 100% sont limitées à 100%.</p>

<p>Représente l’intensité de la couleur. 0 est achromatique et les valeurs plus grandes donnent des couleurs plus vives. Un chroma négatif est traité comme 0. Si le chroma vaut 0, la couleur devient achromatique et la teinte est traitée comme 0deg.</p>

<p>La teinte est traitée comme un angle. <code>lch(54.29% 106.8372 400.86deg)</code> est traité comme la même couleur que <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Différence entre LCH et Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> représente les couleurs avec les coordonnées rectangulaires <code>a</code> et <code>b</code>. LCH exprime la couleur avec le chroma et la teinte, ce qui peut rendre les ajustements plus intuitifs à luminosité constante.</p>
