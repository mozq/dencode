<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O systemie Braille'a</h3>
<p>
Braille to dotykowy system pisma złożony z wypukłych punktów, zaprojektowany do czytania opuszkami palców przez osoby niewidome i słabowidzące.
Reprezentuje znak lub symbol poprzez kombinację 6 punktów ułożonych w 3 rzędach i 2 kolumnach (braille 6-punktowy).
System ten jest używany na całym świecie, a zasady przypisywania punktów różnią się w zależności od języka.
</p>


<h3>Angielski Braille (UEB Grade 1)</h3>
<p>
To narzędzie służy do konwersji w oparciu o "Zunifikowany Braille Angielski (UEB - Unified English Braille)" Grade 1 (Braille angielski nieskrócony: metoda, która zapisuje litery alfabetu po kolei), używany jako standard w krajach anglojęzycznych. Formy skrócone (Grade 2) nie są obsługiwane.
</p>

<p>Przykład konwersji:</p>
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
W przypadku wielkich liter, znak wielkiej litery (<code>⠠</code>) umieszcza się przed literą.
Ponadto, w przypadku następujących po sobie wielkich liter, "znak wielkiej litery dla całego słowa (<code>⠠⠠</code>)" ustala wielkie litery dla pojedynczego słowa; "znak wielkiej litery dla fragmentu (<code>⠠⠠⠠</code>)" dla wielu słów; a "znak zakończenia wielkich liter (<code>⠠⠄</code>)" jest używany na końcu ich stosowania.
</p>

<h4>Liczby</h4>
<p>
Liczby są reprezentowane przez poprzedzający znak liczby (<code>⠼</code>). Znaki po tym znaku będą traktowane jako cyfry, zapożyczając oznaczenia brajlowskie od liter od a do j.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Znak liczby</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Jeśli po liczbie bezpośrednio następuje mała litera a-j, wstawia się wskaźnik Grade 1 (<code>⠰</code>), aby zapobiec pomyleniu z cyframi.
</p>

<h4>Główne symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Przecinek)</th><td>⠂</td><th>. (Kropka)</th><td>⠲</td><th>! (Wykrzyknik)</th><td>⠖</td><th>? (Znak zapytania)</th><td>⠦</td></tr>
		<tr><th>' (Apostrof)</th><td>⠄</td><th>- (Dywiz)</th><td>⠤</td><th>; (Średnik)</th><td>⠆</td><th>: (Dwukropek)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Cudzysłowy i nawiasy</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Zwykłe cudzysł. podwójne)</th><td>⠦ *** ⠴</td><th>' *** ' (Zwykłe cudzysł. pojedyncze)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Kierunkowe cudzysł. podw.)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Kierunkowe cudzysł. poje.)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Cudzysłowy ostrokątne)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Nawiasy ostre)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Nawiasy okrągłe)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Nawiasy kwadratowe)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Nawiasy klamrowe)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Japoński Braille</h3>
<p>
Japoński braille jest tworzony przez najpierw przetłumaczenie zdań na kana (japoński sylabariusz), a następnie konwersję na odpowiedniki z systemu Braille'a.
</p>

<p>Przykład konwersji:</p>
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

<h4>Główne symbole</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Japoński przecinek)</th><td>⠰</td><th>。 (Japońska kropka)</th><td>⠲</td><th>？ (Znak zapytania)</th><td>⠢</td><th>！ (Wykrzyknik)</th><td>⠖</td></tr>
		<tr><th>・ (Półpauza/Środkowa kro.)</th><td>⠐</td><th>〜 (Falka)</th><td>⠤⠤</td><th>＆ (Ampersand)</th><td>⠰⠯</td><th>％ (Znak procentu)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Cudzysłowy i nawiasy</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Poj. cudzysł. japońskie)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Podw. cudzysł. japońskie)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Szerokie naw. okrągłe)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Podwójne naw. okrągłe)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alfabet obcy</h4>
<p>
Gdy alfabet angielski lub inny obcojęzyczny przeplata się z japońskim tekstem, zaraz przed alfabetem wstawiany jest znak języka obcego (<code>⠰</code>), a po nim następuje odpowiednik alfabetu Braille'a UEB.
</p>

<h4>Liczby</h4>
<p>
Zasady są takie same jak w przypadku alfabetu Braille'a w Angielskim.
</p>

