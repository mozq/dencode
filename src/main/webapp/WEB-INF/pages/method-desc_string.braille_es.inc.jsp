<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Acerca del Braille</h3>
<p>
El braille es un sistema de escritura táctil que consta de puntos en relieve diseñado para que las personas con discapacidad visual puedan leerlo con la yema de los dedos.
Representa un carácter o símbolo utilizando una combinación de 6 puntos dispuestos en 3 filas y 2 columnas (Braille de 6 puntos).
El sistema se utiliza en todo el mundo y las reglas de asignación de puntos varían de un idioma a otro.
</p>


<h3>Braille inglés (UEB Grade 1)</h3>
<p>
Esta herramienta convierte el texto basándose en el Grado 1 (Braille inglés básico: método de escribir letra por letra directamente) del "Braille Inglés Unificado" (UEB: Unified English Braille), que se utiliza como estándar en los países de habla inglesa. No se admiten las formas abreviadas o contraídas (Grado 2).
</p>

<p>Ejemplo de conversión:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alfabeto</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
Para las letras mayúsculas, se coloca un indicador de mayúscula (<code>⠠</code>) delante de la letra.
Además, cuando hay letras mayúsculas consecutivas, el "indicador de palabra en mayúsculas (<code>⠠⠠</code>)" especifica la palabra entera en mayúscula; el "indicador de pasaje en mayúsculas (<code>⠠⠠⠠</code>)" cuando abarca varias palabras; y el "terminador de mayúsculas (<code>⠠⠄</code>)" se utiliza al final del pasaje.
</p>

<h4>Números</h4>
<p>
Los números se representan colocando un indicador numérico (<code>⠼</code>). Los caracteres situados detrás de este indicador se tratarán como cifras, tomando el signo braille de las letras de la 'a' a la 'j'.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Indicador numérico</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Si una letra minúscula ('a'-'j') sigue inmediatamente a un número, se inserta un indicador de Grado 1 (<code>⠰</code>) para evitar confundirla con una cifra.
</p>

<h4>Símbolos principales</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Coma)</th><td>⠂</td><th>. (Punto)</th><td>⠲</td><th>! (Signo de exclamación)</th><td>⠖</td><th>? (Signo de interrogación)</th><td>⠦</td></tr>
		<tr><th>' (Apóstrofo)</th><td>⠄</td><th>- (Guion)</th><td>⠤</td><th>; (Punto y coma)</th><td>⠆</td><th>: (Dos puntos)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Comillas y Paréntesis</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Comillas dobles neutrales)</th><td>⠦ *** ⠴</td><th>' *** ' (Comillas simples neutrales)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Comillas d. direccionales)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Comillas s. direccionales)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Comillas angulares)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Signos de desigualdad)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Paréntesis redondos)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Corchetes cuadrados)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Llaves)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Braille japonés</h3>
<p>
El braille japonés se representa convirtiendo las frases a "kana" antes de transcribirlas a braille.
</p>

