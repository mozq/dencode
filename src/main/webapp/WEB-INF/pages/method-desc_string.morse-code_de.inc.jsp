<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über Morsecode</h3>
<p>
Morsecode (Morse code) ist ein Telegraphie-Codesystem, das Buchstaben und Symbole durch Kombinationen von kurzen Signalen (Dit) und langen Signalen (Dah) darstellt.
</p>

<p>
DenCode verwendet die folgenden Zeichen zur Darstellung von Morsecode.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Bezeichnung</th><th>Symbol</th></tr>
		<tr><td>Dit (Kurzzeichen)</td><td><code>.</code> (Punkt)</td></tr>
		<tr><td>Dah (Langzeichen)</td><td><code>-</code> (Bindestrich)</td></tr>
		<tr><td>Zeichenabstand</td><td><code> </code> (Leerzeichen)</td></tr>
		<tr><td>Wortabstand</td><td><code>/</code> (Schrägstrich)</td></tr>
	</table>
</div>

<p>
Das Ergebnis der Umwandlung von „<var>MORSE CODE</var>" in internationalen Morsecode ist wie folgt.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Signaltiming</h4>
<p>
Beim Senden von Morsecode sind strenge Verhältnisse für die Länge von Dits und Dahs sowie die Abstände zwischen ihnen festgelegt.
Wenn die Länge eines Dit als 1 Einheit definiert wird, ist die Länge jedes Elements wie folgt.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Länge</th><th>Beschreibung</th></tr>
		<tr><td>Dit</td><td>1 Einheit</td><td>Ein kurzer Signalton</td></tr>
		<tr><td>Dah</td><td>3 Einheiten</td><td>Ein Signalton mit der dreifachen Länge eines Dit</td></tr>
		<tr><td>Intra-Zeichen-Abstand</td><td>1 Einheit</td><td>Stille zwischen Dits und Dahs innerhalb desselben Zeichens</td></tr>
		<tr><td>Zeichenabstand</td><td>3 Einheiten</td><td>Stille zwischen verschiedenen Zeichen</td></tr>
		<tr><td>Wortabstand</td><td>7 Einheiten</td><td>Stille zwischen verschiedenen Wörtern</td></tr>
	</table>
</div>

<p>
Zum Beispiel wird beim Senden von „<var>MORSE CODE</var>" das Signal mit folgendem Timing gesendet.
<code>▄</code> (<code>1</code>) stellt einen Signalton dar, und <code> </code> (<code>0</code>) stellt Stille dar.
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
Auf diese Weise werden alle Längen als ganzzahlige Verhältnisse basierend auf 1 Einheit eines Dit bestimmt, sodass genaue Verhältnisse auch bei Änderung der Übertragungsgeschwindigkeit eingehalten werden können.
Die Kommunikationsgeschwindigkeit wird allgemein in WPM (Words Per Minute) ausgedrückt und ist dadurch definiert, wie oft das Referenzwort „PARIS" pro Minute übertragen werden kann.
Bei 20 WPM beträgt eine Dit-Einheit beispielsweise ca. 60 Millisekunden.
</p>


<h3>Internationaler Morsecode</h3>
<p>
Der internationale Morsecode ist der weltweite Standard-Morsecode zur Darstellung von Buchstaben, Zahlen und Symbolen.
Er ist durch den Standard der Internationalen Fernmeldeunion (ITU) (ITU-R M.1677-1) definiert.
</p>

<h4>Alphabet</h4>
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

<h4>Zahlen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Sonderzeichen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Erweiterte Zeichen</h4>
<p>
Unter den Buchstaben mit diakritischen Zeichen ist nur „É" von der Internationalen Fernmeldeunion (ITU) definiert. Alle anderen Codes sind als „erweiterte Zeichen" definiert, die von nationalen Behörden oder durch Konventionen festgelegt wurden.
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


<h3>Japanischer Morsecode (Wabun-Code)</h3>
<p>
Der japanische Morsecode ist ein Morsecodesystem zur Darstellung japanischer Hiragana- und Katakana-Zeichen.
Die Zeichenreihenfolge basiert auf der traditionellen „Iroha"-Reihenfolge.
</p>

