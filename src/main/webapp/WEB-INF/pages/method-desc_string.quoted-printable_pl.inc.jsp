<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Quoted-Printable</h3>
<p>Quoted-Printable to metoda kodowania używająca 7-bitowych znaków ASCII. Jest stosowana w e-mailach do przesyłania danych 8-bitowych przez kanały 7-bitowe.</p>
<p>Dane 8-bitowe są reprezentowane jako =XX (dwie cyfry szesnastkowe). Na przykład „あ” w UTF-8 to „=E3=81=82”. Znaki 7-bitowe, takie jak „A”, pozostają bez zmian.</p>


<h4>Nagłówki wiadomości E-mail (MIME) – RFC 2047</h4>
<p>DenCode obsługuje dekodowanie nagłówków MIME (RFC 2047), używanych np. w tematach e-maili zawierających znaki spoza ASCII.</p>

<pre>Subject: =?UTF-8?Q?=E3=82=B5=E3=83=B3=E3=83=97=E3=83=AB?=</pre>

<p>Wynik dekodowania:</p>

<pre>Subject: サンプル</pre>
