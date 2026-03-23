<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del código Morse</h3>
<p>
El código Morse es un sistema de codificación telegráfica que representa letras y símbolos mediante combinaciones de señales cortas (Dit) y señales largas (Dah).
</p>

<p>
DenCode utiliza los siguientes símbolos para representar el código Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nombre</th><th>Símbolo</th></tr>
		<tr><td>Dit (punto)</td><td><code>.</code> (Punto)</td></tr>
		<tr><td>Dah (raya)</td><td><code>-</code> (Guion)</td></tr>
		<tr><td>Espacio entre letras</td><td><code> </code> (Espacio)</td></tr>
		<tr><td>Espacio entre palabras</td><td><code>/</code> (Barra)</td></tr>
	</table>
</div>

<p>
El resultado de convertir "<var>MORSE CODE</var>" a código Morse internacional es el siguiente.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Temporización de señales</h4>
<p>
Al transmitir código Morse, existen proporciones estrictas definidas para la longitud de los dits y dahs y los intervalos entre ellos.
Usando la longitud de un dit como 1 unidad, la longitud de cada elemento es la siguiente.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemento</th><th>Longitud</th><th>Descripción</th></tr>
		<tr><td>Dit</td><td>1 unidad</td><td>Un tono de señal corto</td></tr>
		<tr><td>Dah</td><td>3 unidades</td><td>Un tono de señal 3 veces la longitud de un dit</td></tr>
		<tr><td>Espacio intracarácter</td><td>1 unidad</td><td>Silencio entre dits y dahs dentro del mismo carácter</td></tr>
		<tr><td>Espacio entre letras</td><td>3 unidades</td><td>Silencio entre diferentes caracteres</td></tr>
		<tr><td>Espacio entre palabras</td><td>7 unidades</td><td>Silencio entre diferentes palabras</td></tr>
	</table>
</div>

<p>
Por ejemplo, al transmitir "<var>MORSE CODE</var>", la señal se envía con la siguiente temporización.
<code>▄</code> (<code>1</code>) representa un tono de señal, y <code> </code> (<code>0</code>) representa silencio.
</p>
<pre>
M    : ▄▄▄ ▄▄▄         (1110111)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
R    : ▄ ▄▄▄ ▄         (1011101)
S    : ▄ ▄ ▄           (10101)
E    : ▄               (1)
     :                 (0000000)
C    : ▄▄▄ ▄ ▄▄▄ ▄     (11101011101)
O    : ▄▄▄ ▄▄▄ ▄▄▄     (11101110111)
D    : ▄▄▄ ▄ ▄         (1110101)
E    : ▄               (1)

   M           O           R        S     E            C             O           D      E
▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄ ▄   ▄ ▄ ▄   ▄       ▄▄▄ ▄ ▄▄▄ ▄   ▄▄▄ ▄▄▄ ▄▄▄   ▄▄▄ ▄ ▄   ▄
11101110001110111011100010111010001010100010000000111010111010001110111011100011101010001
</pre>

<p>
De esta manera, todas las longitudes se determinan como proporciones enteras basadas en 1 unidad de un dit, por lo que se pueden mantener proporciones precisas incluso cuando se cambia la velocidad de transmisión.
La velocidad de comunicación se expresa generalmente en WPM (Words Per Minute), definida por cuántas veces se puede transmitir la palabra de referencia "PARIS" por minuto.
Por ejemplo, a 20 WPM, una unidad de dit es de aproximadamente 60 milisegundos.
</p>


<h3>Código Morse internacional</h3>
<p>
El código Morse internacional es el código Morse estándar mundial para representar letras, números y símbolos.
Está definido por el estándar de la Unión Internacional de Telecomunicaciones (UIT) (ITU-R M.1677-1).
</p>

<h4>Alfabeto</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>A</th><td>.-</td><th>B</th><td>-...</td><th>C</th><td>-.-.</td><th>D</th><td>-..</td></tr>
		<tr><th>E</th><td>.</td><th>F</th><td>..-.</td><th>G</th><td>--.</td><th>H</th><td>....</td></tr>
		<tr><th>I</th><td>..</td><th>J</th><td>.---</td><th>K</th><td>-.-</td><th>L</th><td>.-..</td></tr>
		<tr><th>M</th><td>--</td><th>N</th><td>-.</td><th>O</th><td>---</td><th>P</th><td>.--.</td></tr>
		<tr><th>Q</th><td>--.-</td><th>R</th><td>.-.</td><th>S</th><td>...</td><th>T</th><td>-</td></tr>
		<tr><th>U</th><td>..-</td><th>V</th><td>...-</td><th>W</th><td>.--</td><th>X</th><td>-..-</td></tr>
		<tr><th>Y</th><td>-.--</td><th>Z</th><td>--..</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>

