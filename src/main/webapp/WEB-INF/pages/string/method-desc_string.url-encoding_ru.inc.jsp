<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О URL-кодировании</h3>
<p>URL-кодирование — это способ безопасно представить текст внутри URL. Формальное название этого механизма — "percent-encoding", определенное в спецификации URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Символы, имеющие специальное значение в URL, а также символы, которые неудобно использовать напрямую, преобразуются в знак процента (%) и две шестнадцатеричные цифры.</p>
<p>Например, пробел представляется как <code>%20</code>, восклицательный знак (<code>!</code>) как <code>%21</code>, а японский символ "あ" как <code>%E3%81%82</code> в UTF-8.</p>

<p>URL-кодирование сначала преобразует текст в байты с выбранной кодировкой символов, а затем при необходимости представляет каждый байт в виде <code>%HH</code>. В DenCode незарезервированные символы RFC 3986, то есть буквы, цифры и <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, не преобразуются; остальные символы кодируются с помощью процентного кодирования.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Символ</th><th scope="col">После URL-кодирования</th><th scope="col">Описание</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Буквы и цифры являются незарезервированными символами и не преобразуются.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> и <code>~</code> являются незарезервированными символами и не преобразуются.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Этот символ разделяет сегменты пути URL; кодируйте его, если он является частью значения.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Зарезервированный символ, с которого начинается строка запроса.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Зарезервированный символ, разделяющий параметры запроса.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Зарезервированный символ, разделяющий имя параметра и значение.</td></tr>
		<tr><td>Пробел</td><td><code>%20</code></td><td>При процентном кодировании URL пробел кодируется как <code>%20</code>; в <code>application/x-www-form-urlencoded</code> — как <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Кодируйте <code>+</code>, если сам знак плюса должен быть значением.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>В UTF-8 этот символ кодируется последовательностью из трех байтов.</td></tr>
	</table>
</div>

<p>Например, URL-кодирование строки "Hello, world!" дает следующий результат.</p>

<pre>Hello%2C%20world%21</pre>

<p>В этом примере запятая (<code>,</code>) становится <code>%2C</code>, пробел — <code>%20</code>, а восклицательный знак (<code>!</code>) — <code>%21</code>.</p>


<h4>Представление пробела в application/x-www-form-urlencoded</h4>
<p>В <code>application/x-www-form-urlencoded</code>, используемом при отправке HTML-форм, пробелы могут представляться как <code>+</code>. Этот формат определен в <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> как кодирование для отправки форм.</p>
<p>DenCode позволяет выбрать, выводить ли пробелы при кодировании как <code>%20</code> или как <code>+</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Формат</th><th scope="col">Результат для "Hello world"</th><th scope="col">Использование</th></tr>
		<tr><td>Процентное кодирование</td><td><code>Hello%20world</code></td><td>Общий формат, удобный для URL.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Используется в строках запроса и телах запросов HTML-форм.</td></tr>
	</table>
</div>
