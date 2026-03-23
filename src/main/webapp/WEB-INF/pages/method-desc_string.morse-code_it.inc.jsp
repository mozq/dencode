<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul codice Morse</h3>
<p>
Il codice Morse è un sistema di codifica telegrafica che rappresenta lettere e simboli mediante combinazioni di segnali brevi (Dit) e segnali lunghi (Dah).
</p>

<p>
DenCode utilizza i seguenti simboli per rappresentare il codice Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nome</th><th>Simbolo</th></tr>
		<tr><td>Dit (punto)</td><td><code>.</code> (Punto)</td></tr>
		<tr><td>Dah (linea)</td><td><code>-</code> (Trattino)</td></tr>
		<tr><td>Spazio tra lettere</td><td><code> </code> (Spazio)</td></tr>
		<tr><td>Spazio tra parole</td><td><code>/</code> (Barra)</td></tr>
	</table>
</div>

<p>
Il risultato della conversione di "<var>MORSE CODE</var>" in codice Morse internazionale è il seguente.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Temporizzazione dei segnali</h4>
<p>
Quando si trasmette il codice Morse, sono definiti rapporti rigorosi per la lunghezza dei dit e dei dah e gli intervalli tra di essi.
Usando la lunghezza di un dit come 1 unità, la lunghezza di ciascun elemento è la seguente.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemento</th><th>Lunghezza</th><th>Descrizione</th></tr>
		<tr><td>Dit</td><td>1 unità</td><td>Un breve tono di segnale</td></tr>
		<tr><td>Dah</td><td>3 unità</td><td>Un tono di segnale 3 volte la lunghezza di un dit</td></tr>
		<tr><td>Spazio intra-carattere</td><td>1 unità</td><td>Silenzio tra dit e dah all'interno dello stesso carattere</td></tr>
		<tr><td>Spazio tra lettere</td><td>3 unità</td><td>Silenzio tra caratteri diversi</td></tr>
		<tr><td>Spazio tra parole</td><td>7 unità</td><td>Silenzio tra parole diverse</td></tr>
	</table>
</div>

<p>
Ad esempio, quando si trasmette "<var>MORSE CODE</var>", il segnale viene inviato con la seguente temporizzazione.
<code>▄</code> (<code>1</code>) rappresenta un tono di segnale, e <code> </code> (<code>0</code>) rappresenta il silenzio.
</p>
<pre>
M    : ▄▄▄ ▄▄▄         (1110111)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
R    : ▄ ▄▄▄ ▄         (1011101)
S    : ▄ ▄ ▄           (10101)
E    : ▄               (1)
     :                 (0000000)
C    : ▄▄▄ ▄ ▄▄▄ ▄     (11101011101)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
D    : ▄▄▄ ▄ ▄         (1110101)
E    : ▄               (1)

   M           O           R        S     E            C             O           D      E
▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄ ▄   ▄ ▄ ▄   ▄       ▄▄▄ ▄ ▄▄▄ ▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄▄▄ ▄ ▄   ▄
11101110001110111011100010111010001010100010000000111010111010001110111011100011101010001
</pre>

<p>
In questo modo, tutte le lunghezze sono determinate come rapporti interi basati su 1 unità di dit, quindi i rapporti precisi possono essere mantenuti anche quando si cambia la velocità di trasmissione.
La velocità di comunicazione è generalmente espressa in WPM (Words Per Minute), definita da quante volte la parola di riferimento "PARIS" può essere trasmessa al minuto.
Ad esempio, a 20 WPM, un'unità di dit è di circa 60 millisecondi.
</p>


<h3>Codice Morse internazionale</h3>
<p>
Il codice Morse internazionale è il codice Morse standard mondiale per rappresentare lettere, numeri e simboli.
È definito dallo standard dell'Unione Internazionale delle Telecomunicazioni (ITU) (ITU-R M.1677-1).
</p>

<h4>Alfabeto</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>A</th><td>.-</td><th>B</th><td>-...</td><th>C</th><td>-.-.</td><th>D</th><td>-..</td></tr>
		<tr><th>E</th><td>.</td><th>F</th><td>..-.</td><th>G</th><td>--.</td><th>H</th><td>....</td></tr>
		<tr><th>I</th><td>..</td><th>J</th><td>.---</td><th>K</th><td>-.-</td><th>L</th><td>.-..</td></tr>
		<tr><th>M</th><td>--</td><th>N</th><td>-.</td><th>O</th><td>---</td><th>P</th><td>.--.</td></tr>
		<tr><th>Q</th><td>--.-</td><th>R</th><td>.-.</td><th>S</th><td>...</td><th>T</th><td>-</td></tr>
		<tr><th>U</th><td>..-</td><th>V</th><td>...-</td><th>W</th><td>.--</td><th>X</th><td>-..-</td></tr>
		<tr><th>Y</th><td>-.--</td><th>Z</th><td>--..</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>

