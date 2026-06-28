<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over het Playfair-cijfer</h3>
<p>Het Playfair-cijfer is een substitutiecijfer dat paren letters vervangt met behulp van een 5×5-lettertabel.</p>

<p>Als de sleutel bijvoorbeeld "SECRET" is en de platte tekst "HELLO", wordt deze als volgt versleuteld.</p>

<pre>
Platte tekst : HELLO
Versleuteld  : ISKYIQ
</pre>

<p>Bij het versleutelen wordt de platte tekst eerst verdeeld in paren letters. Als een paar dezelfde letter bevat, zoals "LL", wordt de hulpletter "X" ertussen ingevoegd. Als er aan het einde één letter overblijft, wordt ook een "X" toegevoegd.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Daarna wordt een 5×5-cijfertabel met in totaal 25 vakken voorbereid. Omdat het alfabet 26 letters heeft, worden "I=J" meestal in hetzelfde vak geplaatst.</p>
<p>Eerst worden de letters van de sleutel zonder dubbelen in de tabel geschreven. Bij de sleutel "SECRET" wordt de tweede "E" overgeslagen. Daarna wordt "ABCDEFGHIKLMNOPQRSTUVWXYZ" toegevoegd, waarbij letters die al in de sleutel staan ook worden overgeslagen. Zo ontstaat een 5×5-cijfertabel zonder dubbele letters.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Met deze tabel wordt elk paar letters volgens de onderstaande regels versleuteld. De methode hangt af van de positie van de twee letters in de tabel.</p>

<ul>
	<li>In dezelfde rij: elke letter wordt vervangen door de letter rechts ervan. Aan de rechterrand gaat dit verder vanaf de linkerrand.</li>
	<li>In dezelfde kolom: elke letter wordt vervangen door de letter eronder. Onderaan gaat dit verder vanaf bovenaan.</li>
	<li>In verschillende rijen en kolommen: stel u een rechthoek voor waarvan de twee letters hoeken zijn, en vervang ze door de letters op de andere twee hoeken.</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Bij het ontsleutelen wordt de cijfertekst in paren verwerkt met dezelfde lettertabel. Let op: de hulpletter "X" wordt niet automatisch verwijderd.</p>

<pre>
Versleuteld  : ISKYIQ
Platte tekst : HEL<strong>X</strong>LO
</pre>
