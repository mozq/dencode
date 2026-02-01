<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Enigmie</h3>
<p>Enigma to maszyna szyfrująca wykorzystująca wirniki (rotory), służąca do szyfrowania i deszyfrowania wiadomości. Obsługuje szyfrowanie 26 liter od „A” do „Z”.</p>
<p>DenCode symuluje działanie następujących modeli Enigmy:</p>

<ul>
	<li>Enigma I</li>
	<li>Enigma M3</li>
	<li>Enigma M4 (U-boot Enigma)</li>
	<li>Norway Enigma "Norenigma"</li>
	<li>Sondermaschine (Maszyna specjalna)</li>
	<li>Enigma G "Zählwerk Enigma" (A28/G31)</li>
	<li>Enigma G G-312 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-260 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-111 (G31 Hungarian Enigma)</li>
	<li>Enigma D (Komercyjna Enigma A26)</li>
	<li>Enigma K (Komercyjna Enigma A27)</li>
	<li>Enigma KD (Enigma K z UKW-D)</li>
	<li>Swiss-K (Szwajcarski wariant Enigma K)</li>
	<li>Railway Enigma "Rocket I"</li>
	<li>Enigma T "Tirpitz" (Japońska Enigma)</li>
	<li>Spanish Enigma, okablowanie D</li>
	<li>Spanish Enigma, okablowanie F</li>
	<li>Spanish Enigma, Delta (A 16081)</li>
	<li>Spanish Enigma, Sonderschaltung / Delta (A 16101)</li>
</ul>

<p>Enigma składa się z następujących elementów: Znak wprowadzony z klawiatury (Tastatur) przechodzi przez łącznicę (Steckerbrett), walec wstępny (ETW, Eintrittswalze), 3 lub 4 wirniki (Walze), reflektor (UKW, Umkehrwalze), a następnie wraca tą samą drogą, aby wyświetlić zaszyfrowany znak na tablicy świetlnej (Lampenfeld). Zamiana znaków następuje na każdym etapie.</p>

<pre>
 UKW   Walze  Walze  Walze   ETW  (Stecker)
         3      2      1
 ___    ___    ___    ___    ___    ___
|   |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &lt; Klawiatura
| | |  |   |  |   |  |   |  |   |  |   |
| | |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &gt; Lampy
|   |  |   |  |   |  |   |  |   |  |   |
 ---    ---    ---    ---    ---    ---
</pre>

<p>Elementy takie jak walec wstępny, wirniki i reflektor mają wewnętrzne okablowanie, które zamienia 26 liter alfabetu. Na przykład wirnik „I” w Enigmie I zamienia „A” na „E”. Jeśli znak wracający z reflektora to „J”, zostanie zamieniony na „Z” w drodze powrotnej.</p>

<pre>
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ
</pre>

<p>Pełne okablowanie Enigmy I:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Wirnik</th><th>ABCDEFGHIJKLMNOPQRSTUVWXYZ</th></tr>
		<tr><td>ETW</td><td>ABCDEFGHIJKLMNOPQRSTUVWXYZ</td></tr>
		<tr><td>I</td><td>EKMFLGDQVZNTOWYHXUSPAIBRCJ</td></tr>
		<tr><td>II</td><td>AJDKSIRUXBLHWTMCQGZNPYFVOE</td></tr>
		<tr><td>III</td><td>BDFHJLCPRTXVZNYEIWGAKMUSQO</td></tr>
		<tr><td>IV</td><td>ESOVPZJAYQUIRHXLNFTGKDCMWB</td></tr>
		<tr><td>V</td><td>VZBRGITYUPSDNHLXAWMJQOFECK</td></tr>
		<tr><td>UKW-A</td><td>EJMZALYXVBWFCRQUONTSPIKHGD</td></tr>
		<tr><td>UKW-B</td><td>YRUHQSLDPXNGOKMIEBFZCWVJAT</td></tr>
		<tr><td>UKW-C</td><td>FVPJIAOYEDRZXWGCTKUQSBNMHL</td></tr>
	</table>
</div>

<p>Łącznica (Plugboard) pozwala na zamianę par liter za pomocą kabli. Znajduje się przed walcem wstępnym (ETW). Jeśli połączymy „A” i „M”, to „A” zamieni się na „M”, a „M” na „A”. Litery niepołączone pozostają bez zmian.</p>
<p>Wprowadzenie znaku powoduje obrót wirnika. Wirniki obracają się od prawej strony. Gdy wirnik osiągnie pozycję wycięcia (notch), powoduje obrót sąsiedniego wirnika po lewej stronie. Dzięki temu schemat połączeń zmienia się z każdym naciśnięciem klawisza.</p>
<p>Wirniki posiadają pierścienie (Ring). Zmiana ustawienia pierścienia przesuwa wewnętrzne okablowanie względem liter na obudowie. Np. w wirniku „I” przy ustawieniu pierścienia „A (01)”, „A” zamienia się na „E”, ale przy „B (02)” (przesunięcie o 1), „A” zamieni się na „K” (zgodnie z przesuniętym schematem).</p>

<pre>
Ring: A (01)
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ

