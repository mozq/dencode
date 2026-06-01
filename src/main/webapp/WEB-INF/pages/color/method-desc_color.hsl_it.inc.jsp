<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore HSL</h3>
<p>Il colore HSL è un modello colore che rappresenta i colori con tonalità, saturazione e luminosità. A differenza di RGB, che specifica direttamente l’intensità della luce rossa, verde e blu, HSL separa tonalità, vividezza e luminosità, risultando utile per regolare i colori e lavorare con CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Tonalità</td><td>Rappresenta la tonalità come un angolo. Il rosso è vicino a 0deg, il verde a 120deg e il blu a 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturazione</td><td>Rappresenta la vividezza del colore. 0% è acromatico e 100% è il colore più vivido.</td><td><code>50%</code></td></tr>
			<tr><td>L: Luminosità</td><td>Rappresenta la luminosità del colore. 0% è nero, 50% è una luminosità normale e 100% è bianco.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Notazione HSL</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Come input si può usare la notazione separata da spazi <code>hsl(0deg 100% 50%)</code> e anche la notazione tradizionale separata da virgole <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Gestione di tonalità, saturazione e luminosità</h4>
<p>La tonalità è trattata come un angolo; i valori superiori a 360deg o negativi sono normalizzati nell’intervallo da 0deg a 360deg. Ad esempio, <code>hsl(360deg 100% 50%)</code> è trattato come lo stesso colore di <code>hsl(0deg 100% 50%)</code>, e <code>hsl(-120deg 100% 50%)</code> come lo stesso colore di <code>hsl(240deg 100% 50%)</code>.</p>

<p>Saturazione e luminosità sono trattate nell’intervallo da 0% a 100%. Quando la saturazione è 0%, il colore diventa un grigio acromatico indipendentemente dalla tonalità. Quando la luminosità è 0%, il colore è nero; quando è 100%, è bianco.</p>

<h4>Differenza tra HSL e RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> specifica direttamente le componenti rosso, verde e blu, quindi è vicino alla visualizzazione su schermo e ai dati immagine. HSL separa tonalità, saturazione e luminosità, rendendo più semplici operazioni come “schiarire mantenendo la stessa tonalità” o “ridurre solo la saturazione”.</p>

<p>Tuttavia, HSL non è uno spazio colore percettivamente uniforme. Quando si vuole gestire meglio la luminosità visiva o le differenze di colore, si possono usare spazi colore come <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> e <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