<p>Ejemplo de conversión:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア</th><td>⠁</td><th>イ</th><td>⠃</td><th>ウ</th><td>⠉</td><th>エ</th><td>⠋</td><th>オ</th><td>⠊</td></tr>
		<tr><th>カ</th><td>⠡</td><th>キ</th><td>⠣</td><th>ク</th><td>⠩</td><th>ケ</th><td>⠫</td><th>コ</th><td>⠪</td></tr>
		<tr><th>サ</th><td>⠱</td><th>シ</th><td>⠳</td><th>ス</th><td>⠹</td><th>セ</th><td>⠻</td><th>ソ</th><td>⠺</td></tr>
		<tr><th>タ</th><td>⠕</td><th>チ</th><td>⠗</td><th>ツ</th><td>⠝</td><th>テ</th><td>⠟</td><th>ト</th><td>⠞</td></tr>
		<tr><th>ナ</th><td>⠅</td><th>ニ</th><td>⠇</td><th>ヌ</th><td>⠍</td><th>ネ</th><td>⠏</td><th>ノ</th><td>⠎</td></tr>
		<tr><th>ハ</th><td>⠥</td><th>ヒ</th><td>⠧</td><th>フ</th><td>⠭</td><th>ヘ</th><td>⠯</td><th>ホ</th><td>⠮</td></tr>
		<tr><th>マ</th><td>⠵</td><th>ミ</th><td>⠷</td><th>ム</th><td>⠽</td><th>メ</th><td>⠿</td><th>モ</th><td>⠾</td></tr>
		<tr><th>ヤ</th><td>⠌</td><th></th><td></td><th>ユ</th><td>⠬</td><th></th><td></td><th>ヨ</th><td>⠜</td></tr>
		<tr><th>ラ</th><td>⠑</td><th>リ</th><td>⠓</td><th>ル</th><td>⠙</td><th>レ</th><td>⠛</td><th>ロ</th><td>⠚</td></tr>
		<tr><th>ワ</th><td>⠄</td><th>ヰ</th><td>⠆</td><th></th><td></td><th>ヱ</th><td>⠖</td><th>ヲ</th><td>⠔</td></tr>
		<tr><th>ン</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (Sokuon)</th><td>⠂</td><th>ー (Chōon)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ</th><td>⠐⠡</td><th>ギ</th><td>⠐⠣</td><th>グ</th><td>⠐⠩</td><th>ゲ</th><td>⠐⠫</td><th>ゴ</th><td>⠐⠪</td></tr>
		<tr><th>ザ</th><td>⠐⠱</td><th>ジ</th><td>⠐⠳</td><th>ズ</th><td>⠐⠹</td><th>ゼ</th><td>⠐⠻</td><th>ゾ</th><td>⠐⠺</td></tr>
		<tr><th>ダ</th><td>⠐⠕</td><th>ヂ</th><td>⠐⠗</td><th>ヅ</th><td>⠐⠝</td><th>デ</th><td>⠐⠟</td><th>ド</th><td>⠐⠞</td></tr>
		<tr><th>バ</th><td>⠐⠥</td><th>ビ</th><td>⠐⠧</td><th>ブ</th><td>⠐⠭</td><th>ベ</th><td>⠐⠯</td><th>ボ</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ</th><td>⠠⠥</td><th>ピ</th><td>⠠⠧</td><th>プ</th><td>⠠⠭</td><th>ペ</th><td>⠠⠯</td><th>ポ</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ</th><td>⠈⠡</td><th>キュ</th><td>⠈⠩</td><th>キョ</th><td>⠈⠪</td></tr>
		<tr><th>シャ</th><td>⠈⠱</td><th>シュ</th><td>⠈⠹</td><th>ショ</th><td>⠈⠺</td></tr>
		<tr><th>チャ</th><td>⠈⠕</td><th>チュ</th><td>⠈⠝</td><th>チョ</th><td>⠈⠞</td></tr>
		<tr><th>ニャ</th><td>⠈⠅</td><th>ニュ</th><td>⠈⠍</td><th>ニョ</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ</th><td>⠈⠥</td><th>ヒュ</th><td>⠈⠭</td><th>ヒョ</th><td>⠈⠮</td></tr>
		<tr><th>ミャ</th><td>⠈⠵</td><th>ミュ</th><td>⠈⠽</td><th>ミョ</th><td>⠈⠾</td></tr>
		<tr><th>リャ</th><td>⠈⠑</td><th>リュ</th><td>⠈⠙</td><th>リョ</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ</th><td>⠘⠡</td><th>ギュ</th><td>⠘⠩</td><th>ギョ</th><td>⠘⠪</td></tr>
		<tr><th>ジャ</th><td>⠘⠱</td><th>ジュ</th><td>⠘⠹</td><th>ジョ</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ</th><td>⠘⠕</td><th>ヂュ</th><td>⠘⠝</td><th>ヂョ</th><td>⠘⠞</td></tr>
		<tr><th>ビャ</th><td>⠘⠥</td><th>ビュ</th><td>⠘⠭</td><th>ビョ</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ</th><td>⠨⠥</td><th>ピュ</th><td>⠨⠭</td><th>ピョ</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>Símbolos principales</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Coma ideográfica)</th><td>⠰</td><th>。 (Punto ideográfico)</th><td>⠲</td><th>？ (Signo de interrogación)</th><td>⠢</td><th>！ (Signo de exclamación)</th><td>⠖</td></tr>
		<tr><th>・ (Punto medio)</th><td>⠐</td><th>〜 (Guion ondulado)</th><td>⠤⠤</td><th>＆ (Ampersand)</th><td>⠰⠯</td><th>％ (Signo de porcentaje)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Comillas y Paréntesis</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Comillas simples jp.)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Comillas dobles jp.)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Paréntesis de ancho total)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Paréntesis dobles blancos)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alfabeto de idiomas extranjeros</h4>
