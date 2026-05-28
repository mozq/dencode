<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于点字</h3>
<p>
点字 (Braille) 是一种由凸点组成的触觉书写系统，专为视障人士设计，可用指尖触摸阅读。
它通过3行2列共6个点的组合来表示一个字符或符号（6点盲文）。
该系统在全球范围内使用，并且打点规则因语言而异。
</p>


<h3>英语点字 (UEB Grade 1)</h3>
<p>
本工具以英语国家标准使用的“统一英语盲文 (UEB: Unified English Braille)”の Grade 1（一级英语盲文：逐个字母直接书写的方式）为基准进行转换。不支持缩写形式 (Grade 2)。
</p>

<p>转换示例:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>字母</h4>
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
对于大写字母，需在字母前面加上大写符号 (<code>⠠</code>)。
此外，如果存在连续大写字母时，会使用各种符号：使用“大写单词符号 (<code>⠠⠠</code>)”指定整个单词大写；跨多个单词时使用“大写段落符号 (<code>⠠⠠⠠</code>)”；并在作用结束时使用“大写终止符号 (<code>⠠⠄</code>)”。
</p>

<h4>数字</h4>
<p>
数字前必须放置数字符号 (<code>⠼</code>)。数字符号后面的字符将作为数字处理，它复用字母 a 到 j 的点字组合。
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>数字符号</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
当数字紧接着小写字母 a 到 j 时，会插入一级盲文符号 (<code>⠰</code>) 以避免与数字混淆。
</p>

<h4>主要符号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (逗号)</th><td>⠂</td><th>. (句号)</th><td>⠲</td><th>! (感叹号)</th><td>⠖</td><th>? (问号)</th><td>⠦</td></tr>
		<tr><th>' (撇号)</th><td>⠄</td><th>- (连字符)</th><td>⠤</td><th>; (分号)</th><td>⠆</td><th>: (冒号)</th><td>⠒</td></tr>
	</table>
</div>

<h4>引用符与括号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (通用双引号)</th><td>⠦ *** ⠴</td><th>' *** ' (通用单引号)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (方向性双引号)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (方向性单引号)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (双尖括号)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (尖括号)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (圆括号)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (方括号)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (花括号)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>日语点字</h3>
<p>
日语点字是通过将句子转换为假名，然后再转换为盲文来表达的。
</p>

<p>转换示例:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>假名</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア</th><td>⠁</td><th>イ</th><td>⠃</td><th>ウ</th><td>⠉</td><th>エ</th><td>⠋</td><th>オ</th><td>⠊</td></tr>
		<tr><th>カ</th><td>⠡</td><th>キ</th><td>⠣</td><th>ク</th><td>⠩</td><th>ケ</th><td>⠫</td><th>コ</th><td>⠪</td></tr>
		<tr><th>サ</th><td>⠱</td><th>シ</th><td>⠳</td><th>ス</th><td>⠹</td><th>セ</th><td>⠻</td><th>ソ</th><td>⠺</td></tr>
		<tr><th>タ</th><td>⠕</td><th>チ</th><td>⠗</td><th>ツ</th><td>⠝</td><th>テ</th><td>⠟</td><th>ト</th><td>⠞</td></tr>
		<tr><th>ナ</th><td>⠅</td><th>ニ</th><td>⠇</td><th>ヌ</th><td>⠍</td><th>ネ</th><td>⠏</td><th>ノ</th><td>⠎</td></tr>
		<tr><th>ハ</th><td>⠥</td><th>ヒ</th><td>⠧</td><th>フ</th><td>⠭</td><th>ヘ</th><td>⠯</td><th>ホ</th><td>⠮</td></tr>
		<tr><th>マ</th><td>⠵</td><th>ミ</th><td>⠷</td><th>ム</th><td>⠽</td><th>メ</th><td>⠿</td><th>モ</th><td>⠾</td></tr>
		<tr><th>ヤ</th><td>⠌</td><th></th><td></td><th>ユ</th><td>⠬</td><th></th><td></td><th>ヨ</th><td>⠜</td></tr>
		<tr><th>ラ</th><td>⠑</td><th>リ</th><td>⠓</td><th>ル</th><td>⠙</td><th>レ</th><td>⠛</td><th>ロ</th><td>⠚</td></tr>
		<tr><th>ワ</th><td>⠄</td><th>ヰ</th><td>⠆</td><th></th><td></td><th>ヱ</th><td>⠖</td><th>ヲ</th><td>⠔</td></tr>
		<tr><th>ン</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (促音)</th><td>⠂</td><th>ー (长音)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ</th><td>⠐⠡</td><th>ギ</th><td>⠐⠣</td><th>グ</th><td>⠐⠩</td><th>ゲ</th><td>⠐⠫</td><th>ゴ</th><td>⠐⠪</td></tr>
		<tr><th>ザ</th><td>⠐⠱</td><th>ジ</th><td>⠐⠳</td><th>ズ</th><td>⠐⠹</td><th>ゼ</th><td>⠐⠻</td><th>ゾ</th><td>⠐⠺</td></tr>
		<tr><th>ダ</th><td>⠐⠕</td><th>ヂ</th><td>⠐⠗</td><th>ヅ</th><td>⠐⠝</td><th>デ</th><td>⠐⠟</td><th>ド</th><td>⠐⠞</td></tr>
		<tr><th>バ</th><td>⠐⠥</td><th>ビ</th><td>⠐⠧</td><th>ブ</th><td>⠐⠭</td><th>ベ</th><td>⠐⠯</td><th>ボ</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ</th><td>⠠⠥</td><th>ピ</th><td>⠠⠧</td><th>プ</th><td>⠠⠭</td><th>ペ</th><td>⠠⠯</td><th>ポ</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ</th><td>⠈⠡</td><th>キュ</th><td>⠈⠩</td><th>キョ</th><td>⠈⠪</td></tr>
		<tr><th>シャ</th><td>⠈⠱</td><th>シュ</th><td>⠈⠹</td><th>ショ</th><td>⠈⠺</td></tr>
		<tr><th>チャ</th><td>⠈⠕</td><th>チュ</th><td>⠈⠝</td><th>チョ</th><td>⠈⠞</td></tr>
		<tr><th>ニャ</th><td>⠈⠅</td><th>ニュ</th><td>⠈⠍</td><th>ニョ</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ</th><td>⠈⠥</td><th>ヒュ</th><td>⠈⠭</td><th>ヒョ</th><td>⠈⠮</td></tr>
		<tr><th>ミャ</th><td>⠈⠵</td><th>ミュ</th><td>⠈⠽</td><th>ミョ</th><td>⠈⠾</td></tr>
		<tr><th>リャ</th><td>⠈⠑</td><th>リュ</th><td>⠈⠙</td><th>リョ</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ</th><td>⠘⠡</td><th>ギュ</th><td>⠘⠩</td><th>ギョ</th><td>⠘⠪</td></tr>
		<tr><th>ジャ</th><td>⠘⠱</td><th>ジュ</th><td>⠘⠹</td><th>ジョ</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ</th><td>⠘⠕</td><th>ヂュ</th><td>⠘⠝</td><th>ヂョ</th><td>⠘⠞</td></tr>
		<tr><th>ビャ</th><td>⠘⠥</td><th>ビュ</th><td>⠘⠭</td><th>ビョ</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ</th><td>⠨⠥</td><th>ピュ</th><td>⠨⠭</td><th>ピョ</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>主要符号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (顿号)</th><td>⠰</td><th>。 (句号)</th><td>⠲</td><th>？ (问号)</th><td>⠢</td><th>！ (叹号)</th><td>⠖</td></tr>
		<tr><th>・ (间隔号)</th><td>⠐</td><th>〜 (波浪号)</th><td>⠤⠤</td><th>＆ (连字符)</th><td>⠰⠯</td><th>％ (百分号)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>引号与括号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (单引号)</th><td>⠤ *** ⠤</td><th>『 *** 』 (双引号)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (圆括号)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (双圆括号)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>字母</h4>
