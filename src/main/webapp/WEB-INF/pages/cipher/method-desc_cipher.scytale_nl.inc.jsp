<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Scytale Cijfer</h3>
<p>Het Scytale Cijfer is een type transpositiecijfer waarbij tekens in een tekst worden herschikt om te versleutelen. Scytale betekent baton (stok) in het Grieks.</p>
<p>Een lange strook perkament wordt om een stok gewikkeld en de tekens worden geschreven over het perkament om te versleutelen.</p>
<p>Het aantal tekens dat in één omwenteling van de stok kan worden geschreven, is de sleutel van de encryptie. Of het aantal tekens dat in één regel kan worden geschreven (het aantal keren dat het perkament is gewikkeld) kan ook worden opgegeven.</p>

<p>Bijvoorbeeld, als u "THIS_IS_A_SECRET_MESSAGE" versleutelt met 4 tekens die in één omwenteling kunnen worden geschreven:</p>

<p>1. Plaats de tekens over het perkament. Omdat het aantal tekens per omwenteling 4 is en de te versleutelen tekst 24 tekens heeft, worden tot 6 tekens horizontaal geplaatst.</p>
<pre>
-----------------------------------
     | T | H | I | S | _ | I |___|
     | S | _ | A | _ | S | E |
  ___| C | R | E | T | _ | M |
 |   | E | S | S | A | G | E |
-----------------------------------
</pre>

<p>2. Het wordt versleuteld door het perkament van de stok te ontrollen.</p>
<pre>TSCEH_RSIAESS_TA_S_GIEME</pre>
