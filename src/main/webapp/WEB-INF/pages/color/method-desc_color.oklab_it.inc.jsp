<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore Oklab</h3>
<p>Il colore Oklab è uno spazio colore percettivo che rappresenta i colori con luminosità e due componenti cromatiche. Come Lab, separa luminosità e colore, ma come modello più recente è progettato affinché i cambiamenti di colore siano più vicini alla percezione visiva.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosità</td><td>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Rappresenta la direzione dal verde al rosso. I valori negativi tendono al verde e quelli positivi al rosso.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Rappresenta la direzione dal blu al giallo. I valori negativi tendono al blu e quelli positivi al giallo.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Oklab notazione</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Gestione di luminosità, a e b</h4>
<p>Rappresenta la luminosità del colore. 0% è nero e 100% è bianco I valori sotto 0% sono trattati come 0% e quelli sopra 100% sono limitati a 100%.</p>

<p><code>a</code> e <code>b</code> sono indicati come numeri positivi o negativi. I valori non vengono limitati a un intervallo fisso e sono trattati come componenti specificate.</p>

<h4>Differenza tra Oklab e Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> usa la stessa idea percettiva di Oklab, ma esprime il colore con croma e tonalità.</p>

<h4>Differenza tra Oklab e Lab</h4>
<p>Oklab è progettato per produrre cambiamenti visivi più uniformi rispetto a <a href="${dc:h(basePath)}/color/lab">Lab</a> quando cambiano tonalità o croma.</p>
