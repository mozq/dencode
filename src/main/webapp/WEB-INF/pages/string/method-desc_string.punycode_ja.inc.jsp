<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDNについて</h3>
<p>Punycodeは、Unicode文字列をASCII文字だけで表すための符号化方式です。主に、日本語や中国語、韓国語、アクセント付きラテン文字などを含む国際化ドメイン名 (IDN: Internationalized Domain Name) を、DNSで扱えるASCII形式に変換するために使用されます。</p>
<p>国際化ドメイン名では、ドメイン名の各ラベルをPunycodeで変換し、変換されたラベルの先頭に <code>xn--</code> を付けます。このASCII形式はA-label、元のUnicode形式はU-labelと呼ばれます。</p>

<p>例えば、「ドメイン.com」をPunycode IDNに変換すると以下のようになります。</p>

<pre>xn--eckwd4c7c.com</pre>

<p>この例では、トップレベルドメインの <code>com</code> はASCIIだけで構成されているためそのまま残り、「ドメイン」の部分だけが <code>xn--eckwd4c7c</code> に変換されます。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Unicode形式</th><th scope="col">Punycode IDN形式</th><th scope="col">説明</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>日本語を含むドメイン名です。</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>複数のラベルがそれぞれ変換されます。</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>アクセント付きラテン文字を含む例です。</td></tr>
	</table>
</div>

<p>Punycode IDNは、URLエンコーディングとは別の仕組みです。URLエンコーディングがURL内の文字を <code>%E3%81%82</code> のようなバイト列で表すのに対し、Punycode IDNはドメイン名のラベルを <code>xn--</code> で始まるASCIIラベルに変換します。</p>


<h4>ドメイン名のラベル単位の変換</h4>
<p>ドメイン名はドット (<code>.</code>) で区切られたラベルの並びです。Punycode IDNでは、ドメイン名全体を1つの文字列として変換するのではなく、各ラベルを個別に変換します。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">ラベル</th><th scope="col">変換結果</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>そのため、<code>例え.テスト</code> の変換結果は <code>xn--r8jz45g.xn--zckzah</code> になります。</p>
