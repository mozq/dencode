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

<h4>Параметры HTML-экранирования</h4>
<p>DenCode позволяет выбрать цель преобразования, способ использования именованных ссылок на символы и запись числовых ссылок.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Цель</caption>
		<tr><th scope="col">Параметр</th><th scope="col">Описание</th><th scope="col">Пример для «A &lt; 😀»</th></tr>
		<tr><td>Базовые</td><td>Преобразует пять символов <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> и <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Базовые + не-ASCII</td><td>Преобразует пять базовых символов и символы вне ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Не буквенно-цифровые</td><td>Преобразует символы, кроме букв и цифр ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Все</td><td>Преобразует все символы.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Для обычного отображения HTML часто используется «Базовые», так как этот вариант преобразует только необходимые символы. Используйте «Все», если нужно проверить строку как HTML-ссылки на символы или явно представить каждый символ в виде ссылки.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Именованные ссылки на символы</caption>
		<tr><th scope="col">Параметр</th><th scope="col">Описание</th><th scope="col">Пример</th></tr>
		<tr><td>HTML5</td><td>Использует именованные ссылки на символы, определенные в HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Использует именованные ссылки на символы, определенные в HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Использует пять ссылок <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> и <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Нет</td><td>Не использует именованные ссылки; применяются только числовые ссылки.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Запись числовых ссылок</caption>
		<tr><th scope="col">Параметр</th><th scope="col">Описание</th><th scope="col">Пример</th></tr>
		<tr><td>Десятичные</td><td>Использует десятичные числовые ссылки.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Шестнадцатеричные строчные</td><td>Использует шестнадцатеричные числовые ссылки со строчными буквами.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Шестнадцатеричные прописные</td><td>Использует шестнадцатеричные числовые ссылки с прописными буквами.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
