<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre o código Morse</h3>
<p>
O código Morse é um sistema de codificação telegráfica que representa letras e símbolos através de combinações de sinais curtos (Dit) e sinais longos (Dah).
</p>

<p>
O DenCode utiliza os seguintes símbolos para representar o código Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nome</th><th>Símbolo</th></tr>
		<tr><td>Dit (ponto)</td><td><code>.</code> (Ponto)</td></tr>
		<tr><td>Dah (traço)</td><td><code>-</code> (Hífen)</td></tr>
		<tr><td>Espaço entre letras</td><td><code> </code> (Espaço)</td></tr>
		<tr><td>Espaço entre palavras</td><td><code>/</code> (Barra)</td></tr>
	</table>
</div>

<p>
O resultado da conversão de "<var>MORSE CODE</var>" em código Morse internacional é o seguinte.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Temporização dos sinais</h4>
<p>
Ao transmitir código Morse, existem proporções rigorosas definidas para a duração dos dits e dahs e os intervalos entre eles.
Usando a duração de um dit como 1 unidade, a duração de cada elemento é a seguinte.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Elemento</th><th>Duração</th><th>Descrição</th></tr>
		<tr><td>Dit</td><td>1 unidade</td><td>Um tom de sinal curto</td></tr>
		<tr><td>Dah</td><td>3 unidades</td><td>Um tom de sinal 3 vezes a duração de um dit</td></tr>
		<tr><td>Espaço intracaractere</td><td>1 unidade</td><td>Silêncio entre dits e dahs dentro do mesmo caractere</td></tr>
		<tr><td>Espaço entre letras</td><td>3 unidades</td><td>Silêncio entre caracteres diferentes</td></tr>
		<tr><td>Espaço entre palavras</td><td>7 unidades</td><td>Silêncio entre palavras diferentes</td></tr>
	</table>
</div>

<p>
Por exemplo, ao transmitir "<var>MORSE CODE</var>", o sinal é enviado com a seguinte temporização.
<code>▄</code> (<code>1</code>) representa um tom de sinal, e <code> </code> (<code>0</code>) representa silêncio.
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
Dessa forma, todas as durações são determinadas como proporções inteiras baseadas em 1 unidade de dit, de modo que proporções precisas podem ser mantidas mesmo quando a velocidade de transmissão é alterada.
A velocidade de comunicação é geralmente expressa em WPM (Words Per Minute), definida por quantas vezes a palavra de referência "PARIS" pode ser transmitida por minuto.
Por exemplo, a 20 WPM, uma unidade de dit é de aproximadamente 60 milissegundos.
</p>


<h3>Código Morse internacional</h3>
<p>
O código Morse internacional é o código Morse padrão mundial para representar letras, números e símbolos.
É definido pelo padrão da União Internacional de Telecomunicações (UIT) (ITU-R M.1677-1).
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

<h4>Códigos estendidos</h4>
<p>
Entre os caracteres com sinais diacríticos, apenas "É" é definido pela União Internacional de Telecomunicações (UIT). Todos os outros códigos são definidos como "códigos estendidos" estabelecidos por autoridades nacionais ou por convenção.
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


<h3>Código Morse japonês (código Wabun)</h3>
<p>
O código Morse japonês é um sistema de código Morse projetado para representar os caracteres Hiragana e Katakana japoneses.
A ordem dos caracteres é baseada na ordem tradicional "Iroha".
</p>

<h4>Hiragana / Katakana (ordem Iroha)</h4>
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
		<tr><th>゛ (Dakuten / Marca de sonorização)</th><td>..</td><th>゜ (Handakuten / Marca de semi-sonorização)</th><td>..--.</td></tr>
	</table>
</div>

<p>
O Dakuten (゛) e o Handakuten (゜) possuem seus próprios códigos independentes. São representados colocando o código Dakuten (<code>..</code>) ou o código Handakuten (<code>..--.</code>) após o código do caractere base, separado por um espaço entre letras.
Por exemplo, "ガ" é uma combinação de "カ (<code>.-..</code>)" e "゛ (<code>..</code>)", resultando em "<code>.-.. ..</code>".
</p>

<h4>Números</h4>
<p>
Igual ao código Morse internacional.
</p>

<h4>Símbolos</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Código Morse russo (cirílico)</h3>
<p>
Este é um sistema de código Morse projetado para representar caracteres cirílicos usados em russo e outros idiomas.
Os códigos não estão organizados em ordem alfabética cirílica, mas são atribuídos os mesmos códigos dos caracteres latinos correspondentes (código Morse internacional) com base na sua pronúncia.
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
Igual ao código Morse internacional.
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


<h3>História do código Morse</h3>
<p>
O código Morse foi desenvolvido na década de 1830 pelo inventor americano Samuel Morse e Alfred Vail para as primeiras máquinas telegráficas.
O primeiro código Morse transmitia apenas números, que eram convertidos em palavras usando um dicionário no lado receptor. Mais tarde, Vail expandiu o sistema para incluir o alfabeto como o conhecemos hoje.
Letras mais frequentemente usadas (ex.: <code>E</code>) receberam códigos mais curtos (<code>.</code>), enquanto letras menos usadas (ex.: <code>Q</code>) receberam códigos mais longos (<code>--.-</code>), otimizando a eficiência da comunicação.
</p>

<p>
Posteriormente, impulsionado pela demanda por comunicação internacional, particularmente na Europa, as atribuições de letras foram revisadas, evoluindo para o "Código Morse Internacional" usado mundialmente hoje.
No Japão, quando a tecnologia telegráfica foi introduzida do final do período Edo ao início da era Meiji, o "código Morse Wabun" foi criado atribuindo de forma única códigos Morse ao silabário Kana japonês.
Uma característica distintiva do código Morse Wabun é que os códigos são atribuídos seguindo a ordem tradicional "Iroha" ("イロハニホヘト…").
</p>

<p>
Por muitos anos, o código Morse foi amplamente utilizado em todo o mundo em comunicações marítimas, aéreas, militares e comerciais.
No entanto, com o desenvolvimento das comunicações via satélite e digitais, o código Morse encerrou em grande parte seu papel como meio oficial de comunicação de emergência com a transição para o GMDSS (Sistema Global de Socorro e Segurança Marítima) na década de 1990.
</p>

<p>
Hoje, o código Morse é usado principalmente no radioamadorismo e em alguns radiofaróis de navegação.
No entanto, como permite a comunicação usando um mecanismo muito simples de ligar-desligar — como luzes piscantes, tons curtos e longos, ou até piscadelas e batidas na parede — seu valor como meio definitivo de comunicação em situações como desastres naturais permanece completamente intacto mesmo na era moderna.
O famoso sinal de socorro "SOS" foi adotado não por qualquer significado linguístico, mas porque a combinação "<code>... --- ...</code>" é fácil de transmitir e fácil de reconhecer.
</p>