<h4>Rozdzielanie słów (Wakachigaki)</h4>
<p>
DenCode nie wstawia automatycznie żadnych odstępów między wyrazami naturalnych japońskich znaków; po prostu konwertuje podany ciąg znaków, z którym został wygenerowany. W celu uzyskania dokładniejszego tłumaczenia w japońskim Braille'u należy wcześniej wprowadzić tekst ze spacjami rozdzielającymi jednostki wyrazowe (Wakachigaki).
</p>


<h3>Historia alfabetu Braille'a</h3>
<p>
Współczesny 6-punktowy alfabet Braille'a został wynaleziony w 1825 roku przez Francuza Louisa Braille'a.
Stracił on wzrok na skutek wypadku w dzieciństwie i udoskonalił strukturę tego systemu będąc zaledwie 15-letnim chłopcem.
Poprzednie systemy czytania z myślą dla niedowidzących wykorzystywały w zasadzie wytłoczone ułożenia standardowych liter na papierze z wielkim trudem zarówno podczas samego pisania od ręki jak do odczytywania dotykiem poprzez zmysł czucia.
W zaledwie sześciopunktowym pionierskim wykorzystaniu o wypustach w pionie dało niesamowitą predyspozycję aby palce ze zwinnością i dużą prędkością czytały tekst opuszkami z łatwością, wprowadzając z powrotem swobodną naukę przy pomocy prostej i celowej konstrukcji urządzeń mechanicznych. Dzisiaj samo "Braille" we własnej domenie określa się terminem identycznym co pismo złożone do posługi z taktylnym znakiem dotykowego kodu punktacji stając znane we wszystkich rejonach w świecie.
</p>
<p>
Jeżeli idzie zaś, kiedy i poprzez Japonię zastanawiano ze wględu czy podbudowa wdrażania zaadoptowanego tego wynalazku by nadeszła tam to dyskurs podjęto podczas zapoczątkowania początków w samej Epoce Meiji.
Okazuje się, w r.1890 (Meiji 23), lokalizowane tradycyjne kody dla narodu z oparcia sylabowych podstaw brzmieniowych znanych do dnia dzisiejszego ('kana') stworzyły odnowiony japoński kod odniesienia zbudowany oparty dla struktury w całości sześciu kropkowanej o punkcie styku co domyślono i z sukcesem podsumowano i skończono u samego rąbka wysiłku dzięki wdrążeniom nauczyciela-Kuraji Ishikawy - zasłużonego profesora zatrudnionego Tokijskiej Szkoł dla Niewidomych.
Już data ustanowiona corocznie- tj. pierwszego od miesiąca Listopada - (data gdy właśnie sformalizowana techniczna strona Ishikawy została zaaprobowana) pozostało dniem zapisanym ugruntowane z okazji dedykowanemu poświeceniu zaszczytu przez to - określane "Dniem alfabetu Braille'a".
</p>

