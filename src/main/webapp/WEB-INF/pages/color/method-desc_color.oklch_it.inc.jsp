<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore Oklch</h3>
<p>Il colore Oklch è uno spazio colore percettivo che rappresenta i colori con luminosità, croma e tonalità. Usa la stessa idea di Oklab, ma esprime il colore con croma e angolo, rendendo più semplice regolare separatamente intensità e tonalità.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosità</td><td>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Rappresenta l’intensità del colore. 0 è acromatico e valori maggiori producono colori più vividi.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Tonalità</td><td>Rappresenta la tonalità come un angolo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Oklch notazione</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Gestione di luminosità, croma e tonalità</h4>
<p>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco I valori sotto 0% sono trattati come 0% e quelli sopra 100% sono limitati a 100%.</p>

<p>Rappresenta l’intensità del colore. 0 è acromatico e valori maggiori producono colori più vividi. Un croma negativo è trattato come 0. Quando il croma è 0, il colore diventa acromatico e la tonalità è trattata come 0deg.</p>

<p>La tonalità è trattata come un angolo. <code>oklch(62.8% 0.2577 389.23deg)</code> è trattato come lo stesso colore di <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Differenza tra Oklch e Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> rappresenta i colori con le coordinate rettangolari <code>a</code> e <code>b</code>. Oklch converte quel colore in croma e tonalità.</p>

<h4>Differenza tra Oklch e LCH</h4>
<p>Oklch è progettato per produrre cambiamenti visivi più uniformi rispetto a <a href="${dc:h(basePath)}/color/lch">LCH</a> quando cambiano tonalità o croma.</p>
