<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O kodzie Morse'a</h3>
<p>
Kod Morse'a to system kodowania telegraficznego, który reprezentuje litery i symbole za pomocą kombinacji krótkich sygnałów (Dit) i długich sygnałów (Dah).
</p>

<p>
DenCode używa następujących symboli do reprezentacji kodu Morse'a.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nazwa</th><th>Symbol</th></tr>
		<tr><td>Dit (kropka)</td><td><code>.</code> (Kropka)</td></tr>
		<tr><td>Dah (kreska)</td><td><code>-</code> (Myślnik)</td></tr>
		<tr><td>Odstęp między znakami</td><td><code> </code> (Spacja)</td></tr>
		<tr><td>Odstęp między wyrazami</td><td><code>/</code> (Ukośnik)</td></tr>
	</table>
</div>

<p>
Wynik konwersji "<var>MORSE CODE</var>" na międzynarodowy kod Morse'a jest następujący.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Taktowanie sygnału</h4>
<p>
Podczas nadawania kodu Morse'a obowiązują ścisłe proporcje długości ditów i dahów oraz odstępów między nimi.
Przy długości dita równej 1 jednostce, długość każdego elementu jest następująca.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Długość</th><th>Opis</th></tr>
		<tr><td>Dit</td><td>1 jednostka</td><td>Krótki dźwięk sygnału</td></tr>
		<tr><td>Dah</td><td>3 jednostki</td><td>Dźwięk sygnału o długości 3 razy większej niż dit</td></tr>
		<tr><td>Odstęp wewnątrz znaku</td><td>1 jednostka</td><td>Cisza między ditami i dahami w obrębie tego samego znaku</td></tr>
		<tr><td>Odstęp między znakami</td><td>3 jednostki</td><td>Cisza między różnymi znakami</td></tr>
		<tr><td>Odstęp między wyrazami</td><td>7 jednostek</td><td>Cisza między różnymi wyrazami</td></tr>
	</table>
</div>

<p>
Na przykład, podczas nadawania "<var>MORSE CODE</var>", sygnał jest wysyłany z następującym taktowaniem.
<code>▄</code> (<code>1</code>) oznacza dźwięk sygnału, a <code> </code> (<code>0</code>) oznacza ciszę.
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
W ten sposób wszystkie długości są określone jako proporcje całkowite w oparciu o 1 jednostkę dita, dzięki czemu dokładne proporcje mogą być zachowane nawet przy zmianie prędkości transmisji.
Prędkość komunikacji jest zazwyczaj wyrażana w WPM (Words Per Minute) i definiowana przez liczbę nadań słowa referencyjnego „PARIS" na minutę.
Na przykład przy 20 WPM jedna jednostka dita wynosi ok. 60 milisekund.
</p>


<h3>Międzynarodowy kod Morse'a</h3>
<p>
Międzynarodowy kod Morse'a to światowy standard kodu Morse'a do reprezentowania liter, cyfr i symboli.
Jest zdefiniowany przez standard Międzynarodowego Związku Telekomunikacyjnego (ITU) (ITU-R M.1677-1).
</p>

<h4>Alfabet</h4>
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

<h4>Cyfry</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Kody rozszerzone</h4>
<p>
Wśród znaków ze znakami diakrytycznymi, tylko „É" jest zdefiniowany przez Międzynarodowy Związek Telekomunikacyjny (ITU). Wszystkie inne kody są zdefiniowane jako „kody rozszerzone" ustanowione przez władze krajowe lub przez konwencję.
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


<h3>Japoński kod Morse'a (kod Wabun)</h3>
<p>
Japoński kod Morse'a to system kodu Morse'a przeznaczony do reprezentowania japońskich znaków Hiragana i Katakana.
Kolejność znaków opiera się na tradycyjnej kolejności „Iroha".
</p>