<h3>Ewolucja anglojęzycznych systemów znaków i standard UEB</h3>
<p>
Obszary wokół anglojęzycznego wpływu i rejon zdominowanego zasięgu przez długie dziesięciolecia nieustannie korzystał i posługiwał odrębni pod standardów kodu co różniły pod własną flagą krajów bazując oddzieliście po w strefach w regionu terytoria, jakie dzielił obywatele na zlokalizowaniu od lądu.
Rzeczą uderzająca na samym brzegu - dla Stanów Zjednoczonych przyjęło w domyślny format za punktem na standard oznaczający formę odnogi i miana jako „English Braille, American Edition (EBAE)”, kiedy odwrotem było gdzie po dominacji narzucające Królewstwo Wlk.Brytanii skłoniło się chwytając regułę nazewnictwem: „Standard English Braille (SEB)”. Chociaż mowa płynąca była jedna i odnosił spornemu z jednego wspólnym systemie bazowego (angielski) to i przydział przypisane oznaczeń przy poszczególni czy modyfikacja zasad dot. dla reguły stosowania zapisu i skrócony pojęciowe stały skontrastowanie.
A wręcz rzuciło ułamki ze w całości wyalienowano, wydzielono lub autonomię uzyskane na wyłączne specjalistyczne normę - podchodzące wokół pojęci inżynieii włączająca i ścisłej czy wiedzy od przyrody co ukazuje ryczało ("Kodeks od system nemetha oznaczającego") tak jako komputery i sfer komputer (Komputerowe skody w oparciu systemu kodu języku). Gdzie tenże element obciążały bezpotrzebne błędy mylnych domysłów wśród uczniów przysposabianych do włożeniu, by uziemiło rzemieslników co stażowało by zaprosili rozwój co i wyparło w ogólny utrudni system stając tłem za murów nie byle oporem i uprzykrzało pojęcie od twórców.
</p>
<p>
Żeby zburzyć te ograniczenie do terytorialnych nieścisłości czy po to co aby okiełznać z gąszczu tych wybiórczo do specjalizowanych użyczonych kodowanych form - próba inicjatywny aby za jednym krokiem sprofilowały standard pod jedno-ogólnymi celowania co na świat obiega ukształtowały początek zaprogramowania toczyło w dekadach woków wejścia od początku tuż dziewięćdziesiątych.
Działanie wspólnego owocnego wysiłku spowodowały narodziny dla toku systemu odgórnego dzisiaj noszone po godłem co chrzczone w uformowani: <strong>The Unified English Braille (Unified angielskiego braille'a)</strong> w o skrótów znanej do ogółu (UEB) które od tego uświęcone światłowskiego standadowym do unikalnego użytku języku z od angielskiej ojczystych narodów w całym jej panteonie i ziem ogółem globalnego.
</p>
<p>
Wspomnieć w oczy czy o największym w widocznej w zmianie poprzez pryzmat system UEB kiedy z porównywane i przyporządkowane starych czy standard i całościowa jako ta reguły (takowego EBAE) co się kręci od restrukturyzowania dla ikony przy likwidacji (a też dla zaostrzony norm regulowanych) wśród znaku w zakresie skróceniowego. (stopień o ranga w Grade nr 2).
Za formami użyta przez tradycyjnej, pojęło z natychmiastowo stosować o komplikując uformowania by jak za najbardziej ściśniały rozmiaru znaku skomasowane dla ucięcia użyte "obiekty o wyrazie skrótowości" - jednak tak samo do nowo objętych dla systemu dla normy w UEB podeszło z bezwzględności - co rygorystyke usunęła za te same myląco-łudząco wyrazowo wielo i dysonansów co odniesieniami skrótów wyrzucono w drzwi wejściowe na dobre pożegnano (do ujaśnia z tym - na pojęcie „ble”, albo tych dla partią np. te o nazwie „com”).
Co oprócz na tym- to nadto zaprowadzono surowie normy co sprzeciwi się z cała moc w rygor czy kategorycznym zabranianią, wpisywanych tam skrótności w do formacie na pocztowych odniesieu z link (adres mail u nas adres i form sieci przy URL). Od i ponad wyżej rzucona z tego od punktu jest stety wprowadzenie form innowacyjnych gdzie od rygor z punktacji w ogóle wynalazku powołały standard ustrukturyzowanych i standaryzowanego symbol w poczet o to co cyfrowym formata u rasy- i z współczesnym rozwinięte z społeczeństwa na świecie wymaga za wymóg tytaniczne i potrzebuje tego na nową jakość dla pojęciu technice po formacie "małpy/zwiniętka: <code>@</code>", na wskroś znaku linii do biczowego pojęcia u form <code>/</code>, z uciętą od pochyłość. (tzw. zwany slesz u kresa ukośna).
</p>
<p>
I tak obok dotychczas momentalnego czasach bieżących dnianym do formacie można potwierdzić iż na główie przodując anglo stref po terytori państw ze Stan Zjednocz. Ameryki z u Wyspy Wielkiem o w bloku pańskim-Wielka Brytan. potem kraje u morskiego ze Australia, kraj gdzie z boku klonu ze Kanada we u granicę dla bezwykluczówek i Nowych od Nowej u Zeland z obszarów u reszto pozostał za obustronnym przejściowy ostatecznem z po do tego za systemie całkowito o sformalizowaniach ku z pod dachu od "UEB". Większo od odnóży do edukacja u sfer do kształcących materiało do cel oraz z literarnych tekst z angielszczyzna we za globie teraz rozeszła w powołań wydawcza do ogółów w ogóle opartego przy we rygor na bazy "UEB".
</p>
