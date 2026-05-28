<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Ascii85</h3>
<p>Ascii85 to kodowanie binarne na tekst, używające 7-bitowych drukowalnych znaków ASCII. Znane również jako Base85.</p>
<p>W Ascii85 dane są dzielone na bloki 4-bajtowe, które są następnie konwertowane na 5 znaków ASCII.</p>
<p>Istnieje wiele wariantów Ascii85. DenCode obsługuje następujące trzy rodzaje. Oryginałem jest btoa, po którym nastąpiły Adobe i Z85.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Opis</th></tr>
		<tr><th>Z85</th><td>Używany w ZeroMQ. Zestaw znaków dobrano tak, aby uniknąć znaków wymagających ucieczki, takich jak „\" (backslash) czy „'” (apostrof).</td></tr>
		<tr><th>Adobe</th><td>Używany w PostScript i PDF (Portable Document Format) firmy Adobe do kodowania obrazów i innych danych. Ograniczony znacznikami „&lt;~” i „~&gt;”.</td></tr>
		<tr><th>btoa</th><td>Format polecenia btoa w systemach UNIX. Dawniej używany do wymiany danych binarnych, obecnie mniej popularny. Ograniczony liniami „xbtoa Begin” i „xbtoa End”.</td></tr>
	</table>
</div>

<p>Znaki używane w Ascii85 są następujące. 4 bajty są traktowane jako liczba całkowita bez znaku (big-endian), która jest następnie zapisywana w systemie o podstawie 85 (5 cyfr). Na podstawie tego, przy użyciu poniższych znaków ASCII, uzyskuje się wynik konwersji.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Znaki ASCII</th></tr>
		<tr><th>Z85</th><td>0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-:+=^!/*?&amp;&lt;&gt;()[]{}@%$#</td></tr>
		<tr><th>Adobe</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu</td></tr>
		<tr><th>btoa</th><td>!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstu<br />(Oryginalnie od „ ” (spacji) do „t”, ale ze względu na usuwanie spacji końcowych przez niektóre programy pocztowe, zmieniono na zakres od „!” do „u”).</td></tr>
	</table>
</div>

<p>Na przykład, konwersja „Hello” na Ascii85 wygląda następująco:</p>

<p>1. Podział na bloki 4-bajtowe. Jeśli blok ma mniej niż 4 bajty, dopełnia się go zerami (00).</p>

<pre>48656C6C<sub>(16)</sub> 6F000000<sub>(16)</sub>  (Hell o)</pre>

<p>2. Każdy 4-bajtowy blok jest traktowany jako liczba całkowita bez znaku (big-endian), a następnie konwertowany na 5 cyfr w systemie o podstawie 85.</p>

<pre>48656C6C<sub>(16)</sub>
= 1214606444<sub>(10)</sub>
= <b>23</b> * 85<sup>4</sup> + <b>22</b> * 85<sup>3</sup> + <b>66</b> * 85<sup>2</sup> + <b>52</b> * 85 + <b>49</b></pre>

<pre>6F000000<sub>(16)</sub>
= 1862270976<sub>(10)</sub>
= <b>35</b> * 85<sup>4</sup> + <b>57</b> * 85<sup>3</sup> + <b>33</b> * 85<sup>2</sup> + <b>65</b> * 85 + <b>26</b></pre>

<p>3. Konwersja cyfr systemu 85 na znaki ASCII. Jeśli dodano dopełnienie (padding), w przypadku Adobe/Z85 odpowiednie znaki są usuwane.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><td>23</td><td>22</td><td>66</td><td>52</td><td>49</td><td></td><td>35</td><td>57</td><td>33</td><td>65</td><td>26</td></tr>
		<tr><th>Z85</th><td>n</td><td>m</td><td>=</td><td>Q</td><td>N</td><td></td><td>z</td><td>V</td><td></td><td></td><td></td></tr>
		<tr><th>Adobe</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td></td><td></td><td></td></tr>
		<tr><th>btoa</th><td>8</td><td>7</td><td>c</td><td>U</td><td>R</td><td></td><td>D</td><td>Z</td><td>B</td><td>b</td><td>;</td></tr>
	</table>
</div>

<p>4. Połączenie wszystkich znaków daje wynik Ascii85. Adobe używa znaczników „&lt;~” i „~&gt;” oraz łamie wiersze co 80 znaków. btoa używa „xbtoa Begin” i „xbtoa End” (zawierając długość danych i sumę kontrolną) oraz łamie wiersze co 78 znaków.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Wynik konwersji</th></tr>
		<tr><th>Z85</th><td>nm=QNzV</td></tr>
		<tr><th>Adobe</th><td>&lt;~87cURDZ~&gt;</td></tr>
		<tr><th>btoa</th><td>xbtoa Begin<br />87cURDZBb;<br />xbtoa End N 5 5 E 42 S 1f9 R a9f</td></tr>
	</table>
</div>

<p>Istnieją również pewne skróty:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th></th><th>Skrót</th></tr>
		<tr><th>Z85</th><td>Brak</td></tr>
		<tr><th>Adobe</th><td>00000000<sub>(16)</sub> -&gt; z</td></tr>
		<tr><th>btoa</th><td>00000000<sub>(16)</sub> -&gt; z<br />20202020<sub>(16)</sub> -&gt; y (od btoa v4.2)</td></tr>
	</table>
</div>
