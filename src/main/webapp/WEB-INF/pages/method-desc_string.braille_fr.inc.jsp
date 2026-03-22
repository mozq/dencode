<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du Braille</h3>
<p>
Le braille est un système d'écriture tactile composé de points en relief, conçu pour être lu du bout des doigts par les personnes malvoyantes.
Il représente un caractère ou un symbole en combinant 6 points disposés sur 3 rangées et 2 colonnes (Braille 6 points).
Le système est utilisé dans le monde entier et les règles d'attribution des points varient en fonction de la langue.
</p>


<h3>Braille anglais (UEB Grade 1)</h3>
<p>
Cet outil convertit sur la base du « Braille anglais unifié (UEB : Unified English Braille) » Grade 1 (braille anglais non contracté : manière d'écrire l'alphabet lettre par lettre telles quelles), utilisé comme norme dans le monde anglophone. Les formes contractées (Grade 2) ne sont pas prises en charge.
</p>

<p>Exemple de conversion :</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Lettres</h4>
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
Pour les lettres majuscules, un indicateur de majuscule (<code>⠠</code>) est placé devant la lettre.
De plus, en présence de majuscules consécutives, l'« indicateur de mot en majuscules (<code>⠠⠠</code>) » spécifie la majuscule pour le mot entier ; l'« indicateur de passage en majuscules (<code>⠠⠠⠠</code>) » lorsqu'il s'étend sur plusieurs mots ; et l'« indicateur de fin de majuscules (<code>⠠⠄</code>) » est utilisé à la fin de leur application.
</p>

<h4>Nombres</h4>
<p>
Les nombres sont représentés en plaçant un indicateur de nombre (<code>⠼</code>). Les caractères suivant l'indicateur de nombre sont traités comme des nombres en affectant le braille pour les lettres de a à j.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Indicateur de nombre</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Si une lettre minuscule de a à j suit immédiatement un nombre, l'indicateur de Grade 1 (<code>⠰</code>) est inséré pour éviter toute confusion avec le nombre.
</p>

<h4>Principaux symboles</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Virgule)</th><td>⠂</td><th>. (Point)</th><td>⠲</td><th>! (Point d'exclamation)</th><td>⠖</td><th>? (Point d'interrogation)</th><td>⠦</td></tr>
		<tr><th>' (Apostrophe)</th><td>⠄</td><th>- (Trait d'union)</th><td>⠤</td><th>; (Point-virgule)</th><td>⠆</td><th>: (Deux-points)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Citations et parenthèses</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Guillemets doubles)</th><td>⠦ *** ⠴</td><th>' *** ' (Guillemets simples)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Guillemets d. typographiques)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Guillemets s. typographiques)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Guillemets français)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Chevrons)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Parenthèses)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Crochets)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Accolades)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Braille japonais</h3>
<p>
Le braille japonais est représenté en convertissant d'abord les phrases en kana, puis en les convertissant en braille.
</p>

<p>Exemple de conversion :</p>
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

<h4>Principaux symboles</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Virgule japonaise)</th><td>⠰</td><th>。 (Point japonais)</th><td>⠲</td><th>？ (Point d'interrogation)</th><td>⠢</td><th>！ (Point d'exclamation)</th><td>⠖</td></tr>
		<tr><th>・ (Point médian)</th><td>⠐</td><th>〜 (Tiret ondulé)</th><td>⠤⠤</td><th>＆ (Esperluette)</th><td>⠰⠯</td><th>％ (Pourcentage)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Citations et parenthèses</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Guillemets s. japonais)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Guillemets d. japonais)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Parenthèses pleines)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Parenthèses doubles)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alphabet extérieur</h4>
<p>
Lorsque des alphabets anglais ou d'autres langues étrangères sont mélangés, le signe de langue étrangère (<code>⠰</code>) est inséré juste avant l'alphabet, suivi du braille équivalent UEB.
</p>

