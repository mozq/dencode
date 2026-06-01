<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于颜色名称</h3>
<p>颜色名称是使用 CSS 中定义的命名颜色来表示颜色的方法。可以用 <code>red</code>、<code>blue</code>、<code>orange</code> 等关键字指定，因此 HTML 和 CSS 中常用的颜色可以写得更易读。</p>

<p>例如，红色等主要颜色可以表示如下。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>颜色</th><th>颜色名称</th><th>RGB 表示</th><th>十六进制表示</th></tr>
		</thead>
		<tbody>
			<tr><td>红色</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>亮绿色</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>蓝色</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>白色</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>黑色</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>橙色</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>透明</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> 是表示透明黑色的特殊颜色名称。</p>

<p>除 <code>transparent</code> 外，颜色名称不包含透明度信息。在 DenCode 中，如果包含透明度的颜色可以用命名颜色表示，则会使用 CSS 相对颜色语法显示。例如，半透明的 <code>red</code> 会表示为 <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>。</p>

<h4>颜色名称和 RGB 的区别</h4>
<p>颜色名称是用便于阅读的关键字表示代表性颜色的方法。另一方面，<a href="${dc:h(basePath)}/color/rgb">RGB</a> 通过指定红、绿、蓝成分值，可以用数值表示更多颜色。在 CSS 或 HTML 中优先考虑可读性时常使用颜色名称；进行细致颜色指定或颜色转换时常使用 RGB 表示。</p>
