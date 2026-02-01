<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Enigma Cijfer</h3>
<p>Het Enigma Cijfer is een substitutiecijfer dat letters vervangt door andere letters. Het ondersteunt encryptie van de 26 letters van "A" tot "Z".</p>
<p>De vervanging van letters wordt uitgevoerd met een Enigma-machine. DenCode ondersteunt simulatie van de volgende Enigma-machines:</p>

<ul>
	<li>Enigma I</li>
	<li>Enigma M3</li>
	<li>Enigma M4 (U-boat Enigma)</li>
	<li>Norway Enigma "Norenigma"</li>
	<li>Sondermaschine (Speciale machine)</li>
	<li>Enigma G "Zählwerk Enigma" (A28/G31)</li>
	<li>Enigma G G-312 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-260 (G31 Abwehr Enigma)</li>
	<li>Enigma G G-111 (G31 Hongaarse Enigma)</li>
	<li>Enigma D (Commerciële Enigma A26)</li>
	<li>Enigma K (Commerciële Enigma A27)</li>
	<li>Enigma KD (Enigma K met UKW-D)</li>
	<li>Swiss-K (Zwitserse Enigma K variant)</li>
	<li>Railway Enigma "Rocket I"</li>
	<li>Enigma T "Tirpitz" (Japanse Enigma)</li>
	<li>Spanish Enigma, bedrading D</li>
	<li>Spanish Enigma, bedrading F</li>
	<li>Spanish Enigma, Delta (A 16081)</li>
	<li>Spanish Enigma, Sonderschaltung / Delta (A 16101)</li>
</ul>

<p>De Enigma-machine is als volgt geconfigureerd. Een letter ingevoerd via het toetsenbord (Tastatur) gaat door het stekkerbord (Steckerbrett), het ingangswiel (ETW, Eintrittswalze), 3 of 4 rotors (Walze), en de reflector (UKW, Umkehrwalze), en volgt dan het omgekeerde pad om het gecodeerde resultaat weer te geven op het lampenpaneel (Lampenfeld). Lettersubstitutie vindt plaats op al deze plaatsen, zoals de rotors.</p>

<pre>
 UKW   Walze  Walze  Walze   ETW  (Stecker)
         3      2      1
 ___    ___    ___    ___    ___    ___
|   |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &lt; Tastatur
| | |  |   |  |   |  |   |  |   |  |   |
| | |  |   |  |   |  |   |  |   |  |   |
|  -|--|---|--|---|--|---|--|---|--|---|-- &gt; Lampenfeld
|   |  |   |  |   |  |   |  |   |  |   |
 ---    ---    ---    ---    ---    ---
</pre>

<p>Het ingangswiel, de rotors en de reflector zijn intern bedraad om de 26 letters van "A" tot "Z" om te zetten in andere letters, en de substitutie vindt plaats wanneer stroom door die bedrading loopt. Bijvoorbeeld, rotor "I" van Enigma I heeft de volgende bedrading, waarbij de letter "A" wordt vervangen door "E". Als de letter die terugkomt van de reflector "J" is, volgt deze de omgekeerde bedrading en wordt vervangen door "Z".</p>

<pre>
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ
</pre>

<p>Alle bedradingen van Enigma I zijn als volgt:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Wiel</th><th>ABCDEFGHIJKLMNOPQRSTUVWXYZ</th></tr>
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

