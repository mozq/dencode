<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>О названиях цветов</h3>
<p>Названия цветов — это способ представления цвета с помощью именованных цветов, определенных в CSS. Поскольку цвета можно задавать ключевыми словами вроде <code>red</code>, <code>blue</code> и <code>orange</code>, часто используемые цвета в HTML и CSS можно записывать более читабельно.</p>

<p>Например, основные цвета, такие как красный, можно представить следующим образом.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Цвет</th><th>Название цвета</th><th>Запись RGB</th><th>Шестнадцатеричная запись</th></tr>
		</thead>
		<tbody>
			<tr><td>Красный</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Лайм</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Синий</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Белый</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Черный</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Оранжевый</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Прозрачный</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> — специальное название цвета, обозначающее прозрачный черный.</p>

<p>Названия цветов, кроме <code>transparent</code>, не содержат информации о прозрачности. В DenCode, если цвет с прозрачностью можно представить как именованный цвет, он отображается с помощью относительного синтаксиса цвета CSS. Например, полупрозрачный <code>red</code> представляется как <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Разница между названиями цветов и RGB</h4>
<p>Названия цветов представляют распространенные цвета с помощью понятных ключевых слов. <a href="${dc:h(basePath)}/color/rgb">RGB</a>, напротив, задает значения компонентов красного, зеленого и синего и может численно представить гораздо больше цветов. Названия цветов часто используют, когда важна читаемость CSS или HTML; запись RGB часто применяется для точного задания цвета или преобразований.</p>
