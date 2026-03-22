<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul Braille</h3>
<p>
Il Braille è un sistema di scrittura tattile costituito da punti in rilievo, progettato per le persone con disabilità visiva affinché possa essere letto con la punta delle dita.
Rappresenta un carattere o un simbolo attraverso la combinazione di 6 punti disposti in 3 righe e 2 colonne (Braille a 6 punti).
Questo sistema è utilizzato in tutto il mondo e le regole di assegnazione dei punti variano da lingua a lingua.
</p>


<h3>Braille Inglese (UEB Grade 1)</h3>
<p>
Questo strumento esegue la conversione basandosi sull'"Unified English Braille (UEB)" Grade 1 (Braille inglese non contratto: metodo che trascrive le lettere dell'alfabeto una per una) utilizzato come standard nei paesi anglofoni. Le forme contratte (Grade 2) non sono supportate.
</p>

<p>Esempio di conversione:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alfabeto</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
Per le lettere maiuscole, il simbolo di maiuscola (<code>⠠</code>) viene posizionato davanti alla lettera.
In caso di lettere maiuscole consecutive, inoltre, l'"indicatore di parola maiuscola (<code>⠠⠠</code>)" specifica la maiuscola per l'intera parola; l'"indicatore di passaggio maiuscolo (<code>⠠⠠⠠</code>)" se si estende su più parole; e il "terminatore di maiuscola (<code>⠠⠄</code>)" usato al termine della sua applicazione.
</p>

<h4>Numeri</h4>
<p>
I numeri sono rappresentati dall'anteposizione di un indicatore numerico (<code>⠼</code>). I caratteri successivi a tale indicatore verranno trattati come cifre mutuando il braille dalle lettere da 'a' a 'j'.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Indicatore numerico</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Se una lettera minuscola da 'a' a 'j' segue immediatamente un numero, viene inserito un indicatore di Grado 1 (<code>⠰</code>) per evitare confusione con le cifre.
</p>

<h4>Simboli principali</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Virgola)</th><td>⠂</td><th>. (Punto)</th><td>⠲</td><th>! (Punto esclamativo)</th><td>⠖</td><th>? (Punto interrogativo)</th><td>⠦</td></tr>
		<tr><th>' (Apostrofo)</th><td>⠄</td><th>- (Trattino)</th><td>⠤</td><th>; (Punto e virgola)</th><td>⠆</td><th>: (Due punti)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Virgolette e Parentesi</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Virgolette quadre)</th><td>⠦ *** ⠴</td><th>' *** ' (Virgolette singole)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Doppie direzionali)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Singole direzionali)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Caporali/Angolari)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Parentesi angolate)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Parentesi tonde)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Parentesi quadre)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Parentesi graffe)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Braille Giapponese</h3>
<p>
Il Braille giapponese viene rappresentato codificando le frasi prima in kana (sillabario giapponese) e poi convertendole in braille.
</p>

