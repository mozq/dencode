<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore LCH</h3>
<p>Il colore LCH è uno spazio colore che rappresenta i colori con luminosità, croma e tonalità. Usa la stessa idea percettiva di Lab, ma esprime il colore con croma e angolo, rendendo più semplice regolare separatamente intensità e tonalità.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosità</td><td>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Rappresenta l’intensità del colore. 0 è acromatico e valori maggiori producono colori più vividi.</td><td><code>80</code></td></tr>
			<tr><td>H: Tonalità</td><td>Rappresenta la tonalità come un angolo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>LCH notazione</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Gestione di luminosità, croma e tonalità</h4>
<p>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco I valori sotto 0% sono trattati come 0% e quelli sopra 100% sono limitati a 100%.</p>

<p>Rappresenta l’intensità del colore. 0 è acromatico e valori maggiori producono colori più vividi. Un croma negativo è trattato come 0. Quando il croma è 0, il colore diventa acromatico e la tonalità è trattata come 0deg.</p>

<p>La tonalità è trattata come un angolo. <code>lch(54.29% 106.8372 400.86deg)</code> è trattato come lo stesso colore di <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Differenza tra LCH e Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> rappresenta i colori con le coordinate rettangolari <code>a</code> e <code>b</code>. LCH esprime il colore con croma e tonalità, rendendo più intuitiva la regolazione a luminosità costante.</p>
