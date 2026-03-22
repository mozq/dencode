<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>点字について</h3>
<p>
点字 (Braille) は、視覚障害者が指先で触読できるように考案された、凸点からなる文字です。
縦3点、横2点の計6つの点で1つの文字や記号を表現します (6点点字)。
世界中で利用されており、言語によって点字の割り当てルールが異なります。
</p>


<h3>英語点字 (UEB Grade 1)</h3>
<p>
英語圏で標準的に使用されている「統一英語点字 (UEB: Unified English Braille)」の Grade 1 (1級英語点字: アルファベット1文字ずつそのまま表記する方式) に基づいて変換します。
</p>

<p>変換例:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>アルファベット</h4>
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
大文字アルファベットには、文字の前に大文字符 (<code>⠠</code>) を置きます。
また、大文字が連続する場合は、単語全体を大文字指定する「大文字単語符 (<code>⠠⠠</code>)」や、複数単語にまたがる場合の「大文字の一節符 (<code>⠠⠠⠠</code>)」、およびその効果を打ち切る「大文字終止符 (<code>⠠⠄</code>)」が用いられます。
</p>

<h4>数字</h4>
<p>
数符 (<code>⠼</code>) の後にアルファベットの a〜j と同じ点字を置くことで、数字を表します。
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>数符</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
数字の直後に小文字の a〜j が続く場合は、数字との混同を避けるために第1級符 (<code>⠰</code>) が挿入されます。
</p>

<h4>主な記号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (コンマ)</th><td>⠂</td><th>. (ピリオド)</th><td>⠲</td><th>! (感嘆符)</th><td>⠖</td><th>? (疑問符)</th><td>⠦</td></tr>
		<tr><th>' (アポストロフィ)</th><td>⠄</td><th>- (ハイフン)</th><td>⠤</td><th>; (セミコロン)</th><td>⠆</td><th>: (コロン)</th><td>⠒</td></tr>
	</table>
</div>

<h4>引用符・括弧</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (汎用二重引用符)</th><td>⠦ *** ⠴</td><th>' *** ' (汎用単一引用符)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (二重引用符)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (単一引用符)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (二重山型引用符)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (山括弧)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (丸括弧)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (角括弧)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (波括弧)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>日本語点字</h3>
<p>
日本語の点字は、文章を仮名にしてから点字に変換することで表記します。
</p>

<p>変換例:</p>
<pre>
「コンニチワ、セカイ！」
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>仮名</h4>
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

<h4>主な記号</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (読点)</th><td>⠰</td><th>。 (句点)</th><td>⠲</td><th>？ (疑問符)</th><td>⠢</td><th>！ (感嘆符)</th><td>⠖</td></tr>
		<tr><th>・ (中点)</th><td>⠐</td><th>〜 (波線)</th><td>⠤⠤</td><th>＆ (アンド)</th><td>⠰⠯</td><th>％ (パーセント)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>括弧</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (鍵括弧)</th><td>⠤ *** ⠤</td><th>『 *** 』 (二重鍵括弧)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (丸括弧)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (二重丸括弧)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>アルファベット</h4>
<p>
英語などの外国語アルファベットが混ざる場合は、アルファベットの直前に外字符 (<code>⠰</code>) が挿入され、その後にUEB相当のアルファベット点字が置かれます。
</p>

<h4>数字</h4>
<p>
英語点字と同じルールです。
</p>

<h4>分かち書き</h4>
<p>
DenCodeでは分かち書き (単語ごとのスペース区切り) を自動挿入せず、入力文字列をそのまま点字にします。より正確な日本語点字を作成する場合は、事前に入力文を文節ごとに分かち書きしてください。
</p>


<h3>点字の歴史</h3>
<p>
現代の6点点字は、1825年にフランスのルイ・ブライユ (Louis Braille) によって考案されました。
彼自身も幼い頃の事故で視力を失っており、わずか15歳の時にこのシステムを完成させました。
それまでの視覚障害者用の文字は、アルファベットの形をそのまま紙に浮き出させたもので、読み書きが非常に困難でした。
しかし、ブライユの考案した6点点字により、指で素早く読み取り、専用の器具で容易に書き記すことが可能になりました。現在では「Braille」という言葉自体が世界中で「点字」を意味する言葉として定着しています。
</p>
<p>
日本では、明治時代に入ってから点字の導入が検討され始めました。
1890年 (明治23年) に、東京盲亜学校の教師であった石川倉次によって、現在の仮名をベースとした日本点字 (6点点字) が完成しました。
この石川倉次による点字案が正式に採用された11月1日は、現在「点字の日」として記念日に制定されています。
</p>

<h3>英語圏における点字の変遷とUEB (統一英語点字)</h3>
<p>
英語圏では長らく、国や地域ごとに異なる独自の点字体系が使用されてきました。
たとえば、アメリカでは「English Braille, American Edition (EBAE)」、イギリスでは「Standard English Braille (SEB)」などが標準として用いられており、同じ英語であっても記号やアルファベットの割り当て、略語の綴り方が微妙に異なるケースがありました。
さらには、数学や科学 (Nemeth Codeなど)、コンピュータ (Computer Braille Code) 用に独立した点字コードが併存しており、学習面でもシステム面でも深刻な混乱を招いていました。
</p>
<p>
こうした国によるばらつきや、専門分野ごとの複雑なコードの乱立を解消するため、1990年代から国際的な共通規格の策定が開始されました。
その結果生まれたのが、現在世界標準として採用されている<strong>統一英語点字 (UEB: Unified English Braille)</strong> です。
</p>
<p>
EBAEなどのUEB以前の方式からの最も顕著な変更点は、記号類の整理と略字 (Grade 2) ルールの削減・厳格化です。
従来の方式では、少しでも文字数を減らすために非常に複雑で多数の略字 (Contractions) が設けられていましたが、UEBでは一部の紛らわしい略字が廃止されました (たとえば、"ble" や "com" など)。
また、URLやEメールアドレスなどでは略字を使用しないルールが設けられ、<code>@</code> や <code>/</code> といった現代のデジタル社会で必須となる新しい記号が標準で定義されました。
</p>
<p>
現在、アメリカ、イギリス、オーストラリア、カナダ、ニュージーランドなどの主要な英語圏はすべてUEBへの移行を完了しており、世界中の英語教材や公的文書がUEB基準で提供されています。
</p>
