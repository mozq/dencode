<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Affine Cijfer</h3>
<p>Het Affine Cijfer is een type mono-alfabetisch substitutiecijfer waarbij elke letter in een tekst wordt toegewezen aan een numerieke waarde, gecodeerd met een eenvoudige wiskundige functie, en weer omgezet naar een letter.</p>
<p>Elke letter wordt versleuteld met de functie:</p>

<pre>E(<var>x</var>) = (<var>a</var><var>x</var> + <var>b</var>) mod <var>m</var></pre>

<p><var>m</var> is de grootte van het alfabet. <var>x</var> is de numerieke waarde van de letter (beginnend bij 0). <var>a</var> en <var>b</var> zijn de sleutels van het cijfer.</p>

<p>Bijvoorbeeld, in het geval van de 26 letters "ABCDEFGHIJKLMNOPQRSTUVWXYZ", is <var>m</var> = 26, en is <var>x</var> een waarde van 0 tot 25 die overeenkomt met A tot Z.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Teken</th><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td><td>P</td><td>Q</td><td>R</td><td>S</td><td>T</td><td>U</td><td>V</td><td>W</td><td>X</td><td>Y</td><td>Z</td></tr>
		<tr><th><var>x</var></th><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td></tr>
	</table>
</div>

<p>Als <var>a</var> = 5 en <var>b</var> = 3, vindt de encryptie als volgt plaats:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Voor encryptie</th><td>S</td><td>E</td><td>C</td><td>R</td><td>E</td><td>T</td></tr>
		<tr><th><var>x</var></th><td>18</td><td>4</td><td>2</td><td>17</td><td>4</td><td>19</td></tr>
		<tr><th>(5<var>x</var> + 3)</th><td>93</td><td>23</td><td>13</td><td>88</td><td>23</td><td>98</td></tr>
		<tr><th>(5<var>x</var> + 3) mod 26</th><td>15</td><td>23</td><td>13</td><td>10</td><td>23</td><td>20</td></tr>
		<tr><th>Na encryptie</th><td>P</td><td>X</td><td>N</td><td>K</td><td>X</td><td>U</td></tr>
	</table>
</div>

<p>Het resultaat van het versleutelen van alle Engelse letters met <var>a</var> = 5 en <var>b</var> = 3 is als volgt:</p>

<pre>
Voor encryptie : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Na encryptie   : DINSXCHMRWBGLQVAFKPUZEJOTY
</pre>

<p>Als <var>a</var> = 1, <var>b</var> = -3 wordt opgegeven, wordt het Caesarcijfer verkregen; als <var>a</var> = 1, <var>b</var> = 13 wordt opgegeven, wordt ROT13 verkregen; en als <var>a</var> = -1, <var>b</var> = -1 wordt opgegeven, wordt het Atbash-cijfer verkregen.</p>

<p>De waarde <var>a</var> moet relatief priem zijn aan <var>m</var>. Dit betekent dat de enige gemene deler van <var>a</var> en <var>m</var> 1 moet zijn. Bijvoorbeeld, als <var>a</var> = 4 en <var>m</var> = 26, is dit niet toegestaan omdat ze deelbaar zijn door 2. In DenCode, als een ongeldige <var>a</var> wordt opgegeven, wordt het oorspronkelijke teken ongewijzigd geretourneerd.</p>


<h4>Andere taalondersteuning</h4>
<p>Naast Latijnse letters worden ook Cyrillisch en Japans Hiragana / Katakana ondersteund.</p>

<p>Het resultaat van encryptie met <var>a</var> = 5 en <var>b</var> = 3 is als volgt:</p>

<h5>Cyrillisch</h5>
<pre>
Voor encryptie : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Na encryptie   : ГИНТЧЬБЖЛРХЪЯДЙОУШЭВЗМСЦЫАЕКПФЩЮ
</pre>

<p><var>m</var> = 32 (32 letters).</p>

<h5>Japans Hiragana / Katakana</h5>
<pre>
Voor encryptie : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Na encryptie   : いぉぎこじそぢでぬぱぶほむゅりわゔぅおくごすぞっとねひぷぼめゆるゐぁうかぐさずたつどのびへぽもょれゑあぇがけざせだづなはぴべまゃよろをぃえきげしぜちてにばふぺみやらゎん
</pre>

<pre>
Voor encryptie : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Na encryptie   : イォギコジソヂデヌパブホムュリワヴゥオクゴスゾットネヒプボメユルヰァウカグサズタツドノビヘポモョレヱアェガケザセダヅナハピベマャヨロヲィエキゲシゼチテニバフペミヤラヮン
</pre>

<p>De volgorde van tekens is de definitievolgorde in Unicode. Houd er rekening mee dat "ゕ", "ゖ", "ヵ", "ヶ" en "ヷ", "ヸ", "ヹ", "ヺ" niet worden versleuteld.</p>

<p><var>m</var> = 84 (84 tekens).</p>
