<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Informazioni sul Cifrario di Playfair</h3>
<p>Il Cifrario di Playfair è un cifrario a sostituzione che sostituisce coppie di lettere usando una tabella di lettere 5×5.</p>

<p>Ad esempio, con la chiave "SECRET" e il testo in chiaro "HELLO", la cifratura avviene come segue.</p>

<pre>
Testo in chiaro : HELLO
Testo cifrato   : ISKYIQ
</pre>

<p>Durante la cifratura, il testo in chiaro viene prima diviso in coppie di lettere. Se una coppia contiene la stessa lettera, come "LL", si inserisce la lettera ausiliaria "X" tra le due. Se alla fine rimane una sola lettera, si aggiunge anche una "X".</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Si prepara poi una tabella di cifratura 5×5, per un totale di 25 celle. Poiché l'alfabeto ha 26 lettere, di solito "I=J" viene inserito nella stessa cella.</p>
<p>Per prima cosa si scrivono nella tabella le lettere della chiave, eliminando i duplicati. Con la chiave "SECRET", la seconda "E" viene saltata. Poi si aggiunge "ABCDEFGHIKLMNOPQRSTUVWXYZ", saltando anche le lettere già presenti nella chiave. In questo modo si completa una tabella 5×5 senza lettere duplicate.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Con questa tabella, ogni coppia di lettere viene cifrata secondo le regole seguenti. Il metodo dipende dalla posizione delle due lettere nella tabella.</p>

<ul>
	<li>Nella stessa riga: ogni lettera viene sostituita con quella alla sua destra. Se si trova all'estremità destra, si torna all'estremità sinistra.</li>
	<li>Nella stessa colonna: ogni lettera viene sostituita con quella sotto di essa. Se si trova in fondo, si torna in alto.</li>
	<li>In righe e colonne diverse: immaginare un rettangolo che abbia le due lettere come angoli e sostituirle con le lettere degli altri due angoli.</li>
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

<p>Per la decifratura, il testo cifrato viene elaborato a coppie con la stessa tabella di lettere. La lettera ausiliaria "X" non viene rimossa automaticamente.</p>

<pre>
Testo cifrato   : ISKYIQ
Testo in chiaro : HEL<strong>X</strong>LO
</pre>