<h4>Hiragana / Katakana (Iroha-Reihenfolge)</h4>
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
		<tr><th>゛ (Dakuten / Stimmhaftigkeitszeichen)</th><td>..</td><th>゜ (Handakuten / Halbstimmhaftigkeitszeichen)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) und Handakuten (゜) haben eigene unabhängige Codes. Sie werden dargestellt, indem nach dem Basiszeichencode der Dakuten-Code (<code>..</code>) oder Handakuten-Code (<code>..--.</code>) mit einem Zeichenabstand (Leerzeichen) platziert wird.
Zum Beispiel ist „ガ" eine Kombination aus „カ (<code>.-..</code>)" und „゛ (<code>..</code>)", was „<code>.-.. ..</code>" ergibt.
</p>

<h4>Zahlen</h4>
<p>
Identisch mit dem internationalen Morsecode.
</p>

<h4>Sonderzeichen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Russischer (kyrillischer) Morsecode</h3>
<p>
Dies ist ein Morsecodesystem zur Darstellung kyrillischer Zeichen, die im Russischen und anderen Sprachen verwendet werden.
Die Codes sind nicht in kyrillischer Alphabetreihenfolge angeordnet, sondern entsprechen den gleichen Codes wie die korrespondierenden lateinischen Buchstaben (internationaler Morsecode) basierend auf ihrer Aussprache.
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

<h4>Zahlen</h4>
<p>
Identisch mit dem internationalen Morsecode.
</p>

<h4>Sonderzeichen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Geschichte des Morsecodes</h3>
<p>
Der Morsecode wurde in den 1830er Jahren vom amerikanischen Erfinder Samuel Morse und Alfred Vail für die frühen Telegraphengeräte entwickelt.
Der erste Morsecode übertrug nur Zahlen, die dann auf der Empfängerseite mit einem Wörterbuch in Wörter umgewandelt wurden. Später erweiterte Vail das System um das Alphabet zum heutigen System.
Häufig verwendete Buchstaben (z. B. <code>E</code>) erhielten kürzere Codes (<code>.</code>), während seltener verwendete Buchstaben (z. B. <code>Q</code>) längere Codes (<code>--.-</code>) erhielten, um die Kommunikationseffizienz zu optimieren.
</p>

<p>
Anschließend wurden die Buchstabenzuweisungen aufgrund der Nachfrage nach internationaler Kommunikation, insbesondere in Europa, überarbeitet und zum weltweit verwendeten „Internationalen Morsecode" weiterentwickelt.
In Japan wurde bei der Einführung der Telegraphentechnik von der späten Edo-Zeit bis zur frühen Meiji-Ära der „Wabun-Morsecode" entwickelt, der die japanischen Kana-Silbenzeichen einzigartig dem Morsecode zuordnete.
Ein besonderes Merkmal des Wabun-Morsecodes ist, dass die Codes in der traditionellen „Iroha"-Reihenfolge („イロハニホヘト…") zugewiesen sind.
</p>

<p>
Über viele Jahre hinweg wurde Morsecode weltweit in der See-, Luft-, Militär- und Handelskommunikation eingesetzt.
Mit der Entwicklung der Satelliten- und Digitalkommunikation hat der Morsecode seine Rolle als offizielles Notfallkommunikationsmittel mit dem Übergang zum GMDSS (Global Maritime Distress and Safety System) in den 1990er Jahren weitgehend beendet.
</p>

<p>
Heute wird Morsecode hauptsächlich im Amateurfunk und bei einigen Navigations-Funkfeuern verwendet.
Da er jedoch die Kommunikation mit einem sehr einfachen Ein-Aus-Mechanismus ermöglicht — wie blinkenden Lichtern, kurzen und langen Tönen oder sogar Blinzeln und Klopfen an eine Wand — ist sein Wert als ultimatives Kommunikationsmittel in Situationen wie Naturkatastrophen auch in der modernen Ära völlig ungemindert.
Das berühmte Notsignal „SOS" wurde nicht wegen einer sprachlichen Bedeutung gewählt, sondern weil die Kombination „<code>... --- ...</code>" leicht zu senden und leicht zu erkennen ist.
</p>