<p>
Cuando se incluyen letras inglesas y latinas en un texto japonés, se inserta un indicador de idioma extranjero (<code>⠰</code>) inmediatamente delante de dichas letras, y seguido se aplica el braille extranjero equivalente (UEB).
</p>

<h4>Números</h4>
<p>
Las reglas de los números son idénticas a las del Braille inglés.
</p>

<h4>Separación de palabras (Wakachigaki)</h4>
<p>
DenCode no insertará automáticamente espacios divisibles entre cada palabra natural japonesa; convertirá la cadena directamente. Para una transcripción al braille japonés más correcta, introduzca el texto dejando usted mismo los espacios previos pertinentes (Wakachigaki).
</p>


<h3>La historia del Braille</h3>
<p>
El braille moderno de 6 puntos fue inventado en 1825 por el francés Louis Braille.
Braille había perdido la vista en un accidente cuando era niño y perfeccionó el sistema con tan solo 15 años.
Los sistemas de escritura anteriores para deficientes visuales solían utilizar formas de caracteres convencionales en relieve, cuya lectura y escritura resultaban extremadamente difíciles.
Por el contrario, el ingenioso sistema concebido mediante seis puntos ayudaba a sus usuarios a leer de manera ágil usando los dedos, además de ser sumamente sencillo de escribir empleando útiles especializados. Con el paso de las décadas, la propia palabra "Braille" se ha convertido en sinónimo universal de lectura con puntos.
</p>
<p>
En Japón, la introducción del braille comenzó en la era Meiji.
En 1890 (Meiji 23), el actual sistema de braille japonés (de seis puntos) fundamentado en sonidos kana lo completó Kuraji Ishikawa, profesor de la Escuela para ciegos y sordos de Tokio.
El 1 de noviembre, día en que se homologó este formato ideado por Ishikawa, continúa celebrándose hoy en Japón como el "Día del Braille".
</p>

<h3>La evolución de los Sistemas Braille Anglosajones y el UEB (Braille Inglés Unificado)</h3>
<p>
El entorno de las naciones de habla inglesa mantuvo largo tiempo sistemas de braille exclusivos que distaban unos de otros de acuerdo al país.
Por ejemplo, los estadounidenses recurrían de manera estándar a la "English Braille, American Edition (EBAE)"; y los británicos preferían el "Standard English Braille (SEB)". Pese a tratarse del mismo inglés, las designaciones de símbolos y acrónimos o alfabetos diferían sutilmente.
De igual forma, en los dominios científico-matemático (Código Nemeth) o de procesamiento informático (Computer Braille Code) abundaban estándares braille autónomos, lo cual constituía un obstáculo en temas de educación y programación técnica.
</p>
<p>
Para superar esa brecha e incontable caos organizativo en campos expertos, la estandarización global e internacional empezó en 1990.
Aquel arduo proceso fructificó en lo que hoy impera mundialmente: <strong>Unified English Braille (UEB - Braille Inglés Unificado)</strong>.
</p>
<p>
Más allá de consolidar todos los estándares antiguos como EBAE, su reforma más notable supuso la reorganización de caracteres y simplificación (reducción rigurosa) de la normativa para abreviaturas contractadas (Grado 2).
Aunque dichos preceptos buscaban históricamente economizar dimensiones (Contractions), el UEB optó por suprimir atajos desconcertantes ("ble", "com").
Dictaminó asimismo normativas claras prohibiendo en general el uso de acotaciones para correos electrónicos o URL, y acuñó representaciones oficiales de simbología electrónica vital, de uso creciente en un mundo digital (tales como la arroba <code>@</code> o la barra <code>/</code>).
</p>
<p>
En la actualidad, potencias de la talla del Reino Unido, EE. UU., Australia, Nueva Zelanda y Canadá lograron finiquitar tal evolución sinérgica al UEB, ofreciéndose toda la literatura educadora internacional bajo su manto uniformado.
</p
