<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur Lab</h3>
<p>La couleur Lab est un espace colorimétrique qui représente les couleurs avec la luminosité, un axe du vert vers le rouge et un axe du bleu vers le jaune. Contrairement à RGB, qui indique directement les composantes rouge, verte et bleue d’un écran, Lab sépare la luminosité et la couleur d’une manière plus proche de la vision humaine.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosité</td><td>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Représente la direction du vert vers le rouge. Les valeurs négatives tirent vers le vert et les positives vers le rouge.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Représente la direction du bleu vers le jaune. Les valeurs négatives tirent vers le bleu et les positives vers le jaune.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation Lab</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Traitement de la luminosité, de a et de b</h4>
<p>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc Les valeurs sous 0% sont traitées comme 0%, et celles au-dessus de 100% sont limitées à 100%.</p>

<p><code>a</code> et <code>b</code> sont indiqués par des nombres positifs ou négatifs. Leurs valeurs ne sont pas limitées à une plage fixe et sont traitées comme les composantes spécifiées.</p>

<h4>Différence entre Lab et LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> utilise la même approche perceptuelle que Lab, mais exprime la couleur avec le chroma et la teinte.</p>
