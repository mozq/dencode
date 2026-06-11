<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>О SHA-512</h3>
<p>SHA-512 — криптографическая хеш-функция, которая создает 512-битное значение хеша из данных любой длины. Она входит в семейство SHA-2 и выводит более длинное значение хеша, чем <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a>.</p>
<p>В DenCode введенная строка обрабатывается как последовательность байтов в выбранной кодировке символов, а значение хеша SHA-512 отображается в виде шестнадцатеричной строки длиной 128 символов.</p>

<p>Например, значение хеша SHA-512 для «Hello, world!» выглядит так.</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>Свойства значения хеша</h4>
<p>SHA-512 всегда создает одно и то же значение хеша для одного и того же ввода. Если ввод изменится даже немного, выходное значение хеша сильно изменится.</p>
<p>Хеш-функция является односторонней функцией, поэтому исходные входные данные нельзя восстановить из значения хеша.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Ввод</th><th scope="col">Значение хеша SHA-512</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
