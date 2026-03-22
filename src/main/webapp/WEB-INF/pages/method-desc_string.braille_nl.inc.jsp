<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Braille</h3>
<p>
Braille is een tastbaar schriftsysteem bestaande uit voelbare puntjes, ontworpen om gelezen te worden met de vingertoppen door blinde en slechtziende personen.
Het vertegenwoordigt een teken of symbool door een combinatie van 6 punten gerangschikt in 3 rijen en 2 kolommen (6-punts braille).
Dit systeem wordt wereldwijd gebruikt en de regels voor de toewijzing van de punten variëren afhankelijk van de taal.
</p>


<h3>Engels Braille (UEB Grade 1)</h3>
<p>
Deze tool voert conversie uit op basis van "Unified English Braille (UEB)" Grade 1 (Onverkort Engels Braille: methode waarbij het alfabet letter voor letter wordt gespeld), dat als de standaard wordt gebruikt in de Engelstalige wereld. Kortschrift (Grade 2) wordt niet ondersteund.
</p>

<p>Conversievoorbeeld:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alfabet</h4>
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
Voor hoofdletters wordt het hoofdletterteken (<code>⠠</code>) voor de desbetreffende letter geplaatst.
Bovendien bepaalt in het geval van opeenvolgende hoofdletters een "hoofdletterwoordteken (<code>⠠⠠</code>)" hoofdletters voor het hele woord; een "hoofdletterpassageteken (<code>⠠⠠⠠</code>)" voor meerdere woorden; en het "hoofdletterbeëindigingsteken (<code>⠠⠄</code>)" wordt gebruikt aan het einde van de toepassing ervan.
</p>

<h4>Cijfers</h4>
<p>
Cijfers worden weergegeven door er een cijferteken (<code>⠼</code>) voor te plaatsen. De tekens die daarop volgen, zullen worden behandeld als getallen, waarbij het braille van de letters 'a' tot en met 'j' wordt geleend.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Cijferteken</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Als een kleine letter a-j direct volgt op een getal, wordt een Grade 1-teken (<code>⠰</code>) ingevoegd om verwarring met cijfers te voorkomen.
</p>

<h4>Belangrijkste symbolen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Komma)</th><td>⠂</td><th>. (Punt)</th><td>⠲</td><th>! (Uitroepteken)</th><td>⠖</td><th>? (Vraagteken)</th><td>⠦</td></tr>
		<tr><th>' (Apostrof)</th><td>⠄</td><th>- (Koppelteken)</th><td>⠤</td><th>; (Puntkomma)</th><td>⠆</td><th>: (Dubbele punt)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Aanhalingstekens en haakjes</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Dubbele non-directionele)</th><td>⠦ *** ⠴</td><th>' *** ' (Enkele non-directionele)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Dubbele directionele)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Enkele directionele)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Chevron / Guillemet)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Hoekige haakjes)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Ronde haakjes)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Vierkante haakjes)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Accolades)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Japans Braille</h3>
<p>
Japans braille wordt weergegeven door zinnen eerst om te zetten in kana (het Japanse lettergrepenschrift) en ze daarna te converteren naar braille.
</p>

<p>Conversievoorbeeld:</p>
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

<h4>Belangrijkste symbolen</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Japanse komma)</th><td>⠰</td><th>。 (Japanse punt)</th><td>⠲</td><th>？ (Vraagteken)</th><td>⠢</td><th>！ (Uitroepteken)</th><td>⠖</td></tr>
		<tr><th>・ (Zwevende punt)</th><td>⠐</td><th>〜 (Golfstreepje)</th><td>⠤⠤</td><th>＆ (Ampersand)</th><td>⠰⠯</td><th>％ (Procentteken)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Aanhalingstekens en haakjes</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Jap. enkele aanhalingstekens)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Jap. dubbele aanhalingstekens)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Brede ronde haakjes)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Dubbele ronde haakjes)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Buitenlands alfabet</h4>