<h4>Numeri</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Simboli</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Codici estesi</h4>
<p>
Tra i caratteri con segni diacritici, solo "É" è definito dall'Unione Internazionale delle Telecomunicazioni (ITU). Tutti gli altri codici sono definiti come "codici estesi" stabiliti dalle autorità nazionali o per convenzione.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>À, Å</th><td>.--.-</td><th>Ä, Æ, Ą</th><td>.-.-</td><th>Ć, Ĉ, Ç</th><td>-.-..</td><th>É, Ę, Đ</th><td>..-..</td></tr>
		<tr><th>Ð</th><td>..--.</td><th>È, Ł</th><td>.-..-</td><th>Ĝ</th><td>--.-.</td><th>Ĥ, Š</th><td>----</td></tr>
		<tr><th>Ĵ</th><td>.---.</td><th>Ń, Ñ</th><td>--.--</td><th>Ó, Ö, Ø</th><td>---.</td><th>Ś</th><td>...-...</td></tr>
		<tr><th>Ŝ</th><td>...-.</td><th>Þ</th><td>.--..</td><th>Ü, Ŭ</th><td>..--</td><th>Ź</th><td>--..-.</td></tr>
		<tr><th>Ż</th><td>--..-</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Codice Morse giapponese (codice Wabun)</h3>
<p>
Il codice Morse giapponese è un sistema di codice Morse progettato per rappresentare i caratteri Hiragana e Katakana giapponesi.
L'ordine dei caratteri si basa sull'ordine tradizionale "Iroha".
</p>

<h4>Hiragana / Katakana (ordine Iroha)</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>イ</th><td>.-</td><th>ロ</th><td>.-.-</td><th>ハ</th><td>-...</td><th>ニ</th><td>-.-.</td><th>ホ</th><td>-..</td></tr>
		<tr><th>ヘ</th><td>.</td><th>ト</th><td>..-..</td><th>チ</th><td>..-.</td><th>リ</th><td>--.</td><th>ヌ</th><td>....</td></tr>
		<tr><th>ル</th><td>-.--.</td><th>ヲ</th><td>.---</td><th>ワ</th><td>-.-</td><th>カ</th><td>.-..</td><th>ヨ</th><td>--</td></tr>
		<tr><th>タ</th><td>-.</td><th>レ</th><td>---</td><th>ソ</th><td>---.</td><th>ツ</th><td>.--.</td><th>ネ</th><td>--.-</td></tr>
		<tr><th>ナ</th><td>.-.</td><th>ラ</th><td>...</td><th>ム</th><td>-</td><th>ウ</th><td>..-</td><th>ヰ</th><td>.-..-</td></tr>
		<tr><th>ノ</th><td>..--</td><th>オ</th><td>.-...</td><th>ク</th><td>...-</td><th>ヤ</th><td>.--</td><th>マ</th><td>-..-</td></tr>
		<tr><th>ケ</th><td>-.--</td><th>フ</th><td>--..</td><th>コ</th><td>----</td><th>エ</th><td>-.---</td><th>テ</th><td>.-.--</td></tr>
		<tr><th>ア</th><td>--.--</td><th>サ</th><td>-.-.-</td><th>キ</th><td>-.-..</td><th>ユ</th><td>-..--</td><th>メ</th><td>-...-</td></tr>
		<tr><th>ミ</th><td>..-.-</td><th>シ</th><td>--.-.</td><th>ヱ</th><td>.--..</td><th>ヒ</th><td>--..-</td><th>モ</th><td>-..-.</td></tr>
		<tr><th>セ</th><td>.---.</td><th>ス</th><td>---.-</td><th>ン</th><td>.-.-.</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>゛ (Dakuten / Segno di sonorizzazione)</th><td>..</td><th>゜ (Handakuten / Segno di semi-sonorizzazione)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Il Dakuten (゛) e l'Handakuten (゜) hanno i propri codici indipendenti. Si rappresentano posizionando il codice Dakuten (<code>..</code>) o il codice Handakuten (<code>..--.</code>) dopo il codice del carattere base, separato da uno spazio tra lettere.
Ad esempio, "ガ" è una combinazione di "カ (<code>.-..</code>)" e "゛ (<code>..</code>)", risultando in "<code>.-.. ..</code>".
</p>

