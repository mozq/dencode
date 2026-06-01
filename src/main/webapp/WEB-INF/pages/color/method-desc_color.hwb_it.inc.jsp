<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore HWB</h3>
<p>Il colore HWB è un modello di colore che rappresenta i colori con tre componenti: tonalità, bianchezza e nerezza. La tonalità specifica il tono di base, mentre bianchezza e nerezza indicano quanto bianco e nero vengono mescolati. Questo rende intuitivo schiarire, scurire o avvicinare un colore al grigio.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significato</th><th>Valore di esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Tonalità</td><td>Rappresenta il tono come un angolo. Il rosso è circa 0deg, il verde circa 120deg e il blu circa 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Bianchezza</td><td>Rappresenta la quantità di bianco mescolata nel colore. Valori maggiori rendono il colore più biancastro.</td><td><code>20%</code></td></tr>
			<tr><td>B: Nerezza</td><td>Rappresenta la quantità di nero mescolata nel colore. Valori maggiori rendono il colore più scuro.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Notazione HWB</th><th>Notazione RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lime</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Blu</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Bianco</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Nero</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Gestione di tonalità, bianchezza e nerezza</h4>
<p>La tonalità è trattata come un angolo; i valori superiori a 360deg o negativi sono normalizzati nell’intervallo da 0deg a 360deg. Ad esempio, <code>hwb(360deg 0% 0%)</code> è trattato come lo stesso colore di <code>hwb(0deg 0% 0%)</code>, e <code>hwb(-120deg 0% 0%)</code> come lo stesso colore di <code>hwb(240deg 0% 0%)</code>.</p>

<p>Bianchezza e nerezza sono trattate nell’intervallo da 0% a 100%. Una bianchezza maggiore avvicina il colore al bianco, mentre una nerezza maggiore lo avvicina al nero. Se la somma di bianchezza e nerezza è 100% o più, il colore è trattato come grigiastro indipendentemente dalla tonalità.</p>

<h4>Differenza tra HWB e HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> regola il colore con saturazione e luminosità, quindi è adatto a specificare vividezza e luminosità. HWB regola il colore tramite la quantità di bianco e nero mescolati, rendendo semplici da descrivere operazioni come “renderlo più bianco mantenendo la stessa tonalità” o “aggiungere nero per scurirlo”.</p>

<p>Tuttavia, anche HWB non è uno spazio colore percettivamente uniforme. Quando si vuole gestire più facilmente la luminosità visiva o le differenze di colore, si possono usare spazi colore come <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> e <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