<p>Het stekkerbord is een mechanisme waarmee de gebruiker bedrading kan configureren voor substitutie. Sommige Enigma-machines hebben een stekkerbord vóór de ETW. Het stekkerbord heeft invoer-/uitvoeraansluitingen voor de 26 letters van "A" tot "Z", en door twee willekeurige letters met een kabel te verbinden, worden die twee letters verwisseld. Bijvoorbeeld, als "A" en "M" met een kabel zijn verbonden, wordt "A" vervangen door "M" en "M" door "A". Letters van aansluitingen die niet met een kabel zijn verbonden, worden niet vervangen.</p>
<p>Wanneer één teken via het toetsenbord wordt ingevoerd, draait de rotor één stap. De rotatie van de rotors begint vanaf de rechterrotor, en wanneer deze de positie van de keep op de rotor bereikt, draait de linkerrotor ook één stap. Door deze rotorrotatie verandert de bedrading voor encryptie bij elk teken, dus zelfs als hetzelfde teken wordt ingevoerd, wordt het vervangen door een ander teken dan de vorige keer.</p>
<p>Rotors hebben een ring, en op de buitenomtrek van de ring staan letters van "A" tot "Z" (of "01" tot "26"). De ring kan de offset tussen de letters op de buitenomtrek en de interne bedrading van de rotor in 26 stappen instellen. Bijvoorbeeld, in het geval van rotor "I" van "Enigma I", als de ringinstelling "A (01)" is, wordt "A" vervangen door "E", maar als de ringinstelling "B (02)" is, verschuift de interne bedrading met 1, dus als de oorspronkelijke Z-J bedrading, wordt "A" vervangen door "K".</p>

<pre>
Ring: A (01)
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
EKMFLGDQVZNTOWYHXUSPAIBRCJ

Ring: B (02)
ABCDEFGHIJKLMNOPQRSTUVWXYZ
||||||||||||||||||||||||||
FLNGMHERWAOUPXZIYVTQBJCSDK
</pre>

<p>Rotors kunnen worden ingesteld in volgorde en initiële rotatiepositie. Bijvoorbeeld, als er 3 typen rotors "I", "II" en "III" zijn, kunnen ze in de Enigma-machine worden ingesteld als "II", "I", "III", en kan de initiële positie van elke rotor worden ingesteld tussen "A (01)" en "Z (26)". Wat betreft de reflector, sommige Enigma-machines maken het mogelijk om te wisselen tussen meerdere typen reflectoren met verschillende bedradingen, of om de initiële positie in te stellen. Het ingangswiel is vast en kan niet worden gewijzigd. In het geval van een Enigma-machine met een stekkerbord, kan het stekkerbord ook worden ingesteld. Deze instellingen worden de sleutel voor encryptie door de Enigma-machine.</p>
<p>Een voorbeeld van encryptie met Enigma I wordt hieronder getoond.</p>

<pre>
Wielen             : UKW-A II I III
Ringinstelling     : X M V  (24 13 22)
Positie-instelling : A B L  (01 02 12)
Stekkerbord        : AM FI NV PS TU WZ

Voor encryptie : SECRET
Na encryptie   : LCGODU
</pre>

<p>In dit geval wordt de eerste letter "S" als volgt vervangen en uiteindelijk versleuteld tot "L".</p>

<pre>
S -&gt; P  : Stekkerbord
P -&gt; P  : ETW
P -&gt; L  : III
L -&gt; P  : I
P -&gt; W  : II
W -&gt; K  : UKW-A
K -&gt; Q  : II
Q -&gt; O  : I
O -&gt; L  : III
L -&gt; L  : ETW
L -&gt; L  : Stekkerbord
</pre>

<p>Ook, wanneer de rotatiepositie van de rotor en de Invoer (+) / Uitvoer (-) posities worden weergegeven door letters op de ring, is dit als volgt. (Omdat de rotor draait, verschillen de bovenstaande "vervangen letter" en "letter als positie op de ring".)</p>

<pre>
           -      +       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Stekkerbord
           -   +          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           -   +          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : III
           +  -           
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : I
               +-         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          -           +   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>

<p>De Enigma-machine heeft de eigenschap dat als u de gecodeerde tekst opnieuw codeert met dezelfde instellingen, u de oorspronkelijke platte tekst krijgt. Daarom, als u in het bovenstaande voorbeeld de gecodeerde "L" invoert, krijgt u de oorspronkelijke "S".</p>

<pre>
L -&gt; L  : Stekkerbord
L -&gt; L  : ETW
L -&gt; O  : III
O -&gt; Q  : I
Q -&gt; K  : II
K -&gt; W  : UKW-A
W -&gt; P  : II
P -&gt; L  : I
L -&gt; P  : III
P -&gt; P  : ETW
P -&gt; S  : Stekkerbord
</pre>

<pre>
           +      -       
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : Stekkerbord
           +   -          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : ETW
           +   -          
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : III
           -  +           
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : I
               -+         
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : II
          +           -   
