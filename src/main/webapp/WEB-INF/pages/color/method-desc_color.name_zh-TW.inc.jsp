<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>關於顏色名稱</h3>
<p>顏色名稱是使用 CSS 中定義的命名顏色來表示顏色的方法。可以用 <code>red</code>、<code>blue</code>、<code>orange</code> 等關鍵字指定，因此 HTML 和 CSS 中常用的顏色可以寫得更易讀。</p>

<p>例如，紅色等主要顏色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>顏色</th><th>顏色名稱</th><th>RGB 表示</th><th>十六進位表示</th></tr>
		</thead>
		<tbody>
			<tr><td>紅色</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>亮綠色</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>藍色</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白色</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黑色</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>橙色</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>透明</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> 是表示透明黑色的特殊顏色名稱。</p>

<p>除 <code>transparent</code> 外，顏色名稱不包含透明度資訊。在 DenCode 中，如果包含透明度的顏色可以用命名顏色表示，則會使用 CSS 相對顏色語法顯示。例如，半透明的 <code>red</code> 會表示為 <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>。</p>

<h4>顏色名稱和 RGB 的差異</h4>
<p>顏色名稱是用便於閱讀的關鍵字表示代表性顏色的方法。另一方面，<a href="${dc:h(basePath)}/color/rgb">RGB</a> 透過指定紅、綠、藍成分值，可以用數值表示更多顏色。在 CSS 或 HTML 中優先考慮可讀性時常使用顏色名稱；進行細緻顏色指定或顏色轉換時常使用 RGB 表示。</p>
