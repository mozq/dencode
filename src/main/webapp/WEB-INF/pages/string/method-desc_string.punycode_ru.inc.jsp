<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О Punycode IDN</h3>
<p>Punycode — это способ кодирования, который позволяет представлять строки Unicode только символами ASCII. Он в основном используется для преобразования интернационализированных доменных имен (IDN), например с японскими, китайскими, корейскими или латинскими буквами с диакритикой, в ASCII-форму, которую может обрабатывать DNS.</p>
<p>В интернационализированном доменном имени каждая метка домена преобразуется с помощью Punycode, а к преобразованной метке добавляется префикс <code>xn--</code>. Такая ASCII-форма называется A-label, а исходная Unicode-форма — U-label.</p>

<p>Например, преобразование «ドメイン.com» в Punycode IDN дает следующий результат.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>В этом примере домен верхнего уровня <code>com</code> состоит только из ASCII-символов и остается без изменений. Преобразуется только метка «ドメイン»: она становится <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Форма Unicode</th><th scope="col">Форма Punycode IDN</th><th scope="col">Описание</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Доменное имя с японскими символами.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Каждая метка преобразуется отдельно.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Пример с латинской буквой с диакритикой.</td></tr>
	</table>
</div>

<p>Punycode IDN отличается от URL-кодирования. URL-кодирование представляет символы в URL как последовательности байтов, например <code>%E3%81%82</code>. Punycode IDN преобразует метки доменного имени в ASCII-метки, начинающиеся с <code>xn--</code>.</p>

<h4>Преобразование по меткам домена</h4>
<p>Доменное имя состоит из меток, разделенных точками (<code>.</code>). Punycode IDN преобразует не все доменное имя как одну строку, а каждую метку отдельно.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Метка</th><th scope="col">Результат преобразования</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Поэтому <code>例え.テスト</code> преобразуется в <code>xn--r8jz45g.xn--zckzah</code>.</p>
