<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Об обратном тексте</h3>
<p>Обратный текст меняет порядок символов во введенной строке. Вся строка читается от последнего символа к первому.</p>

<p>Например, при обращении строки "Hello, world!" получится:</p>

<pre>!dlrow ,olleH</pre>

<p>В многострочном тексте символы перевода строки также считаются частью строки. Поэтому обращается все содержимое, включая порядок строк.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ввод</th><th scope="col">После преобразования</th></tr>
		<tr><td><code>abc</code></td><td><code>cba</code></td></tr>
		<tr><td><code>12345</code></td><td><code>54321</code></td></tr>
		<tr><td><code>Hello, world!</code></td><td><code>!dlrow ,olleH</code></td></tr>
	</table>
</div>

<p>Это преобразование не переставляет слова с сохранением смысла предложения. Оно просто меняет порядок введенных символов на обратный.</p>
