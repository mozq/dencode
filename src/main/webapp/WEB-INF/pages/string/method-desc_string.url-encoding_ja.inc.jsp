<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>URLエンコーディングについて</h3>
<p>URLエンコーディングは、URLに含める文字列を安全に表すための符号化方式です。正式には、URIの仕様である <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a> で定義される「パーセントエンコーディング (percent-encoding)」と呼ばれます。</p>
<p>URLで特別な意味を持つ文字や、URLとしてそのまま扱いにくい文字を、パーセント記号 (%) と16進数2桁の形式に変換します。</p>
<p>例えば、半角スペースは <code>%20</code>、感嘆符 (<code>!</code>) は <code>%21</code>、日本語の「あ」はUTF-8では <code>%E3%81%82</code> と表されます。</p>

<p>URLエンコーディングでは、文字列を指定された文字コードのバイト列に変換し、各バイトを必要に応じて <code>%HH</code> の形式で表します。DenCodeでは、RFC 3986の未予約文字である英数字と <code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> は変換せず、そのほかの文字をパーセントエンコードします。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">文字</th><th scope="col">URLエンコーディング後</th><th scope="col">説明</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>英数字は未予約文字のため変換しません。</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>、<code>.</code>、<code>_</code>、<code>~</code> は未予約文字のため変換しません。</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>URLのパス区切り文字としての意味を持つため、値として扱う場合はエンコードします。</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>クエリ文字列の開始を表す予約文字です。</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>クエリパラメーターの区切りとして使われる予約文字です。</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>クエリパラメーターの名前と値の区切りとして使われる予約文字です。</td></tr>
		<tr><td>半角スペース</td><td><code>%20</code></td><td>URLのパーセントエンコーディングでは <code>%20</code>、<code>application/x-www-form-urlencoded</code> では <code>+</code> にエンコードします。</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td><code>+</code> そのものを値として扱う場合はエンコードが必要です。</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>UTF-8では3バイトの列としてエンコードします。</td></tr>
	</table>
</div>

<p>例えば、「Hello, world!」をURLエンコーディングすると以下のようになります。</p>

<pre>Hello%2C%20world%21</pre>

<p>この例では、カンマ (<code>,</code>) が <code>%2C</code>、半角スペースが <code>%20</code>、感嘆符 (<code>!</code>) が <code>%21</code> に変換されています。</p>


<h4>application/x-www-form-urlencoded のスペース表記</h4>
<p>HTMLフォームの送信などで使われる <code>application/x-www-form-urlencoded</code> では、半角スペースを <code>+</code> として表すことがあります。この形式は <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> のフォーム送信で使われるエンコーディングとして定義されています。</p>
<p>DenCodeでは、エンコード時のオプションで半角スペースを <code>%20</code> または <code>+</code> のどちらで出力するかを選択できます。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">形式</th><th scope="col">「Hello world」の変換結果</th><th scope="col">用途</th></tr>
		<tr><td>パーセントエンコーディング</td><td><code>Hello%20world</code></td><td>URL一般で使いやすい形式です。</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>HTMLフォームのクエリ文字列やリクエスト本文で使われる形式です。</td></tr>
	</table>
</div>
