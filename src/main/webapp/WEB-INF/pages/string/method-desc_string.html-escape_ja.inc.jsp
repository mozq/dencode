<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>HTMLエスケープについて</h3>
<p>HTMLエスケープは、HTML内で特別な意味を持つ文字を文字参照に変換し、文字列をHTMLのテキストとして安全に表示するための変換です。例えば、タグとして解釈される <code>&lt;</code> や <code>&gt;</code> を、<code>&amp;lt;</code> や <code>&amp;gt;</code> のように表します。</p>
<p>HTMLエスケープを行うことで、入力された文字列をHTMLタグや属性として解釈させず、画面上にそのまま表示できます。</p>

<p>例えば、「&lt;p&gt;Hello, world!&lt;/p&gt;」をHTMLエスケープすると以下のようになります。</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">文字</th><th scope="col">HTMLエスケープ後</th><th scope="col">説明</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>HTMLタグの開始として解釈される文字です。</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>HTMLタグの終了として解釈される文字です。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>文字参照の開始として解釈される文字です。</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>属性値をダブルクォートで囲む場合に特別な意味を持つ文字です。</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>属性値をシングルクォートで囲む場合に特別な意味を持つ文字です。</td></tr>
	</table>
</div>

<h4>基本エスケープと全てエスケープ</h4>
<p>DenCodeでは、HTMLエスケープの結果として「基本」と「全て」の2種類を表示します。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">種類</th><th scope="col">説明</th><th scope="col">「A &lt; あ」の変換例</th></tr>
		<tr><td>HTMLエスケープ (基本)</td><td><code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> の5文字を変換します。</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>HTMLエスケープ (全て)</td><td>HTML名前文字参照がある文字は名前文字参照に、その他の文字は10進数の数値文字参照に変換します。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>通常のHTML表示では、必要な文字だけを変換する基本エスケープがよく使われます。全てエスケープは、文字列をHTML文字参照として確認したい場合や、すべての文字を明示的な参照形式で表したい場合に使用できます。</p>

<h4>アンエスケープ</h4>
<p>HTMLアンエスケープは、HTML文字参照を元の文字に戻します。DenCodeでは、<code>&amp;lt;</code> や <code>&amp;amp;</code> などの名前文字参照に加えて、<code>&amp;#12354;</code> のような10進数の数値文字参照、<code>&amp;#x3042;</code> のような16進数の数値文字参照もデコードできます。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML文字参照</th><th scope="col">アンエスケープ後</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