ABCDEFGHIJKLMNOPQRSTUVWXYZ  : UKW-A
</pre>


<h3>Instellingen in DenCode</h3>

<h4>Wielen (Walzenlage)</h4>
<p>Stel de typen reflectoren en rotors in, en de volgorde van de rotors.</p>
<p>Omdat de invoer vanaf de rechterkant van de Enigma-machine komt, worden de rotors geteld als 1, 2, 3 van rechts, maar bij het noteren van de wielvolgorde wordt deze over het algemeen van links naar rechts geschreven. Bijvoorbeeld, in het geval van de wielvolgorde "UKW-A II I III", vertegenwoordigt dit de instellingen van Rotor 1 "III", Rotor 2 "I", Rotor 3 "II" en Reflector "UKW-A".</p>
<p>Normaal gesproken zijn er in totaal 4 componenten: 1 reflector en 3 rotors, maar Enigma M4 staat het instellen van een "Dunne Reflector" en een "Dunne Rotor" in de reflectorsleuf toe. In DenCode wordt de "Dunne Reflector" behandeld als een normale reflector, en de "Dunne Rotor" (Beta, Gamma) wordt extra weergegeven als Rotor 4, voor een totaal van 5 instellingen. Echter, als de reflector UKW-D is, neemt deze de reflectorsleuf in beslag, dus Rotor 4 kan niet worden ingesteld.</p>

<h4>Ringinstelling (Ringstellung)</h4>
<p>Stel de ring van de rotor in. Deze instelling verandert de positie van de interne bedrading van de rotor ten opzichte van de ring. Bij sommige Enigma-machines kan ook de ring van de reflector worden ingesteld.</p>

<h4>Positie-instelling (Grundstellung)</h4>
<p>Stel de initiële positie van de rotor in. Bij sommige Enigma-machines kan ook de initiële positie van de reflector worden ingesteld.</p>
<p>Omdat de instelling bij elk bericht werd gewijzigd, wordt dit soms "Berichtsleutel" (Message key) genoemd.</p>

<h4>Stekkerbordbedrading (Steckerverbindungen)</h4>
<p>Stel de bedradingsparen van het stekkerbord in.</p>
<p>In DenCode specificeert u de bedrading door paren van 2 te vervangen letters op te sommen, gescheiden door spaties, zoals "AB CD EF GH IJ KL". Dit voorbeeld vertegenwoordigt bedradingsparen van "A" en "B", "C" en "D", enzovoort.</p>

<h4>Uhr</h4>
<p>De Uhr is een accessoire dat verbinding maakt met het stekkerbord en bedrading selecteert uit 40 opties van "00" tot "39". Het stekkerbord en de Uhr zijn verbonden met 20 kabels. De kabels zijn in paren van 2, en er zijn 10 paren. Wanneer de Uhr-instelling "00" is, is dit gelijk aan het geval waarin de kabelparen direct op het stekkerbord zijn aangesloten.</p>
<p>De Uhr kan alleen worden ingesteld op Enigma I. De Uhr-instelling wordt mogelijk door eerst 10 sets bedradingsparen op het stekkerbord op te geven.</p>

<h4>UKW-D bedrading</h4>
<p>UKW-D is een reflector waarvan de interne bedrading kan worden gewijzigd.</p>
<p>De notatie van de ring van een normale reflector is "ABCDEFGHIJKLMNOPQRSTUVWXYZ", maar de notatie van UKW-D is een speciale volgorde "A-ZXWVUTSRQPON-MLKIHGFEDCB". De twee "-" (BO in normale notatie) in de notatie zijn vast, wat betekent dat ze altijd met elkaar zijn verbonden en niet kunnen worden gewijzigd. Configureer de bedrading voor de overige 24 letters in 12 paren.</p>

<pre>
UKW-D notatie   : A-ZXWVUTSRQPON-MLKIHGFEDCB
Normale notatie : ABCDEFGHIJKLMNOPQRSTUVWXYZ
</pre>

<p>UKW-D kan worden ingesteld voor Enigma I, Enigma M4 en Enigma KD.</p>
