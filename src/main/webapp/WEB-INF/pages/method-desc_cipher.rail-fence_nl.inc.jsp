<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Rail Fence Cijfer</h3>
<p>Het Rail Fence Cijfer is een type transpositiecijfer waarbij tekens in een tekst worden herschikt om te versleutelen.</p>
<p>"Rail Fence" verwijst naar een hek met rails (dwarsbalken). Encryptie wordt uitgevoerd door tekens in een zigzagpatroon op de rails te plaatsen en ze vervolgens per rail met elkaar te verbinden.</p>
<p>Het aantal rails is de sleutel van de encryptie.</p>

<p>Bijvoorbeeld, als u "THIS_IS_A_SECRET_MESSAGE" versleutelt met 4 rails:</p>

<p>1. Bereid 4 rails voor (hoogte 4) en plaats tekens in een zigzagpatroon van linksboven.</p>
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

<p>2. Haal de geplaatste tekens per rail op.</p>
<pre>
TSCE
HI_ERMSE
I_ASE_SG
S_TA
</pre>

<p>3. Verbind de tekens van de rails.</p>
<pre>TSCEHI_ERMSEI_ASE_SGS_TA</pre>