Ring: B (02)
BCDEFGHIJKLMNOPQRSTUVWXYZA
||||||||||||||||||||||||||
FLNGMHERWAOUPXZIYVTQBJCSDK
</pre>

<p>Można konfigurować kolejność wirników (np. II, I, III) oraz ich pozycje początkowe. Niektóre modele pozwalają na wymianę lub konfigurację reflektora. Walec wstępny jest stały. Wszystkie te ustawienia stanowią klucz szyfrowania.</p>
<p>Przykład szyfrowania Enigmą I:</p>

<pre>
Wirniki               : UKW-A II I III
Ustawienie pierścieni : X M V  (24 13 22)
Pozycja początkowa    : A B L  (01 02 12)
Łącznica              : AM FI NV PS TU WZ

Tekst jawny        : SECRET
Tekst zaszyfrowany : LCGODU
</pre>

<p>Droga sygnału dla pierwszej litery „S” (wynik „L”):</p>

<pre>
S -&gt; P  : Łącznica
P -&gt; P  : ETW
P -&gt; L  : III
L -&gt; P  : I
P -&gt; W  : II
W -&gt; K  : UKW-A
K -&gt; Q  : II
Q -&gt; O  : I
O -&gt; L  : III
L -&gt; L  : ETW
L -&gt; L  : Łącznica
</pre>

<p>Pozycje wirników (Wejście + / Wyjście -) względem pierścieni:</p>

<pre>
           -      +       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Łącznica
           -   +          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           -   +          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           +  -           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               +-         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          -           +   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>

<p>Enigma jest symetryczna: ponowne wpisanie zaszyfrowanego tekstu przy tych samych ustawieniach daje tekst jawny. Wpisanie „L” da „S”.</p>

<pre>
L -&gt; L  : Łącznica
L -&gt; L  : ETW
L -&gt; O  : III
O -&gt; Q  : I
Q -&gt; K  : II
K -&gt; W  : UKW-A
W -&gt; P  : II
P -&gt; L  : I
L -&gt; P  : III
P -&gt; P  : ETW
P -&gt; S  : Łącznica
</pre>

<pre>
           +      -       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Łącznica
           +   -          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           +   -          
MNOPQRSTUVWXYZABCDEFGHIJKL  : III
           -  +           
BCDEFGHIJKLMNOPQRSTUVWXYZA  : I
               -+         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          +           -   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>


<h3>Ustawienia w DenCode</h3>

<h4>Kolejność wirników (Walzenlage)</h4>
<p>Wybór reflektora, wirników i ich kolejności.</p>
<p>Wirniki numeruje się od prawej (1, 2, 3), ale zapisuje od lewej. „UKW-A II I III” oznacza: Reflektor UKW-A, Wirnik lewy (3) II, Wirnik środkowy (2) I, Wirnik prawy (1) III.</p>
<p>Enigma M4 używa „cienkiego reflektora” i „cienkiego wirnika” (Beta/Gamma). W DenCode cienki wirnik jest traktowany jako wirnik nr 4. Przy UKW-D (zajmującym miejsce reflektora) nie można użyć 4 wirnika.</p>

<h4>Ustawienie pierścieni (Ringstellung)</h4>
<p>Określa przesunięcie okablowania wirnika względem litery na obudowie. W niektórych modelach Enigmy można również ustawić pierścień reflektora.</p>

<h4>Ustawienie pozycji (Grundstellung)</h4>
<p>Początkowa pozycja wirników. W niektórych modelach Enigmy możliwa jest również konfiguracja pozycji początkowej reflektora.</p>
<p>Często nazywana „Kluczem wiadomości” (Message key).</p>

<h4>Okablowanie łącznicy (Steckerverbindungen)</h4>
<p>Pary liter zamienianych na łącznicy.</p>
<p>W DenCode wpisuje się je jako pary oddzielone spacją, np. „AB CD EF GH IJ KL”. Oznacza to zamianę A&lt;-&gt;B, C&lt;-&gt;D itd.</p>

<h4>Uhr</h4>
<p>Uhr to urządzenie podłączane do łącznicy, pozwalające na wybór jednego z 40 ustawień okablowania (00-39). Łączy się z łącznicą za pomocą 20 kabli (10 par). Jeśli ustawienie Uhr wynosi „00”, odpowiada to bezpośredniemu połączeniu par na łącznicy.</p>
<p>Z Uhr można korzystać tylko w modelu Enigma I. Konfiguracja Uhr jest możliwa po uprzednim zdefiniowaniu 10 par połączeń na łącznicy.</p>

<h4>Okablowanie UKW-D</h4>
<p>UKW-D to reflektor z możliwością zmiany okablowania.</p>
<p>Standardowy reflektor ma układ „A-Z”. UKW-D ma układ „A-ZXWVUTSRQPON-MLKIHGFEDCB”, gdzie „A-Z” i „N-M” (B-O w standardzie) są połączone na stałe. Pozostałe 12 par można skonfigurować.</p>

<pre>
UKW-D  : A-ZXWVUTSRQPON-MLKIHGFEDCB
Normal : ABCDEFGHIJKLMNOPQRSTUVWXYZ
</pre>

<p>Dostępne dla Enigma I, Enigma M4, Enigma KD.</p>