<p>Esempio di conversione:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア (a)</th><td>⠁</td><th>イ (i)</th><td>⠃</td><th>ウ (u)</th><td>⠉</td><th>エ (e)</th><td>⠋</td><th>オ (o)</th><td>⠊</td></tr>
		<tr><th>カ (ka)</th><td>⠡</td><th>キ (ki)</th><td>⠣</td><th>ク (ku)</th><td>⠩</td><th>ケ (ke)</th><td>⠫</td><th>コ (ko)</th><td>⠪</td></tr>
		<tr><th>サ (sa)</th><td>⠱</td><th>シ (shi)</th><td>⠳</td><th>ス (su)</th><td>⠹</td><th>セ (se)</th><td>⠻</td><th>ソ (so)</th><td>⠺</td></tr>
		<tr><th>タ (ta)</th><td>⠕</td><th>チ (chi)</th><td>⠗</td><th>ツ (tsu)</th><td>⠝</td><th>テ (te)</th><td>⠟</td><th>ト (to)</th><td>⠞</td></tr>
		<tr><th>ナ (na)</th><td>⠅</td><th>ニ (ni)</th><td>⠇</td><th>ヌ (nu)</th><td>⠍</td><th>ネ (ne)</th><td>⠏</td><th>ノ (no)</th><td>⠎</td></tr>
		<tr><th>ハ (ha)</th><td>⠥</td><th>ヒ (hi)</th><td>⠧</td><th>フ (fu)</th><td>⠭</td><th>ヘ (he)</th><td>⠯</td><th>ホ (ho)</th><td>⠮</td></tr>
		<tr><th>マ (ma)</th><td>⠵</td><th>ミ (mi)</th><td>⠷</td><th>ム (mu)</th><td>⠽</td><th>メ (me)</th><td>⠿</td><th>モ (mo)</th><td>⠾</td></tr>
		<tr><th>ヤ (ya)</th><td>⠌</td><th></th><td></td><th>ユ (yu)</th><td>⠬</td><th></th><td></td><th>ヨ (yo)</th><td>⠜</td></tr>
		<tr><th>ラ (ra)</th><td>⠑</td><th>リ (ri)</th><td>⠓</td><th>ル (ru)</th><td>⠙</td><th>レ (re)</th><td>⠛</td><th>ロ (ro)</th><td>⠚</td></tr>
		<tr><th>ワ (wa)</th><td>⠄</td><th>ヰ (wi)</th><td>⠆</td><th></th><td></td><th>ヱ (we)</th><td>⠖</td><th>ヲ (wo)</th><td>⠔</td></tr>
		<tr><th>ン (n)</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (Sokuon)</th><td>⠂</td><th>ー (Chōon)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ (ga)</th><td>⠐⠡</td><th>ギ (gi)</th><td>⠐⠣</td><th>グ (gu)</th><td>⠐⠩</td><th>ゲ (ge)</th><td>⠐⠫</td><th>ゴ (go)</th><td>⠐⠪</td></tr>
		<tr><th>ザ (za)</th><td>⠐⠱</td><th>ジ (ji)</th><td>⠐⠳</td><th>ズ (zu)</th><td>⠐⠹</td><th>ゼ (ze)</th><td>⠐⠻</td><th>ゾ (zo)</th><td>⠐⠺</td></tr>
		<tr><th>ダ (da)</th><td>⠐⠕</td><th>ヂ (ji)</th><td>⠐⠗</td><th>ヅ (zu)</th><td>⠐⠝</td><th>デ (de)</th><td>⠐⠟</td><th>ド (do)</th><td>⠐⠞</td></tr>
		<tr><th>バ (ba)</th><td>⠐⠥</td><th>ビ (bi)</th><td>⠐⠧</td><th>ブ (bu)</th><td>⠐⠭</td><th>ベ (be)</th><td>⠐⠯</td><th>ボ (bo)</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ (pa)</th><td>⠠⠥</td><th>ピ (pi)</th><td>⠠⠧</td><th>プ (pu)</th><td>⠠⠭</td><th>ペ (pe)</th><td>⠠⠯</td><th>ポ (po)</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ (kya)</th><td>⠈⠡</td><th>キュ (kyu)</th><td>⠈⠩</td><th>キョ (kyo)</th><td>⠈⠪</td></tr>
		<tr><th>シャ (sha)</th><td>⠈⠱</td><th>シュ (shu)</th><td>⠈⠹</td><th>ショ (sho)</th><td>⠈⠺</td></tr>
		<tr><th>チャ (cha)</th><td>⠈⠕</td><th>チュ (chu)</th><td>⠈⠝</td><th>チョ (cho)</th><td>⠈⠞</td></tr>
		<tr><th>ニャ (nya)</th><td>⠈⠅</td><th>ニュ (nyu)</th><td>⠈⠍</td><th>ニョ (nyo)</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ (hya)</th><td>⠈⠥</td><th>ヒュ (hyu)</th><td>⠈⠭</td><th>ヒョ (hyo)</th><td>⠈⠮</td></tr>
		<tr><th>ミャ (mya)</th><td>⠈⠵</td><th>ミュ (myu)</th><td>⠈⠽</td><th>ミョ (myo)</th><td>⠈⠾</td></tr>
		<tr><th>リャ (rya)</th><td>⠈⠑</td><th>リュ (ryu)</th><td>⠈⠙</td><th>リョ (ryo)</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ (gya)</th><td>⠘⠡</td><th>ギュ (gyu)</th><td>⠘⠩</td><th>ギョ (gyo)</th><td>⠘⠪</td></tr>
		<tr><th>ジャ (ja)</th><td>⠘⠱</td><th>ジュ (ju)</th><td>⠘⠹</td><th>ジョ (jo)</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ (ja)</th><td>⠘⠕</td><th>ヂュ (ju)</th><td>⠘⠝</td><th>ヂョ (jo)</th><td>⠘⠞</td></tr>
		<tr><th>ビャ (bya)</th><td>⠘⠥</td><th>ビュ (byu)</th><td>⠘⠭</td><th>ビョ (byo)</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ (pya)</th><td>⠨⠥</td><th>ピュ (pyu)</th><td>⠨⠭</td><th>ピョ (pyo)</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>Simboli principali</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Virgola giapponese)</th><td>⠰</td><th>。 (Punto giapponese)</th><td>⠲</td><th>？ (Punto interrogativo)</th><td>⠢</td><th>！ (Punto esclamativo)</th><td>⠖</td></tr>
		<tr><th>・ (Punto mediano)</th><td>⠐</td><th>〜 (Linea ondulata)</th><td>⠤⠤</td><th>＆ (E commerciale)</th><td>⠰⠯</td><th>％ (Simbolo percentuale)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Virgolette e Parentesi</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Virgolette sing. jp.)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Virgolette doppie jp.)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Parentesi tonde ampie)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Parentesi tonde doppie)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alfabeto straniero</h4>
<p>
Quando l'inglese o alfabeti di lingue straniere si mescolano al giapponese, viene inserito un segno di lingua straniera (<code>⠰</code>) subito prima dell'alfabeto, seguito dall'equivalente braille UEB.
</p>

<h4>Numeri</h4>
<p>
Le regole sono identiche a quelle del Braille Inglese.
</p>

