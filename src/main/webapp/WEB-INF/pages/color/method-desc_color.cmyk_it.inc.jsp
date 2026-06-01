<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Informazioni sul colore CMYK</h3>
<p>Il colore CMYK è un modello di colore che rappresenta i colori con quattro componenti: ciano, magenta, giallo e nero (key plate). È usato principalmente nella stampa e nel desktop publishing, e si basa sulla sintesi sottrattiva, in cui i colori sono prodotti sovrapponendo inchiostri.</p>

<p>In CMYK, ogni componente è espressa nell’intervallo da 0% a 100%. In generale, <code>C</code>, <code>M</code> e <code>Y</code> rappresentano il tono del colore, mentre <code>K</code> rappresenta la quantità di nero. Se tutte le componenti sono 0%, il colore è bianco; se <code>K</code> è 100%, il colore è vicino al nero.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Notazione CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Ciano</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Giallo</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Bianco</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Nero</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Profili colore</h4>
<p>DenCode consente di scegliere diversi profili colore. I profili supportati sono elencati di seguito.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Colore CMYK</caption>
		<thead>
			<tr><th>Profilo colore</th><th>Esempio di notazione CMYK</th><th>Caratteristiche</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Conversione semplice tra RGB e CMYK. Non dipende da condizioni di stampa o profili ICC specifici.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Profilo colore CMYK che approssima U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Conversione CMYK che utilizza il profilo ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Conversione CMYK che utilizza il profilo ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Conversione CMYK che utilizza il profilo ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Profilo colore CMYK che approssima FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Profilo colore CMYK che approssima FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>I colori CMYK con un “profilo ICC” o un “profilo colore approssimato” sono rappresentati nel formato CSS per spazi colore personalizzati <code>color(--profile C% M% Y% K%)</code>. Per usarli nel CSS reale, specificare il profilo ICC corrispondente con <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>I profili colore approssimati calcolano colori CMYK approssimati in base a Characterization data pubblicati. Di conseguenza, anche usando un profilo ICC simile con <code>@color-profile</code> in CSS, il colore visualizzato può differire leggermente.</p>

<h4>Differenza tra CMYK e RGB</h4>
<p>CMYK è un modello di colore sottrattivo per gli inchiostri di stampa. Al contrario, <a href="${dc:h(basePath)}/color/rgb">RGB</a> è un modello additivo per la luce, come quella dei display. Anche per colori che appaiono uguali, i valori delle componenti CMYK e RGB possono differire molto.</p>
