<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О цвете RGB</h3>
<p>Цвет RGB — это цветовая модель, которая представляет цвета сочетанием трех компонентов света: красного, зеленого и синего. Она широко используется для цветов на экране: дисплеев, веб-страниц и данных изображений.</p>

<p>В RGB интенсивность каждого компонента задается числовым значением. Обычно используется целое число от 0 до 255 или процент от 0% до 100%. Если все компоненты равны 0, цвет черный; если все компоненты максимальны, цвет белый.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Цвет</th><th>Запись RGB</th><th>Шестнадцатеричная запись</th></tr>
		</thead>
		<tbody>
			<tr><td>Красный</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Зеленый</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Синий</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Белый</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Черный</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Цвета RGB можно записывать в виде функции или в шестнадцатеричном виде. Например, красный можно представить как <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> или <code>#f00</code>.</p>

<p>Чтобы добавить прозрачность, укажите альфа-значение. Например, полупрозрачный красный можно представить как <code>rgb(255 0 0 / 50%)</code> или <code>#ff000080</code>.</p>

<p>Преобразование RGB-цветов в DenCode поддерживает следующие варианты записи.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Цвет RGB (hex)</caption>
		<thead>
			<tr><th>Вариант записи</th><th>Формат</th><th>Пример</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Цвет RGB</caption>
		<thead>
			<tr><th>Вариант записи</th><th>Формат</th><th>Пример</th></tr>
		</thead>
		<tbody>
			<tr><td>Число</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Процент</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> не является стандартной шестнадцатеричной записью цвета CSS, но это формат ARGB, который иногда используется в программах и настройках приложений. Начальное <code>AA</code> означает альфа, затем <code>RR</code>, <code>GG</code> и <code>BB</code> обозначают красный, зеленый и синий.</p>

<h4>sRGB и другие цветовые пространства RGB</h4>
<p>RGB — это цветовая модель с тремя компонентами: красным, зеленым и синим. Однако даже при одинаковых RGB-значениях фактический цвет зависит от цветового пространства интерпретации. Обычные для веба <code>rgb()</code> и <code>#RRGGBB</code> обычно рассматриваются как цвета sRGB.</p>

<p>CSS Color Module Level 4 также определяет RGB-пространства с гамутом, отличным от sRGB, например Display P3 и ProPhoto RGB. DenCode также поддерживает преобразование этих пространств.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Цветовое пространство</th><th>Формат</th><th>Пример</th><th>Особенности</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>Обычное RGB-пространство для веба и CSS. Шестнадцатеричные коды и обычные значения <code>rgb()</code> в основном рассматриваются как sRGB. <code>color(srgb ...)</code> — формат CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Цветовое пространство с тем же гамутом, что и sRGB, но с линеаризованными компонентами. Используется для расчетов и композиции цвета.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Пространство с более широким гамутом, чем sRGB, используемое на wide-gamut дисплеях и некоторых мобильных устройствах.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Пространство шире sRGB, иногда используемое в обработке фотографий и печатных workflow.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>RGB-пространство с еще более широким гамутом, чем Adobe RGB, используемое как рабочее пространство при обработке фотографий.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>RGB-пространство с очень широким гамутом, используемое в стандартах UHDTV и HDR-видео.</td></tr>
		</tbody>
	</table>
</div>

<p>Цвета, заданные в RGB-пространствах с широким гамутом, могут неточно отображаться на sRGB-экранах или обычными шестнадцатеричными кодами. При преобразовании в <code>#RRGGBB</code> или числовой <code>rgb(R G B)</code> DenCode обрабатывает компоненты вне диапазона sRGB так, чтобы они попадали в диапазон от <code>0</code> до <code>255</code>. При выборе <code>color(display-p3 ...)</code> или <code>color(a98-rgb ...)</code> их можно отображать как значения выбранного пространства.</p>
