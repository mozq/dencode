<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du code Morse</h3>
<p>
Le code Morse est un système de codage télégraphique qui représente les lettres et les symboles par des combinaisons de signaux courts (Dit) et de signaux longs (Dah).
</p>

<p>
DenCode utilise les symboles suivants pour représenter le code Morse.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Nom</th><th>Symbole</th></tr>
		<tr><td>Dit (point)</td><td><code>.</code> (Point)</td></tr>
		<tr><td>Dah (trait)</td><td><code>-</code> (Tiret)</td></tr>
		<tr><td>Espace entre lettres</td><td><code> </code> (Espace)</td></tr>
		<tr><td>Espace entre mots</td><td><code>/</code> (Barre oblique)</td></tr>
	</table>
</div>

<p>
Le résultat de la conversion de « <var>MORSE CODE</var> » en code Morse international est le suivant.
</p>
<pre>
M   O   R   S  E    C    O   D  E
-- --- .-. ... . / -.-. --- -.. .
</pre>

<h4>Temporisation des signaux</h4>
<p>
Lors de la transmission du code Morse, des rapports stricts sont définis pour la longueur des dits et des dahs et les intervalles entre eux.
En prenant la longueur d'un dit comme 1 unité, la longueur de chaque élément est la suivante.
</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Élément</th><th>Longueur</th><th>Description</th></tr>
		<tr><td>Dit</td><td>1 unité</td><td>Un signal sonore court</td></tr>
		<tr><td>Dah</td><td>3 unités</td><td>Un signal sonore d'une longueur 3 fois supérieure à celle d'un dit</td></tr>
		<tr><td>Espace intra-caractère</td><td>1 unité</td><td>Silence entre les dits et les dahs au sein d'un même caractère</td></tr>
		<tr><td>Espace entre lettres</td><td>3 unités</td><td>Silence entre différents caractères</td></tr>
		<tr><td>Espace entre mots</td><td>7 unités</td><td>Silence entre différents mots</td></tr>
	</table>
</div>

<p>
Par exemple, lors de la transmission de « <var>MORSE CODE</var> », le signal est envoyé avec la temporisation suivante.
<code>▄</code> (<code>1</code>) représente un signal sonore, et <code> </code> (<code>0</code>) représente le silence.
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
De cette façon, toutes les longueurs sont déterminées comme des rapports entiers basés sur 1 unité de dit, de sorte que des rapports précis puissent être maintenus même en cas de changement de la vitesse de transmission.
La vitesse de communication est généralement exprimée en WPM (Words Per Minute), définie par le nombre de fois que le mot de référence « PARIS » peut être transmis par minute.
Par exemple, à 20 WPM, une unité de dit est d'environ 60 millisecondes.
</p>


<h3>Code Morse international</h3>
<p>
Le code Morse international est le code Morse standard mondial pour représenter les lettres, les chiffres et les symboles.
Il est défini par la norme de l'Union internationale des télécommunications (UIT) (ITU-R M.1677-1).
</p>

<h4>Alphabet</h4>
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

<h4>Chiffres</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>.----</td><th>2</th><td>..---</td><th>3</th><td>...--</td><th>4</th><td>....-</td><th>5</th><td>.....</td></tr>
		<tr><th>6</th><td>-....</td><th>7</th><td>--...</td><th>8</th><td>---..</td><th>9</th><td>----.</td><th>0</th><td>-----</td></tr>
	</table>
</div>

<h4>Symboles</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>.-.-.-</td><th>,</th><td>--..--</td><th>?</th><td>..--..</td><th>!</th><td>-.-.--</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>+</th><td>.-.-.</td><th>-</th><td>-....-</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>(</th><td>-.--.</td><th>)</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th>&amp;</th><td>.-...</td><th>:</th><td>---...</td><th>;</th><td>-.-.-.</td></tr>
		<tr><th>_</th><td>..--.-</td><th>$</th><td>...-..-</td><th>^</th><td>......</td><th></th><td></td></tr>
	</table>
</div>

<h4>Codes étendus</h4>
<p>
Parmi les caractères portant des signes diacritiques, seul « É » est défini par l'Union internationale des télécommunications (UIT). Tous les autres codes sont définis comme des « codes étendus » établis par les autorités nationales ou par convention.
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


<h3>Code Morse japonais (code Wabun)</h3>
<p>
Le code Morse japonais est un système de code Morse conçu pour représenter les caractères Hiragana et Katakana japonais.
L'ordre des caractères est basé sur l'ordre traditionnel « Iroha ».
</p>

