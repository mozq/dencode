<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Szyfrze Afinicznym</h3>
<p>Szyfr Afiniczny to rodzaj szyfru monoalfabetycznego, w którym każda litera tekstu jawnego jest zamieniana na inną literę za pomocą funkcji matematycznej.</p>
<p>Zastępowanie znaków odbywa się według następującego wzoru:</p>

<pre>E(<var>x</var>) = (<var>a</var><var>x</var> + <var>b</var>) mod <var>m</var></pre>

<p><var>m</var> to rozmiar alfabetu. <var>x</var> to wartość liczbowa przypisana do litery (0 dla pierwszej litery, m-1 dla ostatniej). <var>a</var> i <var>b</var> to klucze szyfrujące.</p>

<p>Na przykład dla alfabetu angielskiego (26 liter), <var>m</var> = 26, a <var>x</var> przyjmuje wartości od 0 do 25 (A=0, B=1, ..., Z=25).</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Znak</th><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td><td>P</td><td>Q</td><td>R</td><td>S</td><td>T</td><td>U</td><td>V</td><td>W</td><td>X</td><td>Y</td><td>Z</td></tr>
		<tr><th><var>x</var></th><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td></tr>
	</table>
</div>

<p>Jeśli <var>a</var> = 5, <var>b</var> = 3, proces szyfrowania wygląda następująco:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Przed</th><td>S</td><td>E</td><td>C</td><td>R</td><td>E</td><td>T</td></tr>
		<tr><th><var>x</var></th><td>18</td><td>4</td><td>2</td><td>17</td><td>4</td><td>19</td></tr>
		<tr><th>(5<var>x</var> + 3)</th><td>93</td><td>23</td><td>13</td><td>88</td><td>23</td><td>98</td></tr>
		<tr><th>(5<var>x</var> + 3) mod 26</th><td>15</td><td>23</td><td>13</td><td>10</td><td>23</td><td>20</td></tr>
		<tr><th>Po</th><td>P</td><td>X</td><td>N</td><td>K</td><td>X</td><td>U</td></tr>
	</table>
</div>

<p>Wynik szyfrowania wszystkich liter angielskich dla <var>a</var> = 5, <var>b</var> = 3:</p>

<pre>
Przed : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Po    : DINSXCHMRWBGLQVAFKPUZEJOTY
</pre>

<p>Jeśli <var>a</var> = 1, to szyfr staje się Szyfrem Cezara (przesunięcie o <var>b</var>). <var>a</var> = 1, <var>b</var> = 13 to ROT13. <var>a</var> = -1, <var>b</var> = -1 daje efekt szyfru Atbash.</p>

<p>Wartość <var>a</var> musi być względnie pierwsza z <var>m</var> (największy wspólny dzielnik <var>a</var> i <var>m</var> musi wynosić 1). Na przykład dla <var>m</var> = 26, <var>a</var> = 4 jest nieprawidłowe, ponieważ dzieli się przez 2. W DenCode, jeśli podano nieprawidłowe <var>a</var>, znaki nie są szyfrowane.</p>


<h4>Obsługa innych języków</h4>
<p>Oprócz alfabetu łacińskiego, obsługiwana jest cyrylica oraz japońska Hiragana/Katakana.</p>

<p>Wyniki szyfrowania dla <var>a</var> = 5, <var>b</var> = 3:</p>

<h5>Cyrylica</h5>
<pre>
Przed : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Po    : ГИНТЧЬБЖЛРХЪЯДЙОУШЭВЗМСЦЫАЕКПФЩЮ
</pre>

<p><var>m</var> = 32 (32 znaki).</p>

<h5>Japońska Hiragana/Katakana</h5>
<pre>
Przed : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Po    : いぉぎこじそぢでぬぱぶほむゅりわゔぅおくごすぞっとねひぷぼめゆるゐぁうかぐさずたつどのびへぽもょれゑあぇがけざせだづなはぴべまゃよろをぃえきげしぜちてにばふぺみやらゎん
</pre>

<pre>
Przed : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Po    : イォギコジソヂデヌパブホムュリワヴゥオクゴスゾットネヒプボメユルヰァウカグサズタツドノビヘポモョレヱアェガケザセダヅナハピベマャヨロヲィエキゲシゼチテニバフペミヤラヮン
</pre>

<p>Kolejność znaków jest zgodna z definicją w Unicode. Znaki takie jak „ゕ”, „ゖ”, „ヵ”, „ヶ”, „ヷ”, „ヸ”, „ヹ”, „ヺ” nie są szyfrowane.</p>

<p><var>m</var> = 84 (84 znaki).</p>
