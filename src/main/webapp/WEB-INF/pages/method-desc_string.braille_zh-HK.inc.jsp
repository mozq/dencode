<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>關於點字</h3>
<p>
點字 (Braille) 是一種由凸點組成的觸覺書寫系統，專為視障人士設計，可用指尖觸摸閱讀。
它透過3行2列共6個點的組合來表示一個字元或符號（6點盲文）。
該系統在全球廣泛使用，並且打點規則因語言而異。
</p>


<h3>英語點字 (UEB Grade 1)</h3>
<p>
本工具以英語國家標準使用的「統一英語盲文 (UEB: Unified English Braille)」的 Grade 1（一級英語盲文：逐個字母直接書寫的方式）為基準進行轉換。不支援縮寫形式 (Grade 2)。
</p>

<p>轉換範例:</p>
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
對於大寫字母，需在字母前面加上大寫符號 (<code>⠠</code>)。
此外，如果存在連續大寫字母時，會使用各種符號：使用「大寫單詞符號 (<code>⠠⠠</code>)」指定整個單詞大寫；跨多個單詞時使用「大寫段落符號 (<code>⠠⠠⠠</code>)」；並在作用結束時使用「大寫終止符號 (<code>⠠⠄</code>)」。
</p>

<h4>數字</h4>
<p>
數字前必須放置數字符號 (<code>⠼</code>)。數字符號後面的字元將作為數字處理，它會沿用字母 a 到 j 的點字組合。
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>數字符號</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
當數字緊接著小寫字母 a 到 j 時，會插入一級盲文符號 (<code>⠰</code>) 以避免與數字混淆。
</p>

<h4>主要符號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (逗號)</th><td>⠂</td><th>. (句號)</th><td>⠲</td><th>! (驚嘆號)</th><td>⠖</td><th>? (問號)</th><td>⠦</td></tr>
		<tr><th>' (撇號)</th><td>⠄</td><th>- (連字號)</th><td>⠤</td><th>; (分號)</th><td>⠆</td><th>: (冒號)</th><td>⠒</td></tr>
	</table>
</div>

<h4>引號與括號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (通用雙引號)</th><td>⠦ *** ⠴</td><th>' *** ' (通用單引號)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (方向性雙引號)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (方向性單引號)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (雙尖括號)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (尖括號)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (圓括號)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (方括號)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (花括號)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>日語點字</h3>
<p>
日語點字是透過將句子轉換為假名，然後再轉換為盲文來表達的。
</p>

<p>轉換範例:</p>
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
		<tr><th>ッ (促音)</th><td>⠂</td><th>ー (長音)</th><td>⠒</td></tr>
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

<h4>主要符號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (頓號)</th><td>⠰</td><th>。 (句號)</th><td>⠲</td><th>？ (問號)</th><td>⠢</td><th>！ (嘆號)</th><td>⠖</td></tr>
		<tr><th>・ (間隔號)</th><td>⠐</td><th>〜 (波浪號)</th><td>⠤⠤</td><th>＆ (連結號)</th><td>⠰⠯</td><th>％ (百分號)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>引號與括號</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (單引號)</th><td>⠤ *** ⠤</td><th>『 *** 』 (雙引號)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (圓括號)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (雙圓括號)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>字母</h4>
<p>
當日語中混有英語等外語字母時，會在字母前插入外文符號 (<code>⠰</code>)，其後跟上對應的 UEB 英語點字。
</p>

<h4>數字</h4>
<p>
與英語點字規則相同。
</p>

<h4>分詞（分音節書寫）</h4>
<p>
DenCode 不會自動插入分詞（各單字間的空格分隔），而是將輸入的字串原樣轉換為盲文。如需獲得更準確的日語點字翻譯，請預先使用空格將被轉換文本按文節分詞。
</p>


<h3>點字的歷史</h3>
<p>
現代 6 點制盲文是 1825 年由法國人路易斯·布萊葉 (Louis Braille) 發明的。
他在幼年時因事故失明，並在年僅 15 歲時就完善了這一系統。
在此之前的視障人士書寫系統多使用紙上凸起的普通字元形狀，讀寫都極其困難。
但布萊葉發明的 6 點點字系統使得人們能夠用手指快速閱讀，並使用專用工具輕鬆書寫。如今，“Braille”一詞在全球已廣泛成為“點字/盲文”的代名詞。
</p>
<p>
在日本，盲文的引入於明治時代開始被探討。
1890 年（明治 23 年），東京盲啞學校教師石川倉次以當時的假名為基礎，完成了現在的日本盲文（6 點點字）。
這一方案被正式採納的 11 月 1 日，現在被定為日本的「點字紀念日」。
</p>

<h3>英語國家的點字演進與 UEB（統一英語盲文）</h3>
<p>
長期以來，英語國家曾因國家或地區不同而使用各自獨特的盲文系統。
例如，美國以「美國版英語盲文 (EBAE)」為標準，英國以「標準英語盲文 (SEB)」為基準。即使同為英語，符號和字母的分配、縮寫的拼字規則等也存在微妙的不同。
此外，數學和科學（如 Nemeth 密碼）以及電腦（Computer Braille Code）領域還存在獨立的盲文編碼，這種情況讓學習或系統上的支援面臨了嚴重的混亂。
</p>
<p>
為了消除國家之間的差異以及各種專業領域密碼的混亂，自 20 世紀 90 年代起開始制定國際通用標準。
其成果即為當前被作為全球標準採用的<strong>統一英語盲文 (UEB: Unified English Braille)</strong>。
</p>
<p>
與諸如 EBAE 等被統合的各系統相比，其最顯著的變更是符號整理和縮寫形式 (Grade 2) 的削減及嚴格化。
在傳統系統中，為了盡可能減少字数，建立了極其繁瑣且多樣化的縮寫規則 (Contractions)，而 UEB 則廢除了一些容易引起混淆的縮寫（例如 "ble" 和 "com"）。
同時明確規定了在 URL 或電子郵件地址等情況中不使用縮寫，並制定了當代數位社會必需的新符號標準，諸如 <code>@</code> 或 <code>/</code>。
</p>
<p>
當前，美國、英國、澳大利亞、加拿大、紐西蘭等主要英語圈國家皆已完成了向 UEB 的過渡，全球各地的英語教材和公共文件均以上述 UEB 準則為標準提供。
</p>