<h4>Hiragana / Katakana (ordre Iroha)</h4>
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
		<tr><th>゛ (Dakuten / Marque de voisement)</th><td>..</td><th>゜ (Handakuten / Marque de semi-voisement)</th><td>..--.</td></tr>
	</table>
</div>

<p>
Le Dakuten (゛) et le Handakuten (゜) possèdent leurs propres codes indépendants. Ils sont représentés en plaçant le code Dakuten (<code>..</code>) ou le code Handakuten (<code>..--.</code>) après le code du caractère de base, séparé par un espace entre lettres.
Par exemple, « ガ » est une combinaison de « カ (<code>.-..</code>) » et « ゛ (<code>..</code>) », donnant « <code>.-.. ..</code> ».
</p>

<h4>Chiffres</h4>
<p>
Identique au code Morse international.
</p>

<h4>Symboles</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>。</th><td>.-.-..</td><th>、</th><td>.-.-.-</td><th>ー</th><td>.--.-</td></tr>
		<tr><th>（</th><td>-.--.-</td><th>）</th><td>.-..-.</td><th></th><td></td></tr>
	</table>
</div>


<h3>Code Morse russe (cyrillique)</h3>
<p>
Il s'agit d'un système de code Morse conçu pour représenter les caractères cyrilliques utilisés en russe et dans d'autres langues.
Les codes ne suivent pas l'ordre alphabétique cyrillique, mais sont identiques aux codes des lettres latines correspondantes (code Morse international) en fonction de leur prononciation.
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

<h4>Chiffres</h4>
<p>
Identique au code Morse international.
</p>

<h4>Symboles</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>.</th><td>......</td><th>,</th><td>.-.-.-</td><th>?</th><td>..--..</td><th>!</th><td>--..--</td></tr>
		<tr><th>'</th><td>.----.</td><th>"</th><td>.-..-.</td><th>:</th><td>---...</td><th>;</th><td>-.-.-</td></tr>
		<tr><th>=</th><td>-...-</td><th>/</th><td>-..-.</td><th>-</th><td>-....-</td><th>()</th><td>-.--.-</td></tr>
		<tr><th>@</th><td>.--.-.</td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>


<h3>Histoire du code Morse</h3>
<p>
Le code Morse a été développé dans les années 1830 par l'inventeur américain Samuel Morse et Alfred Vail pour les premières machines télégraphiques.
Le premier code Morse ne transmettait que des chiffres, qui étaient ensuite convertis en mots à l'aide d'un dictionnaire du côté récepteur. Plus tard, Vail a étendu le système pour inclure l'alphabet tel que nous le connaissons aujourd'hui.
Les lettres les plus fréquemment utilisées (par ex., <code>E</code>) ont reçu des codes plus courts (<code>.</code>), tandis que les lettres moins utilisées (par ex., <code>Q</code>) ont reçu des codes plus longs (<code>--.-</code>), optimisant l'efficacité de la communication.
</p>

<p>
Par la suite, sous l'impulsion de la demande de communication internationale, notamment en Europe, les attributions de lettres ont été révisées, évoluant vers le « Code Morse International » utilisé dans le monde entier aujourd'hui.
Au Japon, lors de l'introduction de la technologie télégraphique de la fin de l'ère Edo au début de l'ère Meiji, le « code Morse Wabun » a été conçu en attribuant de manière unique des codes Morse au syllabaire Kana japonais.
Une caractéristique distinctive du code Morse Wabun est que les codes sont attribués suivant l'ordre traditionnel « Iroha » (« イロハニホヘト… »).
</p>

<p>
Pendant de nombreuses années, le code Morse a été largement utilisé dans le monde entier dans les communications maritimes, aériennes, militaires et commerciales.
Cependant, avec le développement des communications par satellite et numériques, le code Morse a largement terminé son rôle de moyen officiel de communication de détresse avec la transition vers le SMDSM (Système mondial de détresse et de sécurité en mer) dans les années 1990.
</p>

<p>
Aujourd'hui, le code Morse est principalement utilisé dans la radio amateur et pour certaines radiobalises de navigation.
Cependant, parce qu'il permet la communication en utilisant un mécanisme très simple de marche-arrêt — comme des lumières clignotantes, des tons courts et longs, ou même des clignements d'yeux et des coups sur un mur — sa valeur en tant que moyen de communication ultime dans des situations telles que les catastrophes naturelles reste totalement intacte même à l'ère moderne.
Le célèbre signal de détresse « SOS » a été adopté non pas pour une signification linguistique, mais parce que la combinaison « <code>... --- ...</code> » est facile à transmettre et facile à reconnaître.
</p>