<h4>Números</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Símbolos</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Códigos extendidos</h4>
<p>
Entre los caracteres con signos diacríticos, solo "É" está definido por la Unión Internacional de Telecomunicaciones (UIT). Todos los demás códigos están definidos como "códigos extendidos" establecidos por autoridades nacionales o por convención.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>À, Å</th><td>.--.-</td><th>Ä, Æ, Ą</th><td>.-.-</td><th>Ć, Ĉ, Ç</th><td>-.-..</td><th>É, Ę, Đ</th><td>..-..</td></tr>
		<tr><th>Ð</th><td>..--.</td><th>È, Ł</th><td>.-..-</td><th>Ĝ</th><td>--.-.</td><th>Ĥ, Š</th><td>----</td></tr>
		<tr><th>Ĵ</th><td>.---.</td><th>Ń, Ñ</th><td>--.--</td><th>Ó, Ö, Ø</th><td>---.</td><th>Ś</th><td>...-...</td></tr>
		<tr><th>Ŝ</th><td>...-.</td><th>Þ</th><td>.--..</td><th>Ü, Ŭ</th><td>..--</td><th>Ź</th><td>--..-.</td></tr>
		<tr><th>Ż</th><td>--..-</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Código Morse japonés (código Wabun)</h3>
<p>
El código Morse japonés es un sistema de código Morse diseñado para representar los caracteres Hiragana y Katakana japoneses.
El orden de los caracteres se basa en el orden tradicional "Iroha".
</p>

<h4>Hiragana / Katakana (orden Iroha)</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>イ</th><td>.-</td><th>ロ</th><td>.-.-</td><th>ハ</th><td>-...</td><th>ニ</th><td>-.-.</td><th>ホ</th><td>-..</td></tr>
		<tr><th>ヘ</th><td>.</td><th>ト</th><td>..-..</td><th>チ</th><td>..-.</td><th>リ</th><td>--.</td><th>ヌ</th><td>....</td></tr>
		<tr><th>ル</th><td>-.--.</td><th>ヲ</th><td>.---</td><th>ワ</th><td>-.-</td><th>カ</th><td>.-..</td><th>ヨ</th><td>--</td></tr>
		<tr><th>タ</th><td>-.</td><th>レ</th><td>---</td><th>ソ</th><td>---.</td><th>ツ</th><td>.--.</td><th>ネ</th><td>--.-</td></tr>
		<tr><th>ナ</th><td>.-.</td><th>ラ</th><td>...</td><th>ム</th><td>-</td><th>ウ</th><td>..-</td><th>ヰ</th><td>.-..-</td></tr>
		<tr><th>ノ</th><td>..--</td><th>オ</th><td>.-...</td><th>ク</th><td>...-</td><th>ヤ</th><td>.--</td><th>マ</th><td>-..-</td></tr>
		<tr><th>ケ</th><td>-.--</td><th>フ</th><td>--..</td><th>コ</th><td>----</td><th>エ</th><td>-.---</td><th>テ</th><td>.-.--</td></tr>
		<tr><th>ア</th><td>--.--</td><th>サ</th><td>-.-.-</td><th>キ</th><td>-.-..</td><th>ユ</th><td>-..--</td><th>メ</th><td>-...-</td></tr>
		<tr><th>ミ</th><td>..-.-</td><th>シ</th><td>--.-.</td><th>ヱ</th><td>.--..</td><th>ヒ</th><td>--..-</td><th>モ</th><td>-..-.</td></tr>
		<tr><th>セ</th><td>.---.</td><th>ス</th><td>---.-</td><th>ン</th><td>.-.-.</td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>゛ (Dakuten / Marca de sonorización)</th><td>..</td><th>゜ (Handakuten / Marca de semi-sonorización)</th><td>..--.</td></tr>
	</table>
</div>

<p>
El Dakuten (゛) y el Handakuten (゜) tienen sus propios códigos independientes. Se representan colocando el código de Dakuten (<code>..</code>) o el código de Handakuten (<code>..--.</code>) después del código del carácter base, separado por un espacio entre letras.
Por ejemplo, "ガ" es una combinación de "カ (<code>.-..</code>)" y "゛ (<code>..</code>)", resultando en "<code>.-.. ..</code>".
</p>

