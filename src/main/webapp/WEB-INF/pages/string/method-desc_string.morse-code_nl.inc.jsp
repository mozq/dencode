<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over morsecode</h3>
<p>
Morsecode is een telegraafcoderingssysteem dat letters en symbolen weergeeft door middel van combinaties van korte signalen (Dit) en lange signalen (Dah).
</p>

<p>
DenCode gebruikt de volgende symbolen om morsecode weer te geven.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Naam</th><th>Symbool</th></tr>
		<tr><td>Dit (kort signaal)</td><td><code>.</code> (Punt)</td></tr>
		<tr><td>Dah (lang signaal)</td><td><code>-</code> (Streepje)</td></tr>
		<tr><td>Letterafstand</td><td><code> </code> (Spatie)</td></tr>
		<tr><td>Woordafstand</td><td><code>/</code> (Schuine streep)</td></tr>
	</table>
</div>

<p>
Het resultaat van de conversie van "<var>MORSE CODE</var>" naar internationale morsecode is als volgt.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Signaaltiming</h4>
<p>
Bij het verzenden van morsecode zijn er strikte verhoudingen vastgelegd voor de lengte van dits en dahs en de intervallen ertussen.
Als de lengte van een dit wordt genomen als 1 eenheid, is de lengte van elk element als volgt.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Element</th><th>Lengte</th><th>Beschrijving</th></tr>
		<tr><td>Dit</td><td>1 eenheid</td><td>Een kort signaaltoon</td></tr>
		<tr><td>Dah</td><td>3 eenheden</td><td>Een signaaltoon van 3 keer de lengte van een dit</td></tr>
		<tr><td>Intra-tekenafstand</td><td>1 eenheid</td><td>Stilte tussen dits en dahs binnen hetzelfde teken</td></tr>
		<tr><td>Letterafstand</td><td>3 eenheden</td><td>Stilte tussen verschillende tekens</td></tr>
		<tr><td>Woordafstand</td><td>7 eenheden</td><td>Stilte tussen verschillende woorden</td></tr>
	</table>
</div>

<p>
Bijvoorbeeld, bij het verzenden van "<var>MORSE CODE</var>" wordt het signaal met de volgende timing verzonden.
<code>▄</code> (<code>1</code>) vertegenwoordigt een signaaltoon, en <code> </code> (<code>0</code>) vertegenwoordigt stilte.
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
Op deze manier worden alle lengtes bepaald als gehele verhoudingen op basis van 1 eenheid van een dit, zodat nauwkeurige verhoudingen behouden kunnen blijven, zelfs wanneer de zendsnelheid wordt gewijzigd.
De communicatiesnelheid wordt over het algemeen uitgedrukt in WPM (Words Per Minute), gedefinieerd door hoe vaak het referentiewoord "PARIS" per minuut kan worden verzonden.
Bijvoorbeeld, bij 20 WPM is één dit-eenheid ongeveer 60 milliseconden.
</p>


<h3>Internationale morsecode</h3>
<p>
De internationale morsecode is de wereldwijde standaard morsecode voor het weergeven van letters, cijfers en symbolen.
Hij is gedefinieerd door de standaard van de Internationale Telecommunicatie Unie (ITU) (ITU-R M.1677-1).
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

<h4>Cijfers</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Symbolen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Uitgebreide codes</h4>
<p>
Van de tekens met diakritische tekens is alleen "É" gedefinieerd door de Internationale Telecommunicatie Unie (ITU). Alle andere codes zijn gedefinieerd als "uitgebreide codes" die zijn vastgesteld door nationale autoriteiten of door conventie.
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


<h3>Japanse morsecode (Wabun-code)</h3>
<p>
De Japanse morsecode is een morsecodesysteem ontworpen om Japanse Hiragana- en Katakana-tekens weer te geven.
De tekenvolgorde is gebaseerd op de traditionele "Iroha"-volgorde.
</p>

