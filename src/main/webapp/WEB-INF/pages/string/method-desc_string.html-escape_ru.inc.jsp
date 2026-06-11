<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Об экранировании HTML</h3>
<p>Экранирование HTML преобразует символы, имеющие специальное значение в HTML, в символьные ссылки, чтобы строку можно было безопасно показать как HTML-текст. Например, <code>&lt;</code> и <code>&gt;</code>, которые могут быть восприняты как теги, записываются как <code>&amp;lt;</code> и <code>&amp;gt;</code>.</p>
<p>После экранирования HTML введенный текст не интерпретируется как HTML-теги или атрибуты, а отображается на экране как обычный текст.</p>

<p>Например, при экранировании HTML строки «&lt;p&gt;Hello, world!&lt;/p&gt;» получается следующий результат.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Символ</th><th scope="col">После экранирования HTML</th><th scope="col">Описание</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Может быть интерпретирован как начало HTML-тега.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Может быть интерпретирован как конец HTML-тега.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Может быть интерпретирован как начало символьной ссылки.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Имеет специальное значение, когда значение атрибута заключено в двойные кавычки.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Имеет специальное значение, когда значение атрибута заключено в одинарные кавычки.</td></tr>
	</table>
</div>

<h4>Базовое и полное экранирование</h4>
<p>DenCode показывает два результата экранирования HTML: «базовое» и «полное».</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Тип</th><th scope="col">Описание</th><th scope="col">Пример для «A &lt; あ»</th></tr>
		<tr><td>Экранирование HTML (базовое)</td><td>Преобразует пять символов: <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> и <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>Экранирование HTML (полное)</td><td>Использует именованные символьные ссылки, если они существуют, а для остальных символов — десятичные числовые символьные ссылки.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Для обычного отображения HTML чаще всего используется базовое экранирование, которое преобразует только необходимые символы. Полное экранирование удобно, когда нужно проверить строку как HTML-символьные ссылки или явно представить каждый символ в виде ссылки.</p>

<h4>Снятие экранирования</h4>
<p>Снятие экранирования HTML преобразует HTML-символьные ссылки обратно в исходные символы. DenCode может декодировать именованные символьные ссылки, такие как <code>&amp;lt;</code> и <code>&amp;amp;</code>, десятичные числовые символьные ссылки, такие как <code>&amp;#12354;</code>, а также шестнадцатеричные числовые символьные ссылки, такие как <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">HTML-символьная ссылка</th><th scope="col">После снятия экранирования</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
