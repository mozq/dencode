<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於摩爾斯電碼</h3>
<p>
摩爾斯電碼 (Morse code) 是一種透過短訊號 (Dit) 和長訊號 (Dah) 的組合來表示字母和符號的電報編碼系統。
</p>

<p>
DenCode 使用以下符號來表示摩爾斯電碼。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>名稱</th><th>符號</th></tr>
		<tr><td>短點 (Dit)</td><td><code>.</code> (點)</td></tr>
		<tr><td>長點 (Dah)</td><td><code>-</code> (連字號)</td></tr>
		<tr><td>字元間隔 (Letter space)</td><td><code> </code> (空格)</td></tr>
		<tr><td>單詞間隔 (Word space)</td><td><code>/</code> (斜線)</td></tr>
	</table>
</div>

<p>
將「<var>MORSE CODE</var>」轉換為國際摩爾斯電碼的結果如下。
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>訊號的時序</h4>
<p>
傳送摩爾斯電碼時，短點和長點的長度以及它們之間的間隔有嚴格的比率規定。
以短點的長度為1個單位，各元素的長度如下。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>元素</th><th>長度</th><th>說明</th></tr>
		<tr><td>短點</td><td>1個單位</td><td>短訊號音</td></tr>
		<tr><td>長點</td><td>3個單位</td><td>短點3倍長度的訊號音</td></tr>
		<tr><td>符號內間隔</td><td>1個單位</td><td>同一字元內短點和長點之間的靜音區間</td></tr>
		<tr><td>字元間隔</td><td>3個單位</td><td>不同字元之間的靜音區間</td></tr>
		<tr><td>單詞間隔</td><td>7個單位</td><td>不同單詞之間的靜音區間</td></tr>
	</table>
</div>

<p>
例如，傳送「<var>MORSE CODE</var>」時，訊號以以下時序傳送。
<code>▄</code> (<code>1</code>) 表示訊號音，<code> </code> (<code>0</code>) 表示靜音區間。
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
如此，以短點1個單位為基準，所有長度都以整數比確定，因此即使改變傳送速度也能保持精確的比率。
通訊速度通常用 WPM (Words Per Minute) 表示，定義為每分鐘可以傳送基準詞「PARIS」的次數。
例如，在 20 WPM 時，短點1個單位約為60毫秒。
</p>


<h3>國際摩爾斯電碼</h3>
<p>
國際摩爾斯電碼是用於表示字母、數字和符號的世界標準摩爾斯電碼。
由國際電信聯盟 (ITU) 的標準 (ITU-R M.1677-1) 規定。
</p>

<h4>字母</h4>
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

<h4>數字</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>符號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>擴展代碼</h4>
<p>
帶有變音符號的字元中，只有「É」由國際電信聯盟 (ITU) 規定。其他所有代碼均被定義為由各國主管機構或慣例確定的「擴展代碼」。
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


<h3>日文摩爾斯電碼（和文摩爾斯電碼）</h3>
<p>
日文摩爾斯電碼是用於表示日語平假名和片假名的摩爾斯電碼系統。
字元排列基於傳統的「伊呂波」順序。
</p>

<h4>平假名/片假名（伊呂波順序）</h4>
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
		<tr><th>゛ (濁點)</th><td>..</td><th>゜ (半濁點)</th><td>..--.</td></tr>
	</table>
</div>

<p>
濁點 (゛) 和半濁點 (゜) 擁有各自獨立的代碼。透過在清音字元代碼後面留出字元間隔（空格），放置濁點代碼 (<code>..</code>) 或半濁點代碼 (<code>..--.</code>) 來表示。
例如，「ガ」由「カ (<code>.-..</code>)」和「゛ (<code>..</code>)」組合而成，結果為「<code>.-.. ..</code>」。
</p>

<h4>數字</h4>
<p>
與國際摩爾斯電碼相同。
</p>

<h4>符號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>俄語（西里爾字母）摩爾斯電碼</h3>
<p>
這是用於表示俄語等語言中使用的西里爾字母的摩爾斯電碼系統。
代碼不是按西里爾字母順序排列，而是根據發音分配了與對應拉丁字母（國際摩爾斯電碼）相同的代碼。
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

<h4>數字</h4>
<p>
與國際摩爾斯電碼相同。
</p>

<h4>符號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>摩爾斯電碼的歷史</h3>
<p>
摩爾斯電碼由美國發明家塞繆爾·莫爾斯 (Samuel Morse) 和阿爾弗雷德·韋爾 (Alfred Vail) 在1830年代為早期電報機開發。
最初的摩爾斯電碼僅傳送數字，在接收端使用字典將其轉換為單詞。後來韋爾將系統擴展為包含字母的現代體系。
使用頻率較高的字母（例如 <code>E</code>）被分配較短的代碼（<code>.</code>），使用頻率較低的字母（例如 <code>Q</code>）被分配較長的代碼（<code>--.-</code>），從而優化了通訊效率。
</p>

<p>
此後，受國際通訊需求的推動（尤其是在歐洲），字母分配經過修訂，發展成為當今世界通用的「國際摩爾斯電碼 (International Morse Code)」。
在日本，從幕末到明治初期引進電報技術時，將五十音獨自分配到摩爾斯電碼中，創造了「和文摩爾斯電碼」。
按「イロハニホヘト…」順序分配代碼是和文摩爾斯的一大特徵。
</p>

<p>
多年來，摩爾斯電碼被廣泛應用於世界各地的船舶、航空、軍事和商業通訊。
然而，隨著衛星通訊和數位通訊的發展，在1990年代向 GMDSS（全球海上遇險與安全系統）過渡後，摩爾斯電碼作為官方遇險通訊手段的角色基本結束。
</p>

<p>
目前，摩爾斯電碼主要在業餘無線電和部分航行用無線電信標中被習慣性地使用。
但是，由於其極其簡單的開關機制（光的閃爍、聲音的長短，甚至眨眼或敲牆聲等）就能實現通訊的特性，作為自然災害等情況下的終極通訊手段，其價值在當代也完全沒有喪失。
著名的遇險信號「SOS」也並非有什麼語言含義，而是因為「<code>... --- ...</code>」這一代碼組合易於傳送且易於識別而被採用。
</p>
