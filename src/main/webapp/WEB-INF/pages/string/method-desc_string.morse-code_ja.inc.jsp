<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>モールス符号について</h3>
<p>
モールス符号 (Morse code) は、短点 (Dit) と長点 (Dah) の組み合わせで文字や記号を表現する電信用の符号です。
</p>

<p>
DenCodeでは、モールス符号を表す際に以下の記号を使用します。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>名称</th><th>記号</th></tr>
		<tr><td>短点 (Dit)</td><td><code>.</code> (ドット)</td></tr>
		<tr><td>長点 (Dah)</td><td><code>-</code> (ハイフン)</td></tr>
		<tr><td>文字間隔 (Letter space)</td><td><code> </code> (スペース)</td></tr>
		<tr><td>単語間隔 (Word space)</td><td><code>/</code> (スラッシュ)</td></tr>
	</table>
</div>

<p>
「<var>MORSE CODE</var>」を欧文モールス符号に変換した結果は以下のとおりです。
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>信号のタイミング</h4>
<p>
モールス符号を送信する際は、短点と長点の長さや間隔に厳密な比率が定められています。
短点の長さを1単位とすると、各要素の長さは以下の通りです。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>要素</th><th>長さ</th><th>説明</th></tr>
		<tr><td>短点</td><td>1単位</td><td>短い信号音</td></tr>
		<tr><td>長点</td><td>3単位</td><td>短点の3倍の長さの信号音</td></tr>
		<tr><td>符号内間隔</td><td>1単位</td><td>同じ文字内の短点・長点の間の無音区間</td></tr>
		<tr><td>文字間隔</td><td>3単位</td><td>異なる文字の間の無音区間</td></tr>
		<tr><td>単語間隔</td><td>7単位</td><td>異なる単語の間の無音区間</td></tr>
	</table>
</div>

<p>
例えば、「<var>MORSE CODE</var>」を送信する場合、以下のようなタイミングで信号が送信されます。
<code>▄</code> (<code>1</code>) は信号音、<code> </code> (<code>0</code>) は無音区間を表しています。
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
このように、短点1単位を基準として全ての長さが整数比で定まるため、送信速度を変えても正確な比率を保つことができます。
通信速度は一般に WPM (Words Per Minute) で表され、基準語「PARIS」を1分間に何回送信できるかによって定義されます。
例えば 20 WPM の場合、短点1単位は約60ミリ秒となります。
</p>


<h3>国際モールス符号 (欧文モールス符号)</h3>
<p>
アルファベットや数字、記号を表現する、世界標準のモールス符号です。
国際電気通信連合 (ITU) の標準 (ITU-R M.1677-1) で規定されています。
</p>

<h4>アルファベット</h4>
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

<h4>数字</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>記号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>拡張符号</h4>
<p>
発音記号付き文字は、国際電気通信連合 (ITU) で規定されているものは「É」のみであり、それ以外の符号は各国の主管庁や慣用によって定められた「拡張符号」として定義されています。
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


<h3>和文モールス符号</h3>
<p>
日本語の平仮名および片仮名を表現するためのモールス符号です。
文字の並びは「イロハ順」に基づいています。
</p>

<h4>平仮名・片仮名（イロハ順）</h4>
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
		<tr><th>゛ (濁点)</th><td>..</td><th>゜ (半濁点)</th><td>..--.</td></tr>
	</table>
</div>

<p>
濁点 (゛) と半濁点 (゜) は独立した符号を持ちます。清音を表す符号の後に、文字間隔 (スペース) を空けて濁点符号 (<code>..</code>) または半濁点符号 (<code>..--.</code>) を配置することで表現します。
例えば、「ガ」は「カ (<code>.-..</code>)」と「゛ (<code>..</code>)」を組み合わせ、「<code>.-.. ..</code>」となります。
</p>

<h4>数字</h4>
<p>
欧文モールス符号と同じです。
</p>

<h4>記号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>ロシア語 (キリル文字) モールス符号</h3>
<p>
ロシア語などで使用されるキリル文字を表現するためのモールス符号です。
キリル文字のアルファベット順ではなく、対応する発音のラテン文字 (欧文モールス符号) と同じ符号が割り当てられています。
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

<h4>数字</h4>
<p>
欧文モールス符号と同じです。
</p>

<h4>記号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>モールス符号の歴史</h3>
<p>
1830年代にアメリカの発明家サミュエル・モールス (Samuel Morse) とアルフレッド・ヴェイル (Alfred Vail) によって、初期の電信機のために開発されました。
最初のモールス符号は、数字のみを送信し、受信側で辞書を使って単語に変換する方式でしたが、後にヴェイルがアルファベットを含む現在の体系に拡張しました。
使用頻度の高い文字 (例: <code>E</code>) には短い符号 (<code>.</code>) を、使用頻度の低い文字 (例: <code>Q</code>) には長い符号 (<code>--.-</code>) を割り当てることで、通信効率の最適化が図られています。
</p>

<p>
その後、ヨーロッパを中心とする国際通信の需要から、アルファベットの割り当てが見直され、現代世界中で使われている「国際モールス符号 (International Morse Code)」へと発展しました。
日本においては、幕末から明治初期にかけて電信技術が輸入された際に、五十音を独自にモールス符号へ割り当てた「和文モールス符号」が考案されました。
「イロハニホヘト…」の順に符号が割り当てられているのが和文モールスの大きな特徴です。
</p>

<p>
長年にわたり、モールス符号は船舶や航空機、軍事通信や商業通信において世界中で広く利用されてきました。
しかし、衛星通信やデジタル通信の発展に伴い、1990年代の「GMDSS (海上における遭難及び安全の世界的制度)」への移行をもって、公式な遭難通信手段としてのモールス符号はその役割をほぼ終えました。
</p>

<p>
現在は主にアマチュア無線や、一部の航法用無線標識などで慣習的に使用されるにとどまっています。
しかし、その極めてシンプルなオン・オフの仕組み（光の点滅や音の長短、さらにはまばたきや壁を叩く音など）だけで意思疎通ができるという特性から、非常災害時などにおける究極の通信手段としての価値は、現代においても全く失われていません。
有名な遭難信号「SOS」も、言語的な意味を持たず、送信しやすく聞き取りやすい「<code>... --- ...</code>」という符号の組み合わせから採用されたものです。
</p>