<h4>Nombres</h4>
<p>
Les règles sont les mêmes que pour le braille anglais.
</p>

<h4>Séparation des mots (Wakachigaki)</h4>
<p>
DenCode n'insère pas automatiquement de séparation des mots (espacements entre les mots) mais convertit la chaîne d'entrée telle quelle en braille. Pour un braille japonais plus précis, veuillez d'abord pré-espacer le texte d'entrée par mots (Wakachigaki).
</p>


<h3>L'histoire du braille</h3>
<p>
Le braille moderne à 6 points a été inventé en 1825 par le Français Louis Braille.
Il a perdu la vue dans un accident durant son enfance, et il a perfectionné ce système alors qu'il n'avait que 15 ans.
Le système d'écriture précédent pour les malvoyants utilisait principalement des lettres ordinaires gaufrées sur du papier, et la lecture comme l'écriture étaient extrêmement difficiles.
Cependant, le système braille à 6 points conçu par Braille a permis aux utilisateurs de lire rapidement avec leurs doigts et d'écrire facilement à l'aide d'outils dédiés. De nos jours, le mot "Braille" lui-même est devenu un synonyme universellement reconnu pour l'écriture avec des points.
</p>
<p>
Au Japon, l'introduction du braille a commencé à être envisagée pendant l'ère Meiji.
En 1890 (Meiji 23), le braille japonais (braille à 6 points) basé sur les syllabaires kana actuels a été complété par Kuraji Ishikawa, enseignant à l'École de Tokyo pour les Sourds et Aveugles.
La date du 1er novembre, à laquelle le système de braille d'Ishikawa a été officiellement adopté, est maintenant célébrée comme le « Jour du Braille » au Japon.
</p>

<h3>L'évolution du braille anglophone et de l'UEB</h3>
<p>
Pendant longtemps, le monde anglophone a utilisé ses propres systèmes de braille uniques selon les pays ou les régions.
Par exemple, "English Braille, American Edition (EBAE)" était utilisé comme norme aux États-Unis et "Standard English Braille (SEB)" au Royaume-Uni. Bien qu'il s'agisse du même anglais, les attributions de symboles, d'alphabets, et les règles d'orthographe pour les contractions variaient légèrement.
De plus, des codes braille indépendants pour les mathématiques et la science (comme le code Nemeth) ainsi que pour l'informatique (Computer Braille Code) coexistaient, posant des défis d'apprentissage et de développement de systèmes extrêmement déroutants.
</p>
<p>
Pour éliminer les disparités nationales et l'enchevêtrement complexe des codes dans les différents domaines spécialisés, des efforts pour établir une norme universelle ont commencé dans les années 1990.
Le fruit de ce travail est le <strong>Braille anglais unifié (UEB : Unified English Braille)</strong>, qui est aujourd'hui adopté comme norme mondiale.
</p>
<p>
Par rapport aux précédents systèmes tels que l'EBAE, le changement le plus important est la révision des symboles et la réduction et le raffermissement des règles de contraction (Grade 2).
Dans l'ancien système de règles, des abréviations complexes (Contractions) étaient conçues pour économiser de l'espace, mais l'UEB a éliminé certaines contractions prêtant à confusion (telles que "ble" et "com").
De même, il a spécifié que l'on ne devait plus recourir aux contractions dans les adresses e-mail ou les URL, et a instauré de nouveaux symboles devenus indispensables à notre époque numérisée, comme l'arobase (<code>@</code>) et la barre oblique (<code>/</code>).
</p>
<p>
Aujourd'hui, les principaux pays anglophones (États-Unis, Royaume-Uni, Australie, Canada, Nouvelle-Zélande, etc.) ont entièrement complété leur transition vers l'UEB, garantissant ainsi l'alignement des supports éducatifs et des documents publics sur une même norme de braille à travers le monde anglo-saxon et ailleurs.
</p>
