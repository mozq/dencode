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

<h4>HTMLエスケープのオプション</h4>
<p>DenCodeでは、変換対象、名前文字参照の使い方、数値参照の表記を選択できます。</p>

<div class="table-responsive">
	<table class="table">
		<caption>対象</caption>
		<tr><th scope="col">オプション</th><th scope="col">説明</th><th scope="col">「A &lt; 😀」の変換例</th></tr>
		<tr><td>基本</td><td><code>&lt;</code>、<code>&gt;</code>、<code>&amp;</code>、<code>&quot;</code>、<code>'</code> の5文字を変換します。</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>基本 + 非ASCII</td><td>基本5文字に加えて、非ASCII文字を変換します。</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>英数字以外</td><td>ASCII英数字以外の文字を変換します。</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>すべて</td><td>すべての文字を変換します。</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>通常のHTML表示では、必要な文字だけを変換する「基本」がよく使われます。文字列をHTML文字参照として確認したい場合や、すべての文字を明示的な参照形式で表したい場合は、「すべて」を使用できます。</p>

<div class="table-responsive">
	<table class="table">
		<caption>名前文字参照</caption>
		<tr><th scope="col">オプション</th><th scope="col">説明</th><th scope="col">例</th></tr>
		<tr><td>HTML5</td><td>HTML5で定義されている名前文字参照を使用します。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>HTML4で定義されている名前文字参照を使用します。</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td><code>&amp;lt;</code>、<code>&amp;gt;</code>、<code>&amp;amp;</code>、<code>&amp;quot;</code>、<code>&amp;apos;</code> の5つを使用します。</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>なし</td><td>名前文字参照を使わず、数値参照だけで変換します。</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>数値参照の表記</caption>
		<tr><th scope="col">オプション</th><th scope="col">説明</th><th scope="col">例</th></tr>
		<tr><td>10進</td><td>10進数の数値文字参照で表します。</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>16進小文字</td><td>16進数の数値文字参照を小文字で表します。</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>16進大文字</td><td>16進数の数値文字参照を大文字で表します。</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
