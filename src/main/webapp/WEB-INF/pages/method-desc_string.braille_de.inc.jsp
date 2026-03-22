<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über die Brailleschrift</h3>
<p>
Braille ist ein taktiles Schriftsystem aus erhabenen Punkten, das von blinden und sehbehinderten Menschen durch Berühren mit den Fingerspitzen gelesen wird.
Ein Zeichen oder Symbol wird durch eine Kombination aus 6 Punkten in 3 Reihen und 2 Spalten dargestellt (6-Punkt-Braille).
Das System wird weltweit eingesetzt, wobei die Punktezuteilungsregeln je nach Sprache variieren.
</p>


<h3>Englische Brailleschrift (UEB Grade 1)</h3>
<p>
Dieses Tool konvertiert den Text basierend auf der „Unified English Braille (UEB)“ Grade 1 (Vollschrift, die Buchstaben 1-zu-1 überträgt), die in der englischsprachigen Welt als Standard verwendet wird. Die Kurzschrift (Grade 2) wird nicht unterstützt.
</p>

<p>Konvertierungsbeispiel:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alphabet</h4>
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
Vor Großbuchstaben wird ein Großschreibungszeichen (<code>⠠</code>) gesetzt.
Wenn aufeinanderfolgende Großbuchstaben vorkommen, bestimmt zudem ein „Großschreibungszeichen für ein ganzes Wort (<code>⠠⠠</code>)“ die Großschreibung dieses Wortes; bei mehreren Wörtern wird ein „Großschreibungszeichen für Abschnitte (<code>⠠⠠⠠</code>)“ und am Ende der Anwendung ein „Beendigungszeichen für die Großschreibung (<code>⠠⠄</code>)“ verwendet.
</p>

<h4>Zahlen</h4>
<p>
Zahlen werden durch ein vorausgehendes Zahlenzeichen (<code>⠼</code>) dargestellt. Die darauf folgenden Zeichen werden als Zahlen behandelt, unter Übernahme der Brailleschrift für die Buchstaben a bis j.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Zahlenzeichen</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Wenn ein Kleinbuchstabe von a bis j direkt auf eine Zahl folgt, wird ein Einheitszeichen (<code>⠰</code>) eingefügt, um eine Verwechslung mit Zahlen zu vermeiden.
</p>

<h4>Wichtige Symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Komma)</th><td>⠂</td><th>. (Punkt)</th><td>⠲</td><th>! (Ausrufezeichen)</th><td>⠖</td><th>? (Fragezeichen)</th><td>⠦</td></tr>
		<tr><th>' (Apostroph)</th><td>⠄</td><th>- (Bindestrich)</th><td>⠤</td><th>; (Semikolon)</th><td>⠆</td><th>: (Doppelpunkt)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Anführungszeichen und Klammern</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Gewöhnliche Anführungszeichen)</th><td>⠦ *** ⠴</td><th>' *** ' (Einfache Anführungszeichen)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Typografische Anführungsz.)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Einfache typografische A.)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Guillemets / Möwchen)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Spitze Klammern)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Runde Klammern)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Eckige Klammern)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Geschweifte Klammern)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Japanische Brailleschrift</h3>
<p>
Die japanische Brailleschrift wird gebildet, indem Sätze zunächst in Kana (japanische Silbenschrift) konvertiert und diese anschließend in Braille umgewandelt werden.
</p>

<p>Konvertierungsbeispiel:</p>
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

<h4>Wichtige Symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Japanisches Komma)</th><td>⠰</td><th>。 (Japanischer Punkt)</th><td>⠲</td><th>？ (Fragezeichen)</th><td>⠢</td><th>！ (Ausrufezeichen)</th><td>⠖</td></tr>
		<tr><th>・ (Mittelpunkt)</th><td>⠐</td><th>〜 (Wellenlinie)</th><td>⠤⠤</td><th>＆ (Kaufmanns-Und)</th><td>⠰⠯</td><th>％ (Prozent)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Anführungszeichen und Klammern</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Einfache jp. Anführungsz.)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Doppelte jp. Anführungsz.)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Vollbreite runde Klammern)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Doppelte runde Klammern)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Fremdsprachliches Alphabet</h4>
