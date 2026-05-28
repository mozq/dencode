<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Płotkowym (Rail Fence)</h3>
<p>Szyfr Płotkowy (Rail Fence Cipher) to rodzaj szyfru transpozycyjnego, w którym litery tekstu są przestawiane.</p>
<p>Nazwa pochodzi od sposobu zapisywania liter w formie zygzaka na "szynach" (liniach) płotu, a następnie odczytywania ich wierszami.</p>
<p>Liczba szyn (linii) jest kluczem szyfrowania.</p>

<p>Przykład szyfrowania tekstu „THIS_IS_A_SECRET_MESSAGE” na 4 szynach:</p>

<p>1. Przygotuj 4 szyny (wysokość 4) i zapisz tekst zygzakiem.</p>
<pre>
-----------------------------------------------
T           S           C           E          
-----------------------------------------------
  H       I   _       E   R       M   S       E
-----------------------------------------------
    I   _       A   S       E   _       S   G  
-----------------------------------------------
      S           _           T           A    
-----------------------------------------------
</pre>

<p>2. Odczytaj litery z każdej szyny.</p>
<pre>
TSCE
HI_ERMSE
I_ASE_SG
S_TA
</pre>

<p>3. Połącz odczytane ciągi znaków.</p>
<pre>TSCEHI_ERMSEI_ASE_SGS_TA</pre>
