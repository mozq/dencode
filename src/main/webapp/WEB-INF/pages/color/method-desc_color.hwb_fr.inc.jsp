<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur HWB</h3>
<p>La couleur HWB est un modèle colorimétrique qui représente les couleurs avec trois composantes : la teinte, la blancheur et la noirceur. La teinte indique la couleur de base, tandis que la blancheur et la noirceur indiquent la quantité de blanc et de noir mélangée. Cette notation rend intuitifs l’éclaircissement, l’assombrissement ou le rapprochement d’une couleur vers le gris.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Composant</th><th>Signification</th><th>Exemple de valeur</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Teinte</td><td>Représente la teinte sous forme d’angle. Le rouge est proche de 0deg, le vert de 120deg et le bleu de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Blancheur</td><td>Représente la quantité de blanc mélangée à la couleur. Plus la valeur est grande, plus la couleur devient blanchâtre.</td><td><code>20%</code></td></tr>
			<tr><td>B: Noirceur</td><td>Représente la quantité de noir mélangée à la couleur. Plus la valeur est grande, plus la couleur devient sombre.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Par exemple, les couleurs principales comme le rouge peuvent être représentées ainsi.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation HWB</th><th>Notation RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Vert</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Bleu</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Blanc</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Noir</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Traitement de la teinte, de la blancheur et de la noirceur</h4>
<p>La teinte est traitée comme un angle; les valeurs supérieures à 360deg ou négatives sont normalisées dans la plage de 0deg à 360deg. Par exemple, <code>hwb(360deg 0% 0%)</code> est traité comme la même couleur que <code>hwb(0deg 0% 0%)</code>, et <code>hwb(-120deg 0% 0%)</code> comme la même couleur que <code>hwb(240deg 0% 0%)</code>.</p>

<p>La blancheur et la noirceur sont traitées dans la plage de 0% à 100%. Une blancheur plus élevée rapproche la couleur du blanc, et une noirceur plus élevée la rapproche du noir. Si la somme de la blancheur et de la noirceur est de 100% ou plus, la couleur est traitée comme une couleur grisâtre quelle que soit la teinte.</p>

<h4>Différence entre HWB et HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> ajuste la couleur avec la saturation et la luminosité; il convient donc pour indiquer la vivacité et la luminosité. HWB ajuste la couleur avec la quantité de blanc et de noir mélangée, ce qui facilite la description d’opérations comme « rendre plus blanc en gardant la même teinte » ou « ajouter du noir pour assombrir ».</p>

<p>Cependant, HWB n’est pas non plus un espace colorimétrique perceptuellement uniforme. Pour mieux gérer la luminosité visuelle ou les différences de couleur, on peut utiliser des espaces colorimétriques comme <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> ou <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
