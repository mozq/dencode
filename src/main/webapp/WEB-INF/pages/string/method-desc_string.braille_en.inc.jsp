<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>About Braille</h3>
<p>
Braille is a tactile writing system consisting of raised dots, designed for use by people who are visually impaired.
It represents a single character or symbol using a combination of 6 dots arranged in 3 rows and 2 columns (6-dot Braille).
It is used worldwide, and the rules for assigning dots vary depending on the language.
</p>


<h3>English Braille (UEB Grade 1)</h3>
<p>
This tool converts based on the standard used in the English-speaking world, "Unified English Braille (UEB)" Grade 1 (uncontracted Braille: a system where each alphabet letter is represented one by one).
</p>

<p>Conversion Example:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alphabet</h4>
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
For uppercase alphabet letters, an uppercase indicator (<code>⠠</code>) is placed before the letter.
In addition, when uppercase letters are consecutive, the "uppercase word indicator (<code>⠠⠠</code>)" which specifies the entire word as uppercase, the "uppercase passage indicator (<code>⠠⠠⠠</code>)" for spanning multiple words, and the "uppercase terminator (<code>⠠⠄</code>)" to end its effect, are used.
</p>

<h4>Numbers</h4>
<p>
Numbers are represented by placing a numeric indicator (<code>⠼</code>) followed by the same Braille characters used for the alphabets a to j.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Numeric Indicator</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
If a lowercase letter from a to j immediately follows a number, a grade 1 indicator (<code>⠰</code>) is inserted to avoid confusion with numbers.
</p>

<h4>Main Symbols</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Comma)</th><td>⠂</td><th>. (Period)</th><td>⠲</td><th>! (Exclamation point)</th><td>⠖</td><th>? (Question mark)</th><td>⠦</td></tr>
		<tr><th>' (Apostrophe)</th><td>⠄</td><th>- (Hyphen)</th><td>⠤</td><th>; (Semicolon)</th><td>⠆</td><th>: (Colon)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Quotes & Brackets</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Double quote)</th><td>⠦ *** ⠴</td><th>' *** ' (Single quote)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Directional double quote)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Directional single quote)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Guillemets)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Angle bracket)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Parenthesis)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Bracket)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Brace)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Japanese Braille</h3>
<p>
Japanese Braille is written by converting sentences into Kana characters before converting them to Braille.
</p>

<p>Conversion Example:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
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
		<tr><th>ッ (Sokuon)</th><td>⠂</td><th>ー (Chōon)</th><td>⠒</td></tr>
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

<h4>Main Symbols</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Comma)</th><td>⠰</td><th>。 (Period)</th><td>⠲</td><th>？ (Question mark)</th><td>⠢</td><th>！ (Exclamation point)</th><td>⠖</td></tr>
		<tr><th>・ (Middle dot)</th><td>⠐</td><th>〜 (Wave dash)</th><td>⠤⠤</td><th>＆ (Ampersand)</th><td>⠰⠯</td><th>％ (Percent)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Quotes & Brackets</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Single quotation)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Double quotation)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Parenthesis)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Double parenthesis)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alphabet</h4>
<p>
When English or other foreign alphabets are mixed in, a foreign language indicator (<code>⠰</code>) is inserted just before the alphabet, followed by the UEB equivalent alphabet Braille.
</p>

<h4>Numbers</h4>
<p>
The rules are the same as for English Braille.
</p>

<h4>Word Spacing</h4>
<p>
DenCode does not automatically insert word spacing (space delimiting per word) and converts the input string directly into Braille. To create more accurate Japanese Braille, please pre-separate the input text by phrases (Wakachigaki) with spaces.
</p>


<h3>History of Braille</h3>
<p>
Modern 6-dot Braille was devised in 1825 by a Frenchman, Louis Braille.
He lost his eyesight in a childhood accident and perfected this system when he was only 15 years old.
Previous writing systems for the visually impaired relied on raised alphabet shapes on paper, which were very difficult to read and write.
However, the 6-dot Braille invented by Braille made it possible to read quickly with fingers and write easily using special instruments. Today, the word "Braille" itself has become established worldwide to mean "tactile writing system."
</p>
<p>
In Japan, the introduction of Braille began to be considered during the Meiji era.
In 1890, Japanese Braille (6-dot Braille), based on the current Kana syllabary, was completed by Kuraji Ishikawa, a teacher at the Tokyo School for the Blind and Deaf.
November 1st, the day Ishikawa's Braille proposal was officially adopted, is now celebrated as "Braille Day" in Japan.
</p>

<h3>Evolution of Braille in the English-speaking World and UEB</h3>
<p>
For a long time, the English-speaking world used its own unique Braille systems depending on the country or region.
For example, "English Braille, American Edition (EBAE)" was used as the standard in the US, and "Standard English Braille (SEB)" was used in the UK. Even though both were English, there were subtle differences in symbol and alphabet assignments and contraction spellings.
Furthermore, independent Braille codes existed for mathematics and science (like Nemeth Code) and computers (Computer Braille Code), leading to serious confusion in both learning and systems.
</p>
<p>
To resolve these national disparities and the proliferation of complex codes for specialized fields, the formulation of an international common standard began in the 1990s.
The result of this effort is <strong>Unified English Braille (UEB)</strong>, currently adopted as the global standard.
</p>
<p>
The most prominent change from pre-UEB systems like EBAE is the reorganization of symbols and the reduction/tightening of uncontracted rules (Grade 2).
In conventional systems, numerous and highly complex contractions were established to reduce character count as much as possible, but UEB abolished some confusing contractions (e.g., "ble" and "com").
Additionally, rules were created against using contractions in URLs and email addresses, and new symbols essential in modern digital society, such as <code>@</code> and <code>/</code>, were defined as standard.
</p>
<p>
Currently, major English-speaking countries such as the USA, UK, Australia, Canada, and New Zealand have all completed the transition to UEB, and English teaching materials and official documents worldwide are provided based on the UEB standard.
</p>