<h4>Hiragana / Katakana (kolejność Iroha)</h4>
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
		<tr><th>゛ (Dakuten / Znak dźwięczności)</th><td>..</td><th>゜ (Handakuten / Znak półdźwięczności)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) i Handakuten (゜) mają własne niezależne kody. Są wyrażane przez umieszczenie kodu Dakuten (<code>..</code>) lub kodu Handakuten (<code>..--.</code>) po kodzie znaku podstawowego, oddzielonego odstępem między znakami (spacją).
Na przykład, „ガ" to kombinacja „カ (<code>.-..</code>)" i „゛ (<code>..</code>)", co daje „<code>.-.. ..</code>".
</p>

<h4>Cyfry</h4>
<p>
Identyczne z międzynarodowym kodem Morse'a.
</p>

<h4>Symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Rosyjski (cyrylicki) kod Morse'a</h3>
<p>
To system kodu Morse'a przeznaczony do reprezentowania znaków cyrylickich używanych w języku rosyjskim i innych językach.
Kody nie są ułożone w cyrylicznym porządku alfabetycznym, lecz mają przypisane te same kody co odpowiadające im litery łacińskie (międzynarodowy kod Morse'a) na podstawie ich wymowy.
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

<h4>Cyfry</h4>
<p>
Identyczne z międzynarodowym kodem Morse'a.
</p>

<h4>Symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Historia kodu Morse'a</h3>
<p>
Kod Morse'a został opracowany w latach 30. XIX wieku przez amerykańskiego wynalazcę Samuela Morse'a i Alfreda Vaila na potrzeby pierwszych maszyn telegraficznych.
Pierwszy kod Morse'a przesyłał jedynie cyfry, które następnie konwertowano na słowa za pomocą słownika po stronie odbiorczej. Później Vail rozszerzył system o alfabet w postaci, jaką znamy dzisiaj.
Częściej używanym literom (np. <code>E</code>) przypisano krótsze kody (<code>.</code>), a rzadziej używanym (np. <code>Q</code>) — dłuższe kody (<code>--.-</code>), optymalizując efektywność komunikacji.
</p>

<p>
Następnie, pod wpływem zapotrzebowania na komunikację międzynarodową, zwłaszcza w Europie, przypisania liter zostały zrewidowane i ewoluowały w „Międzynarodowy Kod Morse'a" używany dziś na całym świecie.
W Japonii, podczas wprowadzania technologii telegraficznej od schyłku ery Edo do początków ery Meiji, opracowano „kod Morse'a Wabun", przypisując w unikalny sposób kody Morse'a do japońskiego sylabariusza Kana.
Cechą charakterystyczną kodu Morse'a Wabun jest to, że kody są przypisane zgodnie z tradycyjną kolejnością „Iroha" („イロハニホヘト…").
</p>

<p>
Przez wiele lat kod Morse'a był szeroko stosowany na całym świecie w komunikacji morskiej, lotniczej, wojskowej i handlowej.
Jednakże, wraz z rozwojem komunikacji satelitarnej i cyfrowej, kod Morse'a w dużej mierze zakończył swoją rolę jako oficjalny środek komunikacji awaryjnej wraz z przejściem na GMDSS (Światowy Morski System Łączności Alarmowej i Bezpieczeństwa) w latach 90.
</p>

<p>
Obecnie kod Morse'a jest stosowany głównie w radiu amatorskim i w niektórych radiolatarniach nawigacyjnych.
Jednak ze względu na to, że umożliwia komunikację za pomocą bardzo prostego mechanizmu włącz-wyłącz — jak migające światła, krótkie i długie dźwięki, a nawet mruganie oczami i pukanie w ścianę — jego wartość jako ostatecznego środka komunikacji w sytuacjach takich jak klęski żywiołowe pozostaje całkowicie nienaruszona nawet w epoce współczesnej.
Słynny sygnał alarmowy „SOS" został przyjęty nie ze względu na jakiekolwiek znaczenie językowe, lecz dlatego, że kombinacja „<code>... --- ...</code>" jest łatwa do nadania i łatwa do rozpoznania.
</p>
