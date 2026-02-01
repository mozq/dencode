<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O szyfrowaniu Klawiaturą JIS (Konwersja Mikaka)</h3>
<p>Szyfr Klawiatury JIS (Konwersja Mikaka) to prosty szyfr podstawieniowy, który zamienia znaki tekstu na ich odpowiedniki na japońskiej klawiaturze.</p>
<p>Podstawienie odbywa się pomiędzy znakami łacińskimi a znakami japońskimi (Kana) nadrukowanymi na klawiszach standardowej klawiatury JIS (JIS X4064 / OADG109A). Termin „Mikaka” pochodzi od japońskiego slangu internetowego, gdzie wpisanie „NTT” (Nippon Telegraph and Telephone) na klawiaturze w trybie Kana daje „みかか” (mi-ka-ka).</p>

<p><a title="StuartBrady (the first version) and others., GFDL &lt;http://www.gnu.org/copyleft/fdl.html&gt;, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:KB_Japanese.svg"><img width="512" alt="KB Japanese" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/KB_Japanese.svg/512px-KB_Japanese.svg.png"></a></p>

<p>Na przykład literze „t” odpowiada „か” (ka), a „h” to „く” (ku). DenCode konwertuje znaki angielskie na japońskie i odwrotnie.</p>

<pre>
Tekst jawny        : this is a secret message
Tekst zaszyfrowany : かくにと にと ち といそすいか もいととちきい
</pre>

<pre>
Tekst zaszyfrowany : かくにと にと ち といそすいか もいととちきい
Tekst odszyfrowany : this is a secret message
</pre>

<p>Mapowanie znaków wygląda następująco. Znaki w nawiasach są dozwolone w trybie luźnym (lenient).</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Angielski</th><th>Japoński</th></tr>
		</thead>
		<tbody>
			<tr><td>1</td><td>ぬ (ヌ)</td></tr>
			<tr><td>2</td><td>ふ (フ)</td></tr>
			<tr><td>3</td><td>あ (ア)</td></tr>
			<tr><td>#</td><td>ぁ (ァ)</td></tr>
			<tr><td>4</td><td>う (ウ)</td></tr>
			<tr><td>$</td><td>ぅ (ゥ)</td></tr>
			<tr><td>5</td><td>え (エ)</td></tr>
			<tr><td>%</td><td>ぇ (ェ)</td></tr>
			<tr><td>6</td><td>お (オ)</td></tr>
			<tr><td>&amp;</td><td>ぉ (ォ)</td></tr>
			<tr><td>7</td><td>や (ヤ)</td></tr>
			<tr><td>'</td><td>ゃ (ャ)</td></tr>
			<tr><td>8</td><td>ゆ (ユ)</td></tr>
			<tr><td>(</td><td>ゅ (ュ)</td></tr>
			<tr><td>9</td><td>よ (ヨ)</td></tr>
			<tr><td>)</td><td>ょ (ョ)</td></tr>
			<tr><td>0</td><td>わ (ワ)</td></tr>
			<tr><td>-</td><td>ほ (ホ)</td></tr>
			<tr><td>^</td><td>へ (ヘ)</td></tr>
			<tr><td>|</td><td>ー</td></tr>
		</tbody>
		<tbody>
			<tr><td>q (Q)</td><td>た (タ)</td></tr>
			<tr><td>w (W)</td><td>て (テ)</td></tr>
			<tr><td>e</td><td>い (イ)</td></tr>
			<tr><td>E</td><td>ぃ (ィ)</td></tr>
			<tr><td>r (R)</td><td>す (ス)</td></tr>
			<tr><td>t (T)</td><td>か (カ)</td></tr>
			<tr><td>y (Y)</td><td>ん (ン)</td></tr>
			<tr><td>u (U)</td><td>な (ナ)</td></tr>
			<tr><td>i (I)</td><td>に (ニ)</td></tr>
			<tr><td>o (O)</td><td>ら (ラ)</td></tr>
			<tr><td>p (P)</td><td>せ (セ)</td></tr>
			<tr><td>@</td><td>゛</td></tr>
			<tr><td>[</td><td>゜</td></tr>
			<tr><td>{</td><td>「</td></tr>
		</tbody>
		<tbody>
			<tr><td>a (A)</td><td>ち (チ)</td></tr>
			<tr><td>s (S)</td><td>と (ト)</td></tr>
			<tr><td>d (D)</td><td>し (シ)</td></tr>
			<tr><td>f (F)</td><td>は (ハ)</td></tr>
			<tr><td>g (G)</td><td>き (キ)</td></tr>
			<tr><td>h (H)</td><td>く (ク)</td></tr>
			<tr><td>j (J)</td><td>ま (マ)</td></tr>
			<tr><td>k (K)</td><td>の (ノ)</td></tr>
			<tr><td>l (L)</td><td>り (リ)</td></tr>
			<tr><td>;</td><td>れ (レ)</td></tr>
			<tr><td>:</td><td>け (ケ)</td></tr>
			<tr><td>]</td><td>む (ム)</td></tr>
			<tr><td>}</td><td>」</td></tr>
		</tbody>
		<tbody>
			<tr><td>z</td><td>つ (ツ)</td></tr>
			<tr><td>Z</td><td>っ (ッ)</td></tr>
			<tr><td>x (X)</td><td>さ (サ)</td></tr>
			<tr><td>c (C)</td><td>そ (ソ)</td></tr>
			<tr><td>v (V)</td><td>ひ (ヒ)</td></tr>
			<tr><td>b (B)</td><td>こ (コ)</td></tr>
			<tr><td>n (N)</td><td>み (ミ)</td></tr>
			<tr><td>m (M)</td><td>も (モ)</td></tr>
			<tr><td>,</td><td>ね (ネ)</td></tr>
			<tr><td>&lt;</td><td>、</td></tr>
			<tr><td>.</td><td>る (ル)</td></tr>
			<tr><td>&gt;</td><td>。</td></tr>
			<tr><td>/</td><td>め (メ)</td></tr>
			<tr><td>?</td><td>・</td></tr>
			<tr><td>\</td><td>ろ (ロ)</td></tr>
		</tbody>
	</table>
</div>

<p>Japoński znak „を” (wo) nie jest konwertowany, ponieważ nie ma bezpośredniego odpowiednika na klawiaturze w układzie JIS.</p>

<p>Należy zauważyć, że japoński „ー” (przedłużenie dźwięku) jest mapowany na „|”. Znak „\” (Backslash lub Yen) jest mapowany na „ろ”.</p>

<p>Dostępne są dwa tryby konwersji: ścisły (strict) i luźny (lenient). Tryb ścisły zazwyczaj nie konwertuje wielkich liter alfabetu ani znaków Katakana, podczas gdy tryb luźny konwertuje również te znaki. Warto pamiętać, że w trybie luźnym ponowna konwersja może nie zwrócić oryginalnego znaku (np. "N -> み -> n" lub "ミ -> n -> み").</p>