<p>
Wanneer Engelse of andere vreemde alfabetten worden gemengd in Japanse tekst, wordt een vreemde-taalteken (<code>⠰</code>) direct vóór het alfabet ingevoegd, gevolgd door het equivalente UEB-braille.
</p>

<h4>Cijfers</h4>
<p>
De regels zijn identiek aan die voor het Engelse braille.
</p>

<h4>Woordspatiëring (Wakachigaki)</h4>
<p>
DenCode zal niet automatisch enige woordscheiding van natuurlijke Japanse woorden invoegen, maar zal het de ingevoerde tekenreeks zo converteren. Voer voor een meer nauwkeurige Japanse braillevertaling de tekst in waarvan u de woorden vooraf hebt gescheiden met spaties (Wakachigaki).
</p>


<h3>De Geschiedenis van Braille</h3>
<p>
Hedendaags 6-punts braille werd in 1825 uitgevonden door de Franse Louis Braille.
Hij verloor zijn gezichtsvermogen door een ongeluk tijdens zijn jeugd en perfectioneerde het raamwerk van dit systeem toen hij pas 15 jaar oud was.
Voorgaande leessystemen voor visueel gehandicapten leunden over het algemeen op bedrukte verheven standaard alfabetische letters op papier, wat extreem zwaar was in zowel de lezing als notatie per hand.
Het baanbrekende gebruik van 6 uitspringende punten creëerde de middelen voor consumenten om het buitengewoon in een sneltreinvaart via de vingertoppen te ontcijferen, alswel hen ongeremd te verstrekken het zonder moeite via exclusieve apparatuur te doceren. Tegenwoordig is alleen al het woord "Braille" synoniem komen te staan voor puntjesschrift en wereldbolwijd diep ingebed geraakt.
</p>
<p>
In wat bof betreft op het eiland Japan werd beraadslaging ter omvatting aangaande brailletaal aangeslingerd halverwege richting de Meiji-periode.
In het jaar van 1890 (Meiji 23), werd Japans Braille gebarricadeerd met 6 punten — gedompeld in de opbouw behorend tot het toenmalige 'kana' zoals in tegenwoordig hedendaags tijdsgebruik, doorontwikkeld met definitieve hand door Kuraji Ishikawa; hij is toen leraar gesetteld ten huize van Tokyo School of the Blind and Dumb.
Klaarblijkelijk 1 november—daarbij is in die tijd destemeer het systeem dewelke Ishikawa stichtte gevestigd als officiële regulering — markeert nog steeds als de jaargelijks geliefkoosde "Dag van Braille".
</p>

