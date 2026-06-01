<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur Oklab</h3>
<p>La couleur Oklab est un espace colorimétrique perceptuel qui représente les couleurs avec la luminosité et deux composantes colorées. Comme Lab, elle sépare luminosité et couleur, mais ce modèle plus récent est conçu pour que les changements de couleur correspondent davantage à l’apparence visuelle.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosité</td><td>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Représente la direction du vert vers le rouge. Les valeurs négatives tirent vers le vert et les positives vers le rouge.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Représente la direction du bleu vers le jaune. Les valeurs négatives tirent vers le bleu et les positives vers le jaune.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation Oklab</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Traitement de la luminosité, de a et de b</h4>
<p>Représente la luminosité de la couleur. 0% correspond au noir et 100% au blanc Les valeurs sous 0% sont traitées comme 0%, et celles au-dessus de 100% sont limitées à 100%.</p>

<p><code>a</code> et <code>b</code> sont indiqués par des nombres positifs ou négatifs. Leurs valeurs ne sont pas limitées à une plage fixe et sont traitées comme les composantes spécifiées.</p>

<h4>Différence entre Oklab et Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> utilise la même approche perceptuelle qu’Oklab, mais exprime la couleur avec le chroma et la teinte.</p>

<h4>Différence entre Oklab et Lab</h4>
<p>Oklab est conçu pour produire des changements visuels plus uniformes que <a href="${dc:h(basePath)}/color/lab">Lab</a> lorsque la teinte ou le chroma varie.</p>
