<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul colore RGB</h3>
<p>Il colore RGB è un modello di colore che rappresenta i colori combinando tre componenti di luce: rosso, verde e blu. È ampiamente usato per i colori gestiti su schermo, come display, pagine web e dati immagine.</p>

<p>In RGB, l’intensità di ogni componente è specificata con un valore numerico. Di solito è rappresentata come intero da 0 a 255 o come percentuale da 0% a 100%. Se tutte le componenti sono 0, il colore è nero; se tutte sono al massimo, il colore è bianco.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Colore</th><th>Notazione RGB</th><th>Notazione esadecimale</th></tr>
		</thead>
		<tbody>
			<tr><td>Rosso</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Verde</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Blu</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Bianco</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Nero</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>I colori RGB possono essere scritti in forma di funzione o in forma esadecimale. Per esempio, il rosso può essere rappresentato come <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> o <code>#f00</code>.</p>

<p>Per includere la trasparenza, aggiungere un valore alfa. Ad esempio, il rosso semitrasparente può essere rappresentato come <code>rgb(255 0 0 / 50%)</code> o <code>#ff000080</code>.</p>

<p>La conversione del colore RGB di DenCode supporta le seguenti opzioni di notazione.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Colore RGB (esadecimale)</caption>
		<thead>
			<tr><th>Opzione di notazione</th><th>Formato</th><th>Esempio</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Colore RGB</caption>
		<thead>
			<tr><th>Opzione di notazione</th><th>Formato</th><th>Esempio</th></tr>
		</thead>
		<tbody>
			<tr><td>Numero</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Percentuale</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> non è una notazione colore esadecimale CSS standard, ma è un formato ARGB talvolta usato in programmi e impostazioni applicative. <code>AA</code> iniziale rappresenta l’alfa, seguito da <code>RR</code>, <code>GG</code> e <code>BB</code> per rosso, verde e blu.</p>

<h4>sRGB e altri spazi colore RGB</h4>
<p>RGB è un modello di colore che rappresenta i colori con tre componenti: rosso, verde e blu. Tuttavia, anche con gli stessi valori RGB, il colore reale cambia in base allo spazio colore usato per interpretarli. I comuni <code>rgb()</code> e <code>#RRGGBB</code> del web sono normalmente trattati come colori nello spazio sRGB.</p>

<p>CSS Color Module Level 4 definisce anche spazi colore RGB con gamme diverse da sRGB, come Display P3 e ProPhoto RGB. DenCode supporta anche la conversione di questi spazi colore.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Spazio colore</th><th>Formato</th><th>Esempio</th><th>Caratteristiche</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Lo spazio colore RGB comune per web e CSS. I codici esadecimali e i normali <code>rgb()</code> sono sostanzialmente trattati come sRGB. <code>color(srgb ...)</code> è un formato CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Uno spazio colore che usa la stessa gamma di sRGB, ma rappresenta i valori con componenti linearizzate. È usato per calcoli e composizioni di colore.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Uno spazio colore con gamma più ampia di sRGB, usato su display wide gamut e alcuni dispositivi mobili.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Uno spazio colore più ampio di sRGB, talvolta usato nella modifica fotografica e nei flussi orientati alla stampa.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Uno spazio RGB con gamma ancora più ampia di Adobe RGB, usato come spazio di lavoro nella modifica fotografica.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Uno spazio RGB con gamma molto ampia, usato negli standard video UHDTV e HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>I colori specificati in spazi RGB a gamma ampia potrebbero non essere rappresentati accuratamente su schermi sRGB o con normali codici esadecimali. Quando DenCode converte in <code>#RRGGBB</code> o in <code>rgb(R G B)</code> numerico, le componenti fuori dall’intervallo rappresentabile in sRGB sono trattate per rientrare tra <code>0</code> e <code>255</code>. Scegliendo invece uno spazio come <code>color(display-p3 ...)</code> o <code>color(a98-rgb ...)</code>, il colore può essere visualizzato come valori dello spazio selezionato.</p>