<p>
当日语中混有英语等外语字母时，会在字母前插入外文符号 (<code>⠰</code>)，其后跟上对应的 UEB 英语点字。
</p>

<h4>数字</h4>
<p>
与英语点字规则相同。
</p>

<h4>分词（分音节书写）</h4>
<p>
DenCode 不会自动插入分词（各单词间的空格分隔），而是将输入的字符串原样转换为盲文。如需获得更准确的日语点字翻译，请预先使用空格将被转换文本按文节分词。
</p>


<h3>点字的历史</h3>
<p>
现代 6 点制盲文是 1825 年由法国人路易斯·布莱叶 (Louis Braille) 发明的。
他在幼年时因事故失明，并在年仅 15 岁时就完善了这一系统。
在此之前的视障人士书写系统多使用纸上凸起的普通字母形状，读写都极其困难。
但布莱叶发明的 6 点点字系统使得人们能够用手指快速阅读，并使用专用工具轻松书写。如今，“Braille”一词在全球已成为“点字/盲文”的代名词。
</p>
<p>
在日本，盲文的引入于明治时代开始被探讨。
1890 年（明治 23 年），东京盲哑学校教师石川仓次以当时的假名为基础，完成了现在的日本盲文（6 点点字）。
这一方案被正式采纳的 11 月 1 日，现在被定为日本的“点字纪念日”。
</p>

<h3>英语国家的点字演进与 UEB（统一英语盲文）</h3>
<p>
长期以来，英语国家曾因国家或地区不同而使用各自独特的盲文系统。
例如，美国以“美国版英语盲文 (EBAE)”为标准，英国以“标准英语盲文 (SEB)”为基准。即使同为英语，符号和字母的分配、缩写的拼字规则等也存在微妙的不同。
此外，数学和科学（如 Nemeth 密码）以及计算机（Computer Braille Code）领域还存在独立的盲文编码，在此情况下不管是学习还是系统都面临了严重的混乱。
</p>
<p>
为了消除国家之间的差异以及各种专业领域密码的混乱，自 20 世纪 90 年代起开始制定国际通用标准。
其成果即为当前被作为全球标准采用的<strong>统一英语盲文 (UEB: Unified English Braille)</strong>。
</p>
<p>
与诸如 EBAE 等被统合的各系统相比，其最显著的变更是符号整理和缩写形式 (Grade 2) 的削减及严格化。
在传统系统中，为了尽可能减少字数，建立了极其繁琐且多样化的缩减约定 (Contractions)，而 UEB 则废除了一些容易引起混淆的缩写（例如 "ble" 和 "com"）。
同时明确规定了在 URL 或电子邮件地址等情况中不使用缩写，并制定了当代数字社会必需的新符号标准，诸如 <code>@</code> 或 <code>/</code>。
</p>
<p>
当前，美国、英国、澳大利亚、加拿大、新西兰等主要英语圈国家皆已完成了向 UEB 的过渡，全球各地的英语教材和公共文件均以上述 UEB 准则为标准进行提供。
</p>
