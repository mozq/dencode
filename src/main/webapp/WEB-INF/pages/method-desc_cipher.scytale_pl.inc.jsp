<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Scytale</h3>
<p>Szyfr Scytale (czyt. skytale) to starożytna metoda szyfrowania transpozycyjnego, wykorzystująca cylinder i pasek pergaminu.</p>
<p>Pasek owija się wokół cylindra (scytale) i pisze wiadomość wzdłuż jego długości. Po rozwinięciu paska litery są przemieszane.</p>
<p>Kluczem szyfrującym jest liczba znaków mieszczących się w jednym obwodzie walca (lub liczba wierszy).</p>

<p>Przykład szyfrowania tekstu „THIS_IS_A_SECRET_MESSAGE” przy obwodzie 4 znaków:</p>

<p>1. Zapisujemy tekst wierszami o długości 4 (tyle ile mieści się na obwodzie).</p>
<pre>
-----------------------------------
     | T | H | I | S | _ | I |___|
     | S | _ | A | _ | S | E |
  ___| C | R | E | T | _ | M |
 |   | E | S | S | A | G | E |
-----------------------------------
</pre>

<p>2. Odczytujemy tekst kolumnami (tak jakbyśmy rozwinęli pasek).</p>
<pre>TSCEH_RSIAESS_TA_S_GIEME</pre>