<p>
Wenn englische oder andere fremdsprachige Alphabete in den japanischen Text eingestreut sind, wird ein Fremdsprachenzeichen (<code>⠰</code>) eingefügt, gefolgt von der entsprechenden UEB-Brailleschrift.
</p>

<h4>Zahlen</h4>
<p>
Die Regeln entsprechen denen der englischen Brailleschrift.
</p>

<h4>Worttrennung (Wakachigaki)</h4>
<p>
DenCode fügt bei der Übersetzung in japanische Brailleschrift keine automatische Worttrennung (Leerzeichen) ein. Bitte geben Sie den Text für eine genauere Umwandlung vorab mit Leerzeichen zwischen den Wörtern ein (Wakachigaki).
</p>


<h3>Die Geschichte der Brailleschrift</h3>
<p>
Die moderne 6-Punkt-Brailleschrift wurde 1825 von dem Franzosen Louis Braille erfunden.
Er hatte als Kind durch einen Unfall sein Augenlicht verloren und perfektionierte dieses System, als er gerade 15 Jahre alt war.
Frühere Schriftsysteme für Sehbehinderte nutzten erhabene Standardbuchstaben auf Papier, weshalb sowohl das Lesen als auch das Schreiben extrem schwierig waren.
Mit dem von Braille entworfenen 6-Punkte-System wurde das schelle Lesen mit den Fingern sowie das einfache Schreiben mit einem speziellen Werkzeug ermöglicht. Heute ist der Begriff "Braille" zu einem universell verstandenen Wort für Punktschrift geworden.
</p>
<p>
In Japan begann man in der Meiji-Ära über die Einführung von Braille nachzudenken.
1890 (Meiji 23) wurde die japanische Brailleschrift (6-Punkt) auf Basis des heute verwendeten Silbenalphabets (Kana) durch Kuraji Ishikawa vervollständigt, einen Lehrer an der Tokyoter Gehörlosen- und Blindenschule.
Der 1. November, der Tag, an dem sein System offiziell übernommen wurde, ist noch immer der „Tag der Brailleschrift“ in Japan.
</p>

<h3>Die Entwicklung der Brailleschrift im englischsprachigen Raum und UEB</h3>
<p>
Im englischsprachigen Raum wurden über lange Zeit eigene Braillesysteme je nach Land oder Region verwendet.
Zum Beispiel galt die „English Braille, American Edition (EBAE)“ in den Vereinigten Staaten als Standard, während das Vereinigte Königreich auf die „Standard English Braille (SEB)“ zurückgriff. So gab es selbst in der englischen Brailleschrift Unterschiede bei der Symbolbelegung oder der Kurzschrift.
Zusätzlich machten separate spezialisierte Codes für Bereiche wie Mathematik und Wissenschaft (wie der Nemeth Code) oder für Computer (Computer Braille Code) die Erlernung sehr komplex und stellten bei der Systementwicklung stets Probleme dar.
</p>
<p>
Um Länderunterschiede und komplizierte Sondercodes zu beseitigen, begann in den 1990er Jahren eine Initiative für einen alle Standards vereinenden, international gemeinsamen Standard.
Das Ergebnis ist die heute weltweit eingesetzte <strong>Unified English Braille (UEB)</strong>.
</p>
<p>
Die deutlichste Veränderung der UEB im Vergleich zu alten Vollformaten wie z. B. der EBAE betrifft die Reorganisation von Symbolen sowie die Abschaffung und Straffung gewisser Kurzschrift-Regeln (Grade 2).
In alten Systemen gab es komplizierte Kürzungen (Contractions), um den Text zu reduzieren, aber die UEB schaffte einige verwirrende Kürzungen ab (wie etwa "ble" und "com").
Ebenfalls wurde eine neue, unmissverständliche Vorgabe aufgesetzt: der Verzicht auf Kurzschreibweisen bei URLs oder E-Mail-Adressen und die Definition völlig neu erfundener Symbolsätze für das moderne, fortgeschrittene digitale Zeitalter (beispielsweise <code>@</code> und <code>/</code>).
</p>
<p>
Heute haben große englischsprachige Länder wie die Vereinigten Staaten, das Vereinigte Königreich, Australien, Kanada und Neuseeland ihren Übergang zur UEB gänzlich abgeschlossen, folglich wird Englisch-Brailleschrift-Material und -Literatur weltweit auf UEB-Basis geliefert.
</p>
