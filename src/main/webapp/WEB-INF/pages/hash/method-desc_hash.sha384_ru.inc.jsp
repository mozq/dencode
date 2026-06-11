<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>О SHA-384</h3>
<p>SHA-384 — криптографическая хеш-функция, которая создает 384-битное значение хеша из данных любой длины. Она входит в семейство SHA-2 и выводит более длинное значение хеша, чем <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>В DenCode введенная строка обрабатывается как последовательность байтов в выбранной кодировке символов, а значение хеша SHA-384 отображается в виде шестнадцатеричной строки длиной 96 символов.</p>

<p>Например, значение хеша SHA-384 для «Hello, world!» выглядит так.</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>Свойства значения хеша</h4>
<p>SHA-384 всегда создает одно и то же значение хеша для одного и того же ввода. Если ввод изменится даже немного, выходное значение хеша сильно изменится.</p>
<p>Хеш-функция является односторонней функцией, поэтому исходные входные данные нельзя восстановить из значения хеша.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ввод</th><th scope="col">Значение хеша SHA-384</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
