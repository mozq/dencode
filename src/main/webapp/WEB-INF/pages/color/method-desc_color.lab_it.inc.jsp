<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore Lab</h3>
<p>Il colore Lab è uno spazio colore che rappresenta i colori con luminosità, un asse dal verde al rosso e un asse dal blu al giallo. A differenza di RGB, che specifica direttamente le componenti rosso, verde e blu di uno schermo, Lab separa luminosità e colore in modo più vicino alla visione umana.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosità</td><td>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Rappresenta la direzione dal verde al rosso. I valori negativi tendono al verde e quelli positivi al rosso.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Rappresenta la direzione dal blu al giallo. I valori negativi tendono al blu e quelli positivi al giallo.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Lab notazione</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Gestione di luminosità, a e b</h4>
<p>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco I valori sotto 0% sono trattati come 0% e quelli sopra 100% sono limitati a 100%.</p>

<p><code>a</code> e <code>b</code> sono indicati come numeri positivi o negativi. I valori non vengono limitati a un intervallo fisso e sono trattati come componenti specificate.</p>

<h4>Differenza tra Lab e LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> usa la stessa idea percettiva di Lab, ma esprime il colore con croma e tonalità.</p>