<h4>Números</h4>
<p>
Igual que el código Morse internacional.
</p>

<h4>Símbolos</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Código Morse ruso (cirílico)</h3>
<p>
Este es un sistema de código Morse diseñado para representar caracteres cirílicos utilizados en ruso y otros idiomas.
Los códigos no están ordenados en el orden alfabético cirílico, sino que se asignan los mismos códigos que los caracteres latinos correspondientes (código Morse internacional) según su pronunciación.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>А</th><td>.-</td><th>Б</th><td>-...</td><th>В</th><td>.--</td><th>Г</th><td>--.</td></tr>
		<tr><th>Д</th><td>-..</td><th>Е</th><td>.</td><th>Ж</th><td>...-</td><th>З</th><td>--..</td></tr>
		<tr><th>И</th><td>..</td><th>Й</th><td>.---</td><th>К</th><td>-.-</td><th>Л</th><td>.-..</td></tr>
		<tr><th>М</th><td>--</td><th>Н</th><td>-.</td><th>О</th><td>---</td><th>П</th><td>.--.</td></tr>
		<tr><th>Р</th><td>.-.</td><th>С</th><td>...</td><th>Т</th><td>-</td><th>У</th><td>..-</td></tr>
		<tr><th>Ф</th><td>..-.</td><th>Х</th><td>....</td><th>Ц</th><td>-.-.</td><th>Ч</th><td>---.</td></tr>
		<tr><th>Ш</th><td>----</td><th>Щ</th><td>--.-</td><th>Ъ</th><td>--.--</td><th>Ы</th><td>-.--</td></tr>
		<tr><th>Ь</th><td>-..-</td><th>Э</th><td>..-..</td><th>Ю</th><td>..--</td><th>Я</th><td>.-.-</td></tr>
	</table>
</div>

<h4>Números</h4>
<p>
Igual que el código Morse internacional.
</p>

<h4>Símbolos</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Historia del código Morse</h3>
<p>
El código Morse fue desarrollado en la década de 1830 por el inventor estadounidense Samuel Morse y Alfred Vail para las primeras máquinas de telégrafo.
El primer código Morse transmitía solo números, que luego se convertían en palabras mediante un diccionario en el lado receptor. Posteriormente, Vail amplió el sistema para incluir el alfabeto tal como lo conocemos hoy.
A las letras de uso más frecuente (p. ej., <code>E</code>) se les asignaron códigos más cortos (<code>.</code>), mientras que a las de menor uso (p. ej., <code>Q</code>) se les asignaron códigos más largos (<code>--.-</code>), optimizando la eficiencia de la comunicación.
</p>

<p>
Posteriormente, impulsado por la demanda de comunicación internacional, particularmente en Europa, se revisaron las asignaciones de letras, evolucionando al "Código Morse Internacional" utilizado en todo el mundo hoy en día.
En Japón, cuando se introdujo la tecnología telegráfica desde finales del período Edo hasta principios de la era Meiji, se ideó el "código Morse Wabun" asignando de manera única códigos Morse al silabario Kana japonés.
Una característica distintiva del código Morse Wabun es que los códigos se asignan siguiendo el orden tradicional "Iroha" ("イロハニホヘト…").
</p>

<p>
Durante muchos años, el código Morse se utilizó ampliamente en todo el mundo en comunicaciones marítimas, aéreas, militares y comerciales.
Sin embargo, con el desarrollo de las comunicaciones por satélite y digitales, el código Morse completó en gran medida su papel como medio oficial de comunicación de emergencia con la transición al GMDSS (Sistema Mundial de Socorro y Seguridad Marítimos) en la década de 1990.
</p>

<p>
Hoy en día, el código Morse se utiliza principalmente en la radioafición y en algunas radiobalizas de navegación.
Sin embargo, dado que permite la comunicación utilizando un mecanismo de encendido-apagado muy simple — como luces intermitentes, tonos cortos y largos, o incluso parpadeos y golpes en una pared — su valor como medio de comunicación definitivo en situaciones como desastres naturales permanece completamente vigente incluso en la era moderna.
La famosa señal de socorro "SOS" fue adoptada no por ningún significado lingüístico, sino porque la combinación "<code>... --- ...</code>" es fácil de transmitir y fácil de reconocer.
</p>