<h4>Hiragana / Katakana (Iroha-volgorde)</h4>
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
		<tr><th>゛ (Dakuten / Stemhebbendteken)</th><td>..</td><th>゜ (Handakuten / Half-stemhebbendteken)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Dakuten (゛) en Handakuten (゜) hebben hun eigen onafhankelijke codes. Ze worden weergegeven door na de basistekencode de Dakuten-code (<code>..</code>) of Handakuten-code (<code>..--.</code>) te plaatsen, gescheiden door een letterafstand (spatie).
Bijvoorbeeld, "ガ" is een combinatie van "カ (<code>.-..</code>)" en "゛ (<code>..</code>)", wat resulteert in "<code>.-.. ..</code>".
</p>

<h4>Cijfers</h4>
<p>
Identiek aan de internationale morsecode.
</p>

<h4>Symbolen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Russische (Cyrillische) morsecode</h3>
<p>
Dit is een morsecodesysteem ontworpen om Cyrillische tekens weer te geven die in het Russisch en andere talen worden gebruikt.
De codes zijn niet gerangschikt in Cyrillische alfabetische volgorde, maar krijgen dezelfde codes als de overeenkomstige Latijnse letters (internationale morsecode) op basis van hun uitspraak.
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

<h4>Cijfers</h4>
<p>
Identiek aan de internationale morsecode.
</p>

<h4>Symbolen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Geschiedenis van morsecode</h3>
<p>
Morsecode werd in de jaren 1830 ontwikkeld door de Amerikaanse uitvinder Samuel Morse en Alfred Vail voor de vroege telegraafmachines.
De eerste morsecode verzond alleen cijfers, die vervolgens met een woordenboek aan de ontvangstzijde in woorden werden omgezet. Later breidde Vail het systeem uit met het alfabet zoals we het nu kennen.
Vaker gebruikte letters (bijv. <code>E</code>) kregen kortere codes (<code>.</code>), terwijl minder gebruikte letters (bijv. <code>Q</code>) langere codes (<code>--.-</code>) kregen, om de communicatie-efficiëntie te optimaliseren.
</p>

<p>
Vervolgens werden de lettertoewijzingen herzien door de vraag naar internationale communicatie, met name in Europa, en ontwikkelde het zich tot de "Internationale Morsecode" die vandaag wereldwijd wordt gebruikt.
In Japan werd bij de introductie van de telegraaftechnologie van de late Edo-periode tot de vroege Meiji-periode de "Wabun-morsecode" bedacht door op unieke wijze morsecodes toe te wijzen aan het Japanse Kana-lettergrepensysteem.
Een opvallend kenmerk van de Wabun-morsecode is dat de codes worden toegewezen volgens de traditionele "Iroha"-volgorde ("イロハニホヘト…").
</p>

<p>
Gedurende vele jaren werd morsecode wereldwijd op grote schaal gebruikt in maritieme, luchtvaart-, militaire en commerciële communicatie.
Met de ontwikkeling van satelliet- en digitale communicatie heeft morsecode zijn rol als officieel noodcommunicatiemiddel grotendeels beëindigd met de overgang naar het GMDSS (Global Maritime Distress and Safety System) in de jaren 1990.
</p>

<p>
Tegenwoordig wordt morsecode voornamelijk gebruikt in de amateurradio en bij sommige navigatieradiobakens.
Omdat het echter communicatie mogelijk maakt met een zeer eenvoudig aan-uit mechanisme — zoals knipperende lichten, korte en lange tonen, of zelfs knipogen en kloppen op een muur — blijft de waarde ervan als ultiem communicatiemiddel in situaties zoals natuurrampen zelfs in het moderne tijdperk volledig behouden.
Het beroemde noodsignaal "SOS" werd niet om een taalkundige betekenis gekozen, maar omdat de combinatie "<code>... --- ...</code>" gemakkelijk te verzenden en gemakkelijk te herkennen is.
</p>
