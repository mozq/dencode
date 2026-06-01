<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur Oklch</h3>
<p>La couleur Oklch est un espace colorimétrique perceptuel qui représente les couleurs avec la luminosité, le chroma et la teinte. Elle reprend l’idée d’Oklab, mais exprime la couleur avec un chroma et un angle, ce qui facilite l’ajustement séparé de l’intensité et de la teinte.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosité</td><td>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc.</td><td><code>60%</code></td></tr>
			<tr><td>C: Chroma</td><td>Représente l’intensité de la couleur. 0 est achromatique et les valeurs plus grandes donnent des couleurs plus vives.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Teinte</td><td>Représente la teinte sous forme d’angle.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation Oklch</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Traitement de la luminosité, du chroma et de la teinte</h4>
<p>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc Les valeurs sous 0% sont traitées comme 0%, et celles au-dessus de 100% sont limitées à 100%.</p>

<p>Représente l’intensité de la couleur. 0 est achromatique et les valeurs plus grandes donnent des couleurs plus vives. Un chroma négatif est traité comme 0. Si le chroma vaut 0, la couleur devient achromatique et la teinte est traitée comme 0deg.</p>

<p>La teinte est traitée comme un angle. <code>oklch(62.8% 0.2577 389.23deg)</code> est traité comme la même couleur que <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Différence entre Oklch et Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> représente les couleurs avec les coordonnées rectangulaires <code>a</code> et <code>b</code>. Oklch convertit cette couleur en chroma et teinte.</p>

<h4>Différence entre Oklch et LCH</h4>
<p>Oklch est conçu pour produire des changements visuels plus uniformes que <a href="${dc:h(basePath)}/color/lch">LCH</a> lorsque la teinte ou le chroma varie.</p>
