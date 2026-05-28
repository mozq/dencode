<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Ascii85</h3>
<p>Ascii85 is een coderingsmethode die gebruikmaakt van 7-bit ASCII-tekens. Het wordt ook wel Base85 genoemd.</p>
<p>In Ascii85 worden gegevens in groepen van 4 bytes verdeeld en weergegeven door ze om te zetten in 5 ASCII-tekens.</p>
<p>Er bestaan verschillende varianten van Ascii85. DenCode ondersteunt de volgende drie typen Ascii85. Het origineel is btoa, gevolgd door Adobe en Z85.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Beschrijving</th></tr>
		<tr><th>Z85</th><td>Gebruikt in ZeroMQ. Vermijdt tekens die geëscaped moeten worden zoals "\" (backslash) en "'" (apostrof).</td></tr>
		<tr><th>Adobe</th><td>Gebruikt voor het coderen van afbeeldingen, etc. in Adobe PostScript en PDF (Portable Document Format) bestanden. Omsloten door "&lt;~" en "~&gt;".</td></tr>
		<tr><th>btoa</th><td>Formaat van het UNIX btoa-commando. Werd in het verleden gebruikt voor het uitwisselen van binaire gegevens, maar is nu niet meer gebruikelijk. Omsloten door "xbtoa Begin" en "xbtoa End" regels.</td></tr>
	</table>
</div>

<p>De ASCII-tekens die in Ascii85 worden gebruikt, zijn als volgt. 4-byte waarden worden behandeld als big-endian unsigned integers, berekend als cijfers in het 85-tallig stelsel (5 cijfers), en het Ascii85-conversieresultaat wordt verkregen op basis van de volgende ASCII-tekens.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>ASCII-teken</th></tr>
		<tr><th>Z85</th><td>0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-:+=^!/*?&amp;&lt;&gt;()[]{}@%$#</td></tr>
		<tr><th>Adobe</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu</td></tr>
		<tr><th>btoa</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu<br />(Oorspronkelijk waren het de tekens van " " (spatie) tot "t", maar omdat sommige mailprogramma's spaties aan het einde verwijderden, werden ze later vervangen door tekens van "!" tot "u" exclusief spaties.)</td></tr>
	</table>
</div>

<p>Bijvoorbeeld, het resultaat van het converteren van "Hello" met Ascii85 is als volgt:</p>

<p>1. Verdeel in groepen van 4 bytes. Als de laatste groep minder dan 4 bytes is, vul dan aan met "00".</p>

<pre>48656C6C<sub>(16)</sub> 6F000000<sub>(16)</sub>  (Hell o)</pre>

<p>2. Behandel elke 4 bytes als een big-endian unsigned integer en converteer de waarde naar cijfers in het 85-tallig stelsel.</p>

<pre>48656C6C<sub>(16)</sub>
= 1214606444<sub>(10)</sub>
= <b>23</b> * 85<sup>4</sup> + <b>22</b> * 85<sup>3</sup> + <b>66</b> * 85<sup>2</sup> + <b>52</b> * 85 + <b>49</b></pre>

<pre>6F000000<sub>(16)</sub>
= 1862270976<sub>(10)</sub>
= <b>35</b> * 85<sup>4</sup> + <b>57</b> * 85<sup>3</sup> + <b>33</b> * 85<sup>2</sup> + <b>65</b> * 85 + <b>26</b></pre>

<p>3. Converteer elk cijfer van het 85-tallig stelsel naar een ASCII-teken. Als er is aangevuld met "00", wordt het opvulgedeelte verwijderd (in het geval van Adobe/Z85).</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><td>23</td><td>22</td><td>66</td><td>52</td><td>49</td><td></td><td>35</td><td>57</td><td>33</td><td>65</td><td>26</td></tr>
		<tr><th>Z85</th><td>n</td><td>m</td><td>=</td><td>Q</td><td>N</td><td></td><td>z</td><td>V</td><td></td><td></td><td></td></tr>
		<tr><th>Adobe</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td></td><td></td><td></td></tr>
		<tr><th>btoa</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td>B</td><td>b</td><td>;</td></tr>
	</table>
</div>

<p>4. Verbind alle tekens om het resultaat van de Ascii85-conversie te vormen. Adobe wordt omsloten door "&lt;~" &amp; "~&gt;" en breekt af na elke 80 tekens. btoa wordt omsloten door "xbtoa Begin" &amp; "xbtoa End" (inclusief gegevenslengte en controlesom) en breekt af na elke 78 tekens.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Resultaat</th></tr>
		<tr><th>Z85</th><td>nm=QNzV</td></tr>
		<tr><th>Adobe</th><td>&lt;~87cURDZ~&gt;</td></tr>
		<tr><th>btoa</th><td>xbtoa Begin<br />87cURDZBb;<br />xbtoa End N 5 5 E 42 S 1f9 R a9f</td></tr>
	</table>
</div>

<p>Daarnaast zijn er enkele afkortingen gedefinieerd.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Afkorting</th></tr>
		<tr><th>Z85</th><td>Geen</td></tr>
		<tr><th>Adobe</th><td>00000000<sub>(16)</sub> -&gt; z</td></tr>
		<tr><th>btoa</th><td>00000000<sub>(16)</sub> -&gt; z<br />20202020<sub>(16)</sub> -&gt; y (btoa v4.2 en later)</td></tr>
	</table>
</div>
