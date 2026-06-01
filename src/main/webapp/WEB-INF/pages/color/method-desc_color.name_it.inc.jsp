<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sui nomi dei colori</h3>
<p>I nomi dei colori sono un modo per rappresentare i colori usando i colori con nome definiti in CSS. Poiché i colori possono essere indicati con parole chiave come <code>red</code>, <code>blue</code> e <code>orange</code>, i colori comuni in HTML e CSS possono essere scritti in modo leggibile.</p>

<p>Ad esempio, i colori principali come il rosso possono essere rappresentati così.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Nome colore</th><th>Notazione RGB</th><th>Notazione esadecimale</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lime</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Blu</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Bianco</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Nero</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Arancione</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Trasparente</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> è un nome colore speciale che rappresenta il nero trasparente.</p>

<p>I nomi dei colori, ad eccezione di <code>transparent</code>, non contengono informazioni sulla trasparenza. In DenCode, quando un colore con trasparenza può essere rappresentato come colore con nome, viene mostrato con la sintassi di colore relativa CSS. Ad esempio, <code>red</code> semitrasparente è rappresentato come <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Differenza tra nomi dei colori e RGB</h4>
<p>I nomi dei colori rappresentano colori comuni con parole chiave leggibili. Al contrario, <a href="${dc:h(basePath)}/color/rgb">RGB</a> specifica i valori delle componenti rosso, verde e blu e può rappresentare numericamente molti più colori. I nomi dei colori sono spesso usati quando è importante la leggibilità in CSS o HTML, mentre la notazione RGB è usata per specifiche dettagliate o conversioni di colore.</p>