<h4>Numeri</h4>
<p>
Uguale al codice Morse internazionale.
</p>

<h4>Simboli</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Codice Morse russo (cirillico)</h3>
<p>
Questo è un sistema di codice Morse progettato per rappresentare i caratteri cirillici usati in russo e in altre lingue.
I codici non sono disposti in ordine alfabetico cirillico, ma sono assegnati gli stessi codici dei corrispondenti caratteri latini (codice Morse internazionale) in base alla loro pronuncia.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>А</th><td>.-</td><th>Б</th><td>-...</td><th>В</th><td>.--</td><th>Г</th><td>--.</td></tr>
		<tr><th>Д</th><td>-..</td><th>Е</th><td>.</td><th>Ж</th><td>...-</td><th>З</th><td>--..</td></tr>
		<tr><th>И</th><td>..</td><th>Й</th><td>.---</td><th>К</th><td>-.-</td><th>Л</th><td>.-..</td></tr>
		<tr><th>М</th><td>--</td><th>Н</th><td>-.</td><th>О</th><td>---</td><th>П</th><td>.--.</td></tr>
		<tr><th>Р</th><td>.-.</td><th>С</th><td>...</td><th>Т</th><td>-</td><th>У</th><td>..-</td></tr>
		<tr><th>Ф</th><td>..-.</td><th>Х</th><td>....</td><th>Ц</th><td>-.-.</td><th>Ч</th><td>---.</td></tr>
		<tr><th>Ш</th><td>----</td><th>Щ</th><td>--.-</td><th>Ъ</th><td>--.--</td><th>Ы</th><td>-.--</td></tr>
		<tr><th>Ь</th><td>-..-</td><th>Э</th><td>..-..</td><th>Ю</th><td>..--</td><th>Я</th><td>.-.-</td></tr>
	</table>
</div>

<h4>Numeri</h4>
<p>
Uguale al codice Morse internazionale.
</p>

<h4>Simboli</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Storia del codice Morse</h3>
<p>
Il codice Morse fu sviluppato negli anni 1830 dall'inventore americano Samuel Morse e da Alfred Vail per le prime macchine telegrafiche.
Il primo codice Morse trasmetteva solo numeri, che venivano poi convertiti in parole utilizzando un dizionario sul lato ricevente. Successivamente, Vail ampliò il sistema per includere l'alfabeto come lo conosciamo oggi.
Alle lettere più frequentemente utilizzate (es. <code>E</code>) furono assegnati codici più brevi (<code>.</code>), mentre alle lettere meno utilizzate (es. <code>Q</code>) furono assegnati codici più lunghi (<code>--.-</code>), ottimizzando l'efficienza della comunicazione.
</p>

<p>
Successivamente, spinta dalla domanda di comunicazione internazionale, in particolare in Europa, l'assegnazione delle lettere fu rivista, evolvendosi nel "Codice Morse Internazionale" utilizzato in tutto il mondo oggi.
In Giappone, quando la tecnologia telegrafica fu introdotta dal tardo periodo Edo all'inizio dell'era Meiji, fu ideato il "codice Morse Wabun" assegnando in modo unico codici Morse al sillabario Kana giapponese.
Una caratteristica distintiva del codice Morse Wabun è che i codici sono assegnati seguendo l'ordine tradizionale "Iroha" ("イロハニホヘト…").
</p>

<p>
Per molti anni, il codice Morse è stato ampiamente utilizzato in tutto il mondo nelle comunicazioni marittime, aeronautiche, militari e commerciali.
Tuttavia, con lo sviluppo delle comunicazioni satellitari e digitali, il codice Morse ha in gran parte completato il suo ruolo come mezzo ufficiale di comunicazione di emergenza con la transizione al GMDSS (Global Maritime Distress and Safety System) negli anni '90.
</p>

<p>
Oggi, il codice Morse è utilizzato principalmente nella radio amatoriale e in alcuni radiofari di navigazione.
Tuttavia, poiché consente la comunicazione utilizzando un meccanismo di accensione-spegnimento molto semplice — come luci lampeggianti, toni brevi e lunghi, o persino ammiccamenti e colpi su un muro — il suo valore come mezzo di comunicazione ultimo in situazioni come catastrofi naturali rimane completamente inalterato anche nell'era moderna.
Il famoso segnale di soccorso "SOS" è stato adottato non per alcun significato linguistico, ma perché la combinazione "<code>... --- ...</code>" è facile da trasmettere e facile da riconoscere.
</p>
