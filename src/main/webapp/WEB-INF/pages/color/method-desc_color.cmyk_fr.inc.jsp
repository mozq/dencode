<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>À propos de la couleur CMYK</h3>
<p>La couleur CMYK est un modèle colorimétrique qui représente les couleurs avec quatre composantes : cyan, magenta, jaune et noir (key plate). Il est principalement utilisé en impression et en PAO, et repose sur la synthèse soustractive, où les couleurs sont produites par superposition d’encres.</p>

<p>En CMYK, chaque composante est exprimée dans la plage de 0% à 100%. En général, <code>C</code>, <code>M</code> et <code>Y</code> représentent la teinte, tandis que <code>K</code> représente la quantité de noir. Si toutes les composantes valent 0%, la couleur est blanche; si <code>K</code> vaut 100%, la couleur est proche du noir.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Cyan</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Jaune</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Blanc</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Noir</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Profils de couleur</h4>
<p>DenCode permet de choisir plusieurs profils de couleur. Les profils pris en charge sont indiqués ci-dessous.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Couleur CMYK</caption>
		<thead>
			<tr><th>Profil de couleur</th><th>Exemple de notation CMYK</th><th>Caractéristiques</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Conversion simple entre RGB et CMYK. Elle ne dépend pas de conditions d’impression ni de profils ICC particuliers.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Profil de couleur CMYK approximant U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Conversion CMYK utilisant le profil ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Conversion CMYK utilisant le profil ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Conversion CMYK utilisant le profil ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Profil de couleur CMYK approximant FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Profil de couleur CMYK approximant FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Les couleurs CMYK utilisant un « profil ICC » ou un « profil de couleur approximatif » sont représentées dans le format d’espace colorimétrique personnalisé CSS <code>color(--profile C% M% Y% K%)</code>. Pour les utiliser en CSS réel, indiquez le profil ICC correspondant avec <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Les profils de couleur approximatifs calculent des couleurs CMYK approximatives à partir de Characterization data publiées. Ainsi, même si un profil ICC similaire est utilisé avec <code>@color-profile</code> en CSS, la couleur affichée peut différer légèrement.</p>

<h4>Différence entre CMYK et RGB</h4>
<p>CMYK est un modèle colorimétrique soustractif pour les encres d’impression. À l’inverse, <a href="${dc:h(basePath)}/color/rgb">RGB</a> est un modèle additif pour la lumière, comme celle des écrans. Même pour des couleurs visuellement identiques, les valeurs des composantes CMYK et RGB peuvent être très différentes.</p>
