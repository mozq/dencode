<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>О цвете CMYK</h3>
<p>Цвет CMYK — это цветовая модель, которая описывает цвет четырьмя компонентами: голубым, пурпурным, желтым и черным (key plate). Она используется главным образом в печати и настольной издательской подготовке и основана на субтрактивном смешении, при котором цвет создается наложением красок.</p>

<p>В CMYK каждый компонент задается в диапазоне от 0% до 100%. Обычно <code>C</code>, <code>M</code> и <code>Y</code> описывают цветовой тон, а <code>K</code> — количество черного. Если все компоненты равны 0%, цвет белый; если <code>K</code> равен 100%, цвет близок к черному.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Цвет</th><th>Запись CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Красный</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Голубой</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Пурпурный</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Желтый</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Белый</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Черный</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Чтобы добавить прозрачность, укажите альфа-значение. Например, полупрозрачный красный можно записать как <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Цветовые профили</h4>
<p>В DenCode можно выбрать несколько цветовых профилей. Поддерживаемые профили перечислены ниже.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Цвет CMYK</caption>
		<thead>
			<tr><th>Цветовой профиль</th><th>Пример записи CMYK</th><th>Особенности</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Простое преобразование между RGB и CMYK. Оно не зависит от конкретных условий печати или ICC-профилей.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Цветовой профиль CMYK, приближающий U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Преобразование CMYK с использованием ICC-профиля SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Преобразование CMYK с использованием ICC-профиля GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Преобразование CMYK с использованием ICC-профиля FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Цветовой профиль CMYK, приближающий FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Цветовой профиль CMYK, приближающий FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Цвета CMYK с «ICC-профилем» или «приближенным цветовым профилем» представляются в формате пользовательского цветового пространства CSS <code>color(--profile C% M% Y% K%)</code>. Для использования в реальном CSS укажите соответствующий ICC-профиль с помощью <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Приближенные цветовые профили вычисляют приближенные цвета CMYK на основе опубликованных Characterization data. Поэтому даже при использовании похожего ICC-профиля через CSS <code>@color-profile</code> отображаемый цвет может немного отличаться.</p>

<h4>Разница между CMYK и RGB</h4>
<p>CMYK — это субтрактивная цветовая модель для печатных красок. <a href="${dc:h(basePath)}/color/rgb">RGB</a>, напротив, является аддитивной моделью для света, например на дисплеях. Даже для визуально одинаковых цветов значения компонентов CMYK и RGB могут сильно различаться.</p>
