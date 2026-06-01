<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur HSL</h3>
<p>La couleur HSL est un modèle colorimétrique qui représente les couleurs avec la teinte, la saturation et la luminosité. Contrairement à RGB, qui indique directement l’intensité des lumières rouge, verte et bleue, HSL sépare la teinte, la vivacité et la luminosité, ce qui est utile pour ajuster les couleurs et travailler en CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Teinte</td><td>Représente la teinte sous forme d’angle. Le rouge est proche de 0deg, le vert de 120deg et le bleu de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturation</td><td>Représente la vivacité de la couleur. 0% est achromatique et 100% est la couleur la plus vive.</td><td><code>50%</code></td></tr>
			<tr><td>L: Luminosité</td><td>Représente la luminosité de la couleur. 0% correspond au noir, 50% à une luminosité normale et 100% au blanc.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation HSL</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>En entrée, vous pouvez utiliser la notation séparée par des espaces <code>hsl(0deg 100% 50%)</code>, ainsi que l’ancienne notation séparée par des virgules <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Traitement de la teinte, de la saturation et de la luminosité</h4>
<p>La teinte est traitée comme un angle; les valeurs supérieures à 360deg ou négatives sont normalisées dans la plage de 0deg à 360deg. Par exemple, <code>hsl(360deg 100% 50%)</code> est traité comme la même couleur que <code>hsl(0deg 100% 50%)</code>, et <code>hsl(-120deg 100% 50%)</code> comme la même couleur que <code>hsl(240deg 100% 50%)</code>.</p>

<p>La saturation et la luminosité sont traitées dans la plage de 0% à 100%. Si la saturation vaut 0%, la couleur devient un gris achromatique quelle que soit la teinte. Si la luminosité vaut 0%, la couleur est noire; si elle vaut 100%, elle est blanche.</p>

<h4>Différence entre HSL et RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> indique directement les composantes rouge, verte et bleue, ce qui le rapproche de l’affichage à l’écran et des données d’image. HSL sépare la teinte, la saturation et la luminosité, ce qui facilite des opérations comme « éclaircir en gardant la même teinte » ou « réduire seulement la saturation ».</p>

<p>Cependant, HSL n’est pas un espace colorimétrique perceptuellement uniforme. Pour mieux gérer la luminosité visuelle ou les différences de couleur, on peut utiliser des espaces colorimétriques comme <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> ou <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
