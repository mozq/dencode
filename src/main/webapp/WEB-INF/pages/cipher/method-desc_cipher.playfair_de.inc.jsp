<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Über die Playfair-Chiffre</h3>
<p>Die Playfair-Chiffre ist eine Substitutionschiffre, die Buchstabenpaare mithilfe einer 5×5-Buchstabentabelle ersetzt.</p>

<p>Wenn zum Beispiel der Schlüssel "SECRET" und der Klartext "HELLO" lautet, wird er wie folgt verschlüsselt.</p>

<pre>
Klartext   : HELLO
Geheimtext : ISKYIQ
</pre>

<p>Bei der Verschlüsselung wird der Klartext zunächst in Buchstabenpaare aufgeteilt. Enthält ein Paar denselben Buchstaben, wie bei "LL", wird der Hilfsbuchstabe "X" dazwischen eingefügt. Bleibt am Ende ein einzelner Buchstabe übrig, wird ebenfalls ein "X" ergänzt.</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Danach wird eine 5×5-Chiffriertabelle mit insgesamt 25 Feldern vorbereitet. Da das Alphabet 26 Buchstaben hat, werden normalerweise "I=J" in dasselbe Feld gelegt.</p>
<p>Zuerst werden die Buchstaben des Schlüssels ohne Wiederholungen in die Tabelle geschrieben. Beim Schlüssel "SECRET" wird das zweite "E" übersprungen. Anschließend wird "ABCDEFGHIKLMNOPQRSTUVWXYZ" ergänzt, wobei bereits im Schlüssel vorhandene Buchstaben ebenfalls übersprungen werden. So entsteht eine 5×5-Chiffriertabelle ohne doppelte Buchstaben.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Mit dieser Tabelle werden die Buchstabenpaare nach den folgenden Regeln verschlüsselt. Die Methode hängt davon ab, wie die beiden Buchstaben in der Tabelle zueinander stehen.</p>

<ul>
	<li>In derselben Zeile: Jeder Buchstabe wird durch den rechts danebenstehenden Buchstaben ersetzt. Am rechten Rand geht es links weiter.</li>
	<li>In derselben Spalte: Jeder Buchstabe wird durch den darunterstehenden Buchstaben ersetzt. Am unteren Rand geht es oben weiter.</li>
	<li>In verschiedenen Zeilen und Spalten: Man stellt sich ein Rechteck vor, dessen Ecken die beiden Buchstaben enthalten, und ersetzt sie durch die Buchstaben an den beiden anderen Ecken.</li>
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

<p>Beim Entschlüsseln wird der Geheimtext mit derselben Buchstabentabelle paarweise verarbeitet. Beachten Sie, dass der Hilfsbuchstabe "X" nicht automatisch entfernt wird.</p>

<pre>
Geheimtext : ISKYIQ
Klartext   : HEL<strong>X</strong>LO
</pre>