<h3>Evolutie in westerse braillesystemen en het UEB-verbond</h3>
<p>
De Engelse wereldtaal sfeer is bedolven onder eeuwenoude tradities die gepaard gingen in het gebruik nemen van landenspecifieke uiteenlopende brailleregels, gebonden op basis van locatie.
Om een illustratief beeld te vangen: ter overzijde in landstroken dewelke de VS dekken regeerde het zogenaamde "English Braille, American Edition (EBAE)"-sjabloon dominant vooraan en nam de leiding in normen ten opzichte van wat men normalerwijze kon vinden binnen de grens van de VK, met de aanhang der veralgemende "Standard English Braille (SEB)" doctrine insteek. Ook al gold de algemene paraplu theorieëel voor een verenigd Engels begrip, resulteerden te pas en ten onpas de interpretaties met aanwezige scheuren met verzwakte fundamenten onder invloed van uiteenwijkende regeltjes van inkortingen dan wel toewijzing geruïneerd te raken.
Dit gold bovendien ook parallel voor speciale sectorkodes dewelke in wezen uiterst complexiteit uitstraalden indien toegewijd aan zaken dekkende elementaire wiskunde en de wetenschappelijke vertakking (zoals the Nemeth Code-reglementen) of in het stuurboord geankerde methodologie gelinked naar computer terminilogie as "Computer Braille Code", waarvoor afgezonderde besturingspaden zijn opgebouwd, welke beurteling op hun kant disproportioneel barrières opwekten aan nieuwkomers én softwaretechnici geassocieerd binnen de tak overbelastten en het baken zwaar onder vuur brachten.
</p>
<p>
Om als reactie komaf te makelen middels transatlantische knelpunten dewelke stelselmatig te wijten vormden naar de hierboven geviseerde in het land van herkomst verankerde knelpunten, zowel als de dungezaaide ondoorlatbaarheid in de specialistische domeincode keten die onbeheersbaar waren gebloeid, is men per direct in de intro van de jaren 1990 begonnen de schouders te leggen tot de bouwsteen en unificatie ter streving in een gebundelde wereldstandaard te hanteren.
Van dat zaad kwam het <strong>Unified English Braille (UEB)</strong> netwerk uiteindelijk te bloeien, om met trots de gouden wereldwijde standaard fakkel dezer actuele tijden binnen de complete Engelse vertalingsarena globaal uit te blazen en het heft de kroon onbetwist rondom haar hals stervast te plaatsen.
</p>
<p>
Met het visier vooraleerst starend in spiegelbeeld gerelateerd naar de fundamenten der afgeslankte theorie dewelke in het archief der oudere verenigde tradities inclusief die EBAE variant golden is een ongewonde kers op de taart met reuze opschudding gekenmerkt te relateren aan de grondige verbuiging bij het afkalven alsook opschuiven qua het strikt afstellen gerelationeerd omtrent reeksen tekens van kordate verkortingen ten tijde het Grade 2 kortschrift protocol.
Ooit trachtte men sturend op klemtoning onder het credo te bouwen het tekstgehalte verwoed onder te deconstrueren zo marginaal gecondenseerd verlaagd denkbaar, hetgeen zich belichaamden in verbasterde ingekorte elementjes dewelke (Contractions)-label droegen maar bij deze de UEB vloot het resoluut besloot in de archiefkasten te walsen betreffend enkele zwaar ambigue en tot misverstand bevattelijke varianten die de deur werden gewezen (verondersteld u te oriënteren over 'ble' alsook de partikels als 'com').
Gelijktijdig zijn aanpak normeringen eveneens aangenomen dewelke de stelligheid betonen dewelke weigeren met abolute hand op verdere applicatie omtrent afcorting toepassingen op het web georiënteerde trajecten alzijnde het URL weblinks plus mailadressen aangaande, dan wel per contrast rigide op te tuigen langs spikssplinternieuwe regulerigsvoorschriften ingebracht, gebalanceerd en ingebakken conform ons nu en als heersende digitale civilisatie gerust als hoekstenen kunnen vertrouwen (denkt u maar op onontkomelijke de basiselementen omringende het teken van het apenstaartje <code>@</code> dan wel in het specifiek den slash-staart <code>/</code> logovermesting.
</p>
<p>
Door de huidige gang van de kalender in te blikken valt onlosmakelijk met bewijs te staven hoezeer robuuste Angelsaksische mastodont landenkernen, met op de voorpost front inbegrepen van dat statige Amerika (US) in de tandem getrokken nabij Engeland (UK), een Australië vergezeld en de bondgenoten Canada mitsgaders het eilandenrijk in de pacific met name Nieuw-Zeeland tot in perfectie zonder blikken de volledige omzwaai koers ten behoever der transitie om zich als één robuust bolwerk onder die noemer van The UEB-leest de zegen op te plannen voltooiden. Als reactie daarop is het van naturen volkomen gewaar dat van die boeg de aanvoer uit die hoek voor zowel wat de studielessen als naslagverken omvattende Engels Braille de facto resoluut, stipt ten nadele in de theorie aan het stuurwiel sturing krijgen naargelaten langs dit besloten en uitgestippelde traject der de UEB specificatie overheden.
</p>
