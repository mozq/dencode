<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于摩尔斯电码</h3>
<p>
摩尔斯电码 (Morse code) 是一种通过短信号 (Dit) 和长信号 (Dah) 的组合来表示字母和符号的电报编码系统。
</p>

<p>
DenCode 使用以下符号来表示摩尔斯电码。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>名称</th><th>符号</th></tr>
		<tr><td>短点 (Dit)</td><td><code>.</code> (点)</td></tr>
		<tr><td>长点 (Dah)</td><td><code>-</code> (连字符)</td></tr>
		<tr><td>字符间隔 (Letter space)</td><td><code> </code> (空格)</td></tr>
		<tr><td>单词间隔 (Word space)</td><td><code>/</code> (斜杠)</td></tr>
	</table>
</div>

<p>
将"<var>MORSE CODE</var>"转换为国际摩尔斯电码的结果如下。
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>信号的时序</h4>
<p>
发送摩尔斯电码时，短点和长点的长度以及它们之间的间隔有严格的比率规定。
以短点的长度为1个单位，各元素的长度如下。
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>元素</th><th>长度</th><th>说明</th></tr>
		<tr><td>短点</td><td>1个单位</td><td>短信号音</td></tr>
		<tr><td>长点</td><td>3个单位</td><td>短点3倍长度的信号音</td></tr>
		<tr><td>符号内间隔</td><td>1个单位</td><td>同一字符内短点和长点之间的静音区间</td></tr>
		<tr><td>字符间隔</td><td>3个单位</td><td>不同字符之间的静音区间</td></tr>
		<tr><td>单词间隔</td><td>7个单位</td><td>不同单词之间的静音区间</td></tr>
	</table>
</div>

<p>
例如，发送"<var>MORSE CODE</var>"时，信号以以下时序发送。
<code>▄</code> (<code>1</code>) 表示信号音，<code> </code> (<code>0</code>) 表示静音区间。
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
这样，以短点1个单位为基准，所有长度都以整数比确定，因此即使改变发送速度也能保持精确的比率。
通信速度通常用 WPM (Words Per Minute) 表示，定义为每分钟可以发送基准词"PARIS"的次数。
例如，在 20 WPM 时，短点1个单位约为60毫秒。
</p>


<h3>国际摩尔斯电码</h3>
<p>
国际摩尔斯电码是用于表示字母、数字和符号的世界标准摩尔斯电码。
由国际电信联盟 (ITU) 的标准 (ITU-R M.1677-1) 规定。
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

<h4>数字</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>符号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>扩展代码</h4>
<p>
带有变音符号的字符中，只有"É"由国际电信联盟 (ITU) 规定。其他所有代码均被定义为由各国主管机构或惯例确定的"扩展代码"。
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


<h3>日文摩尔斯电码（和文摩尔斯电码）</h3>
<p>
日文摩尔斯电码是用于表示日语平假名和片假名的摩尔斯电码系统。
字符排列基于传统的"伊吕波"顺序。
</p>

<h4>平假名/片假名（伊吕波顺序）</h4>
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
		<tr><th>゛ (浊点)</th><td>..</td><th>゜ (半浊点)</th><td>..--.</td></tr>
	</table>
</div>

<p>
浊点 (゛) 和半浊点 (゜) 拥有各自独立的代码。通过在清音字符代码后面留出字符间隔（空格），放置浊点代码 (<code>..</code>) 或半浊点代码 (<code>..--.</code>) 来表示。
例如，"ガ"由"カ (<code>.-..</code>)"和"゛ (<code>..</code>)"组合而成，结果为"<code>.-.. ..</code>"。
</p>

<h4>数字</h4>
<p>
与国际摩尔斯电码相同。
</p>

<h4>符号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>俄语（西里尔字母）摩尔斯电码</h3>
<p>
这是用于表示俄语等语言中使用的西里尔字母的摩尔斯电码系统。
代码不是按西里尔字母顺序排列，而是根据发音分配了与对应拉丁字母（国际摩尔斯电码）相同的代码。
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
与国际摩尔斯电码相同。
</p>

<h4>符号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>摩尔斯电码的历史</h3>
<p>
摩尔斯电码由美国发明家塞缪尔·莫尔斯 (Samuel Morse) 和阿尔弗雷德·韦尔 (Alfred Vail) 在1830年代为早期电报机开发。
最初的摩尔斯电码仅传送数字，在接收端使用字典将其转换为单词。后来韦尔将系统扩展为包含字母的现代体系。
使用频率较高的字母（例如 <code>E</code>）被分配较短的代码（<code>.</code>），使用频率较低的字母（例如 <code>Q</code>）被分配较长的代码（<code>--.-</code>），从而优化了通信效率。
</p>

<p>
此后，受国际通信需求的推动（尤其是在欧洲），字母分配经过修订，发展成为当今世界通用的"国际摩尔斯电码 (International Morse Code)"。
在日本，从幕末到明治初期引进电报技术时，将五十音独自分配到摩尔斯电码中，创造了"和文摩尔斯电码"。
按"イロハニホヘト…"顺序分配代码是和文摩尔斯的一大特征。
</p>

<p>
多年来，摩尔斯电码被广泛应用于世界各地的船舶、航空、军事和商业通信。
然而，随着卫星通信和数字通信的发展，在1990年代向 GMDSS（全球海上遇险与安全系统）过渡后，摩尔斯电码作为官方遇险通信手段的角色基本结束。
</p>

<p>
目前，摩尔斯电码主要在业余无线电和部分航行用无线电信标中被习惯性地使用。
但是，由于其极其简单的开关机制（光的闪烁、声音的长短，甚至眨眼或敲墙声等）就能实现通信的特性，作为自然灾害等情况下的终极通信手段，其价值在当代也完全没有丧失。
著名的遇险信号"SOS"也并非有什么语言含义，而是因为"<code>... --- ...</code>"这一代码组合易于发送且易于识别而被采用。
</p>
