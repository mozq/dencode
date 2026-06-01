<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>カラー名について</h3>
<p>カラー名は、CSSで定義されている名前付きカラーを使って色を表す方法です。<code>red</code>、<code>blue</code>、<code>orange</code> のようなキーワードで指定できるため、HTMLやCSSでよく使われる色を読みやすく記述できます。</p>

<p>例えば、赤などの主要な色は以下のように表せます。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>色</th><th>カラー名</th><th>RGB表記</th><th>16進表記</th></tr>
		</thead>
		<tbody>
			<tr><td>赤</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>ライム</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>青</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黒</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>オレンジ</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>透明</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> は、透明な黒を表す特別なカラー名です。</p>

<p>カラー名は、<code>transparent</code> を除いて透明度の情報を持ちません。DenCodeでは、透明度を含む色が名前付きカラーとして表せる場合、CSSの相対色構文で表示します。例えば、半透明の <code>red</code> は <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code> のように表します。</p>

<h4>カラー名とRGBの違い</h4>
<p>カラー名は、人が読みやすいキーワードで代表的な色を表す方法です。一方、<a href="${dc:h(basePath)}/color/rgb">RGB</a>は、赤、緑、青の成分値を指定して、より多くの色を数値で表せます。CSSやHTMLで読みやすさを優先する場合はカラー名、細かい色指定や色変換を行う場合はRGB表記がよく使われます。</p>
