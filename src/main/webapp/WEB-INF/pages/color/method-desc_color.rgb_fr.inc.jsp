<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos de la couleur RGB</h3>
<p>La couleur RGB est un modèle qui représente les couleurs en combinant les composantes lumineuses rouge, vert et bleu. Elle est largement utilisée pour les écrans, les pages web et les données d’image.</p>

<p>En RGB, l’intensité de chaque composante est indiquée par une valeur numérique, généralement un entier de 0 à 255 ou un pourcentage de 0% à 100%. Si toutes les composantes valent 0, la couleur est noire; si toutes sont au maximum, elle est blanche.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Couleur</th><th>Notation RGB</th><th>Notation hexadécimale</th></tr>
		</thead>
		<tbody>
			<tr><td>Rouge</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Vert</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Bleu</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Blanc</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Noir</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Les couleurs RGB peuvent s’écrire sous forme de fonction ou en hexadécimal. Le rouge peut par exemple être représenté par <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> ou <code>#f00</code>.</p>

<p>Pour inclure la transparence, ajoutez une valeur alpha. Par exemple, un rouge semi-transparent peut être représenté par <code>rgb(255 0 0 / 50%)</code> ou <code>#ff000080</code>.</p>

<p>La conversion RGB de DenCode prend en charge les options de notation suivantes.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Couleur RGB (hexadécimal)</caption>
		<thead>
			<tr><th>Option de notation</th><th>Format</th><th>Exemple</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Couleur RGB</caption>
		<thead>
			<tr><th>Option de notation</th><th>Format</th><th>Exemple</th></tr>
		</thead>
		<tbody>
			<tr><td>Nombre</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Pourcentage</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> n’est pas une notation hexadécimale CSS standard, mais un format ARGB parfois utilisé dans des programmes ou paramètres. Le <code>AA</code> initial représente l’alpha, puis <code>RR</code>, <code>GG</code> et <code>BB</code> représentent le rouge, le vert et le bleu.</p>

<h4>sRGB et autres espaces colorimétriques RGB</h4>
<p>RGB représente les couleurs avec rouge, vert et bleu. Cependant, même avec les mêmes valeurs RGB, la couleur réelle dépend de l’espace colorimétrique utilisé. Les valeurs web courantes <code>rgb()</code> et <code>#RRGGBB</code> sont normalement traitées comme sRGB.</p>

<p>CSS Color Module Level 4 définit aussi des espaces RGB dont la gamme diffère de sRGB, comme Display P3 et ProPhoto RGB. DenCode prend également en charge leur conversion.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Espace colorimétrique</th><th>Format</th><th>Exemple</th><th>Caractéristiques</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>L’espace RGB courant pour le web et CSS. Les codes hexadécimaux et <code>rgb()</code> ordinaires sont traités comme sRGB. <code>color(srgb ...)</code> est un format de CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Utilise la même gamme que sRGB, mais avec des composantes linéarisées. Il sert aux calculs et compositions de couleurs.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Espace à gamme plus large que sRGB, utilisé sur les écrans wide gamut et certains appareils mobiles.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Plus large que sRGB, parfois utilisé en retouche photo et dans les flux orientés impression.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Espace RGB encore plus large qu’Adobe RGB, utilisé comme espace de travail en retouche photo.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Espace RGB à très large gamme, utilisé dans les normes UHDTV et HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Les couleurs d’espaces RGB à large gamme peuvent ne pas être représentées précisément sur des écrans sRGB ou avec des codes hexadécimaux ordinaires. Lors d’une conversion vers <code>#RRGGBB</code> ou <code>rgb(R G B)</code>, DenCode traite les composantes hors sRGB pour les faire tenir entre <code>0</code> et <code>255</code>. Avec <code>color(display-p3 ...)</code> ou <code>color(a98-rgb ...)</code>, elles peuvent être affichées comme valeurs de l’espace choisi.</p>
