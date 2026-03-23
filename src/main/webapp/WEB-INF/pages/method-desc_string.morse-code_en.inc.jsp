<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Morse Code</h3>
<p>
Morse code is a telegraphy encoding system that represents letters and symbols using combinations of short signals (Dit) and long signals (Dah).
</p>

<p>
DenCode uses the following symbols to represent Morse code.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Name</th><th>Symbol</th></tr>
		<tr><td>Dit</td><td><code>.</code> (Dot)</td></tr>
		<tr><td>Dah</td><td><code>-</code> (Hyphen)</td></tr>
		<tr><td>Letter space</td><td><code> </code> (Space)</td></tr>
		<tr><td>Word space</td><td><code>/</code> (Slash)</td></tr>
	</table>
</div>

<p>
The result of converting "<var>MORSE CODE</var>" to International Morse code is as follows.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Signal Timing</h4>
<p>
When transmitting Morse code, there are strict ratios defined for the length of dits and dahs and the intervals between them.
Using the length of a dit as 1 unit, the length of each element is as follows.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Length</th><th>Description</th></tr>
		<tr><td>Dit</td><td>1 unit</td><td>A short signal tone</td></tr>
		<tr><td>Dah</td><td>3 units</td><td>A signal tone 3 times the length of a dit</td></tr>
		<tr><td>Intra-character gap</td><td>1 unit</td><td>Silence between dits and dahs within the same character</td></tr>
		<tr><td>Letter space</td><td>3 units</td><td>Silence between different characters</td></tr>
		<tr><td>Word space</td><td>7 units</td><td>Silence between different words</td></tr>
	</table>
</div>

<p>
For example, when transmitting "<var>MORSE CODE</var>", the signal is sent with the following timing.
<code>▄</code> (<code>1</code>) represents a signal tone, and <code> </code> (<code>0</code>) represents silence.
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
In this way, all lengths are determined as integer ratios based on 1 unit of a dit, so accurate ratios can be maintained even when the transmission speed is changed.
Communication speed is generally expressed in WPM (Words Per Minute), defined by how many times the reference word "PARIS" can be transmitted per minute.
For example, at 20 WPM, one dit unit is approximately 60 milliseconds.
</p>


<h3>International Morse Code</h3>
<p>
International Morse code is the worldwide standard Morse code for representing alphabets, numbers, and symbols.
It is defined by the International Telecommunication Union (ITU) standard (ITU-R M.1677-1).
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

<h4>Numbers</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Symbols</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Extended Codes</h4>
<p>
Among characters with diacritical marks, only "É" is defined by the International Telecommunication Union (ITU). All other codes are defined as "extended codes" established by national authorities or conventions.
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


<h3>Japanese Morse Code (Wabun Code)</h3>
<p>
Japanese Morse code is a Morse code system designed to represent Japanese Hiragana and Katakana characters.
The character ordering is based on the traditional "Iroha" order.
</p>

<h4>Hiragana / Katakana (Iroha order)</h4>
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
		<tr><th>゛ (Dakuten / Voiced mark)</th><td>..</td><th>゜ (Handakuten / Semi-voiced mark)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) and Handakuten (゜) have their own independent codes. They are expressed by placing the Dakuten code (<code>..</code>) or Handakuten code (<code>..--.</code>) after the base character code, separated by a letter space.
For example, "ガ" is a combination of "カ (<code>.-..</code>)" and "゛ (<code>..</code>)", resulting in "<code>.-.. ..</code>".
</p>

<h4>Numbers</h4>
<p>
Same as International Morse code.
</p>

<h4>Symbols</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Russian (Cyrillic) Morse Code</h3>
<p>
This is a Morse code system designed to represent Cyrillic characters used in Russian and other languages.
The codes are not arranged in Cyrillic alphabetical order, but are assigned the same codes as the corresponding Latin characters (International Morse code) based on their pronunciation.
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

<h4>Numbers</h4>
<p>
Same as International Morse code.
</p>

<h4>Symbols</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>History of Morse Code</h3>
<p>
Morse code was developed in the 1830s by American inventor Samuel Morse and Alfred Vail for early telegraph machines.
The first Morse code transmitted only numbers, which were then converted to words using a dictionary on the receiving end. Later, Vail expanded the system to include the alphabet as we know it today.
More frequently used letters (e.g., <code>E</code>) were assigned shorter codes (<code>.</code>), while less frequently used letters (e.g., <code>Q</code>) were assigned longer codes (<code>--.-</code>), optimizing communication efficiency.
</p>

<p>
Subsequently, driven by the demand for international communication, particularly in Europe, the alphabet assignments were revised, evolving into the "International Morse Code" used worldwide today.
In Japan, when telegraph technology was introduced from the late Edo period to the early Meiji era, the "Wabun Morse Code" was devised by uniquely assigning Morse codes to the Japanese Kana syllabary.
A distinctive feature of the Wabun Morse code is that codes are assigned following the traditional "Iroha" order ("イロハニホヘト…").
</p>

<p>
For many years, Morse code was widely used around the world in maritime, aviation, military, and commercial communications.
However, with the development of satellite and digital communications, Morse code largely completed its role as an official means of distress communication with the transition to the GMDSS (Global Maritime Distress and Safety System) in the 1990s.
</p>

<p>
Today, Morse code is primarily used in amateur radio and some navigational radio beacons.
However, because it enables communication using only a very simple on-off mechanism — such as flashing lights, short and long tones, or even blinking and tapping on a wall — its value as an ultimate communication method in situations such as natural disasters remains completely undiminished even in the modern era.
The famous distress signal "SOS" was adopted not for any linguistic meaning, but because the combination of "<code>... --- ...</code>" is easy to transmit and easy to recognize.
</p>