<h4>Divisione delle parole (Wakachigaki)</h4>
<p>
DenCode non inserirà automaticamente alcuno spazio per dividere le singole parole naturali giapponesi, ma converte la stringa di input direttamente in Braille come viene fornita. Per generare una traduzione in braille giapponese più precisa, si prega di premunirsi di separare preventivamente il testo in ingresso con spazi in base al termine logico (Wakachigaki).
</p>


<h3>La Storia del Braille</h3>
<p>
Il Braille a 6 punti contemporaneo fu inventato nel 1825 dal francese Louis Braille.
Braille, che in tenera età perse la vista a causa di un incidente, completò e raffinò personalmente la struttura di questo sistema a soli 15 anni.
I precedenti sistemi di lettura per i disabili visivi utilizzavano per lo più i comuni caratteri alfabetici applicandone un rilievo su carta, e il compito di leggerli e scriverli risultava faticoso o quantomeno difficilissimo.
L'espediente originario concepito servendosi dei sei punti permise viceversa all'utente di scandire il tutto a ritmi elevati mediante l'uso dei polpastrelli, così come codificarli per iscritto attraverso apparati di tipo specifico. Oggigiorno, la stessa parola "Braille" si è trasformata in gran parte del globo nel sinonimo generalizzato della stampa tramite punti.
</p>
<p>
Per quanto concerne il Giappone, l'iter formativo volto all'eventuale introduzione del braille ha preso il via già durante l'era Meiji.
Nel 1890 (Meiji 23), in scorta alle caratteristiche sonore dettate dal kana di quel periodo prese vita il braille giapponese odierno (il cui canone consiste in sei punti) ultimato dal maestro dell'allora scuola per ciechi e sordomuti di Tokyo Kuraji Ishikawa.
L'1 novembre, cioè la reale giornata dove l'architettura propugnata da Ishikawa ottenne l'ufficialità dello stato, resta fissata nelle memorie come l'annuale «Giorno del Braille».
</p>

<h3>Evoluzione dei sistemi Braille anglosassoni e l'UEB (Braille Inglese Unificato)</h3>
<p>
L'ambiente dei paesi di lingua inglese ha prolungato nei decenni una fase contraddistinta dall'impiego di protocolli braille dissimili a seconda del paese in questione (o territorio di appartenenza).
Per esser chiari, la formula che operava di regola in Nord America s'incentrava sulla matrice «English Braille, American Edition (EBAE)», contrariamente a quella utilizzata nel Regno Unito, in appoggio sullo «Standard English Braille (SEB)». Pur appartenendo all'insieme lessicale e linguistico inglese, queste norme subivano divergenze tra di loro nei simboli designati per alcune contrazioni grammaticali e d'alfabeto.
Parallelamente, si creavano protocolli braille separati a stampo tecno-scientifico destinati a coprire nozioni di natura algebrico-matematica (es. Nemeth Code) o elaborazione al computer (Computer Braille Code), fatto che faceva incappare discenti e chi sviluppava sistemi nel campo a farne i conti recando estrema disfunzione o ambiguità.
</p>
<p>
Al fine di sorpassare gli storici divari nazionali non esitando a rimuovere l'assai intricata e affollatissima catena di codici di dominio specifico, le tappe volte alla codifica unificata su base internazionale cominciarono nei primi anni '90.
Di tutta l'operatività collettiva derivò all'ultimo il protocollo noto come <strong>Unified English Braille (Braille Inglese Unificato - UEB)</strong>, adottato con gli esiti finali globalmente quale nuovo unico traguardo referenziale standardizzato per l'universo parlante in inglese.
</p>
<p>
Al netto dell'unione in generale, la trasformazione cardinale da attribuirsi con riguardo a quanto accorpato all'interno di EBAE abbraccia la risistemazione dell'indice iconico unito a contrazione/inasprimento dei vincoli operativi riguardo alla stenografia abbreviativa (Grade 2).
Per via dell'intrinseco disegno storico di comprimere al massimo del possibile la voluminosità visiva e sensoriale adoperando le contrazioni (Contractions), l'UEB deliberò in tale circostanza la soppressione e rimozione di molte clausole che provocavano ingannevole intrico logico o dubbioso tra cui spiccano per esempio "ble" e "com".
Allo stesso tempo s'instillarono divieti e chiavi formali di esclusione dell'uso d'abbreviazioni applicato alle stringhe mail e URL o simmetricamente ponendo in veste costituzionale percorsi e schemi normati indirizzati alle figure (e al nuovo panorama informatico che andava imponendosi ai giorni nostri) includendone per es. i fondamentali <code>@</code> oppure <code>/</code>.
</p>
<p>
Alle epoche odierne, è constabile di come poli governativi primari anglofoni includenti le piazze mondiali degli USA, Gran Bretagna, landa australiana, in Canada senza estromettere Nuova Zelanda ed altre aree stiano siglando oramai col superamento finale completato per intero lo spostamento sistemistico nei confini e all'insegna del canone UEB. Di riflesso, sussidi per scolarizzazione, testi d'insegnamento internazionali uniti ad emanzioni testuali o scartoffie prodotte in modo ufficiale abbracciano un conformismo in UEB.
</p>
