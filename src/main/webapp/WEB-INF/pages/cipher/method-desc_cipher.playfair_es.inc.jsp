<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del Cifrado Playfair</h3>
<p>El Cifrado Playfair es un cifrado por sustitución que reemplaza pares de letras usando una tabla de letras de 5×5.</p>

<p>Por ejemplo, si la clave es "SECRET" y el texto plano es "HELLO", se cifra de la siguiente manera.</p>

<pre>
Texto plano : HELLO
Texto cifrado : ISKYIQ
</pre>

<p>Para cifrar, primero se divide el texto plano en pares de letras. Si un par contiene la misma letra, como "LL", se inserta la letra auxiliar "X" entre ellas. Si al final queda una sola letra, también se añade una "X".</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Después se prepara una tabla de cifrado de 5×5, con 25 casillas en total. Como el alfabeto tiene 26 letras, normalmente se coloca "I=J" en la misma casilla.</p>
<p>Primero se escriben las letras de la clave en la tabla, omitiendo duplicados. Con la clave "SECRET", la segunda "E" se omite. A continuación se escribe "ABCDEFGHIKLMNOPQRSTUVWXYZ", omitiendo también las letras que ya aparecen en la clave. Así se completa una tabla de 5×5 sin letras repetidas.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Con esta tabla, cada par de letras se cifra según las reglas siguientes. El método depende de la posición relativa de las dos letras en la tabla.</p>

<ul>
	<li>En la misma fila: cada letra se sustituye por la letra situada a su derecha. Si está en el extremo derecho, se vuelve al extremo izquierdo.</li>
	<li>En la misma columna: cada letra se sustituye por la letra situada debajo. Si está en la parte inferior, se vuelve arriba.</li>
	<li>En filas y columnas diferentes: imagine un rectángulo cuyas esquinas incluyen las dos letras, y sustitúyalas por las letras de las otras dos esquinas.</li>
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

<p>Para descifrar, el texto cifrado se procesa por pares usando la misma tabla de letras. Tenga en cuenta que la letra auxiliar "X" no se elimina automáticamente.</p>

<pre>
Texto cifrado : ISKYIQ
Texto plano   : HEL<strong>X</strong>LO
</pre>
