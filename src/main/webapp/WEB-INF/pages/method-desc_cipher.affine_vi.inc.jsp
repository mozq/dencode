<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Mật mã Affine</h3>
<p>Mật mã Affine là một dạng mật mã thay thế đơn, trong đó mỗi ký tự trong văn bản được thay thế bằng một ký tự khác.</p>
<p>Việc thay thế ký tự được thực hiện theo công thức sau:</p>

<pre>E(<var>x</var>) = (<var>a</var><var>x</var> + <var>b</var>) mod <var>m</var></pre>

<p><var>m</var> biểu thị số lượng loại ký tự cần chuyển đổi. <var>x</var> là giá trị số của ký tự (từ 0 đến m - 1). <var>a</var> và <var>b</var> là khóa mã hóa.</p>

<p>Ví dụ, đối với 26 chữ cái tiếng Anh "ABCDEFGHIJKLMNOPQRSTUVWXYZ", <var>m</var> = 26, và <var>x</var> tương ứng với A ~ Z là 0 ~ 25.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Ký tự</th><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td><td>P</td><td>Q</td><td>R</td><td>S</td><td>T</td><td>U</td><td>V</td><td>W</td><td>X</td><td>Y</td><td>Z</td></tr>
		<tr><th><var>x</var></th><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td></tr>
	</table>
</div>

<p>Nếu <var>a</var> = 5, <var>b</var> = 3, quá trình mã hóa diễn ra như sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Trước mã hóa</th><td>S</td><td>E</td><td>C</td><td>R</td><td>E</td><td>T</td></tr>
		<tr><th><var>x</var></th><td>18</td><td>4</td><td>2</td><td>17</td><td>4</td><td>19</td></tr>
		<tr><th>(5<var>x</var> + 3)</th><td>93</td><td>23</td><td>13</td><td>88</td><td>23</td><td>98</td></tr>
		<tr><th>(5<var>x</var> + 3) mod 26</th><td>15</td><td>23</td><td>13</td><td>10</td><td>23</td><td>20</td></tr>
		<tr><th>Sau mã hóa</th><td>P</td><td>X</td><td>N</td><td>K</td><td>X</td><td>U</td></tr>
	</table>
</div>

<p>Kết quả mã hóa tất cả các chữ cái tiếng Anh với <var>a</var> = 5, <var>b</var> = 3 như sau:</p>

<pre>
Trước mã hóa : ABCDEFGHIJKLMNOPQRSTUVWXYZ
Sau mã hóa   : DINSXCHMRWBGLQVAFKPUZEJOTY
</pre>

<p>Nếu chỉ định <var>a</var> = 1, <var>b</var> = -3, kết quả sẽ giống Mật mã Caesar. Nếu chỉ định <var>a</var> = 1, <var>b</var> = 13, kết quả sẽ giống ROT13. Nếu chỉ định <var>a</var> = -1, <var>b</var> = -1, kết quả sẽ giống Mật mã Atbash.</p>

<p><var>a</var> phải là số nguyên tố cùng nhau với <var>m</var>. Điều này có nghĩa là ước chung lớn nhất của <var>a</var> và <var>m</var> phải là 1. Ví dụ, nếu <var>a</var> = 4, <var>m</var> = 26, thì không thể sử dụng vì cả hai đều chia hết cho 2 (ngoài 1). Trong DenCode, nếu <var>a</var> không hợp lệ, ký tự gốc sẽ được trả về mà không chuyển đổi.</p>


<h4>Hỗ trợ ngôn ngữ khác</h4>
<p>Ngoài chữ Latinh, DenCode còn hỗ trợ chữ Cyrillic và chữ Kana Nhật Bản (Hiragana/Katakana).</p>

<p>Kết quả mã hóa với <var>a</var> = 5, <var>b</var> = 3 như sau:</p>

<h5>Chữ Cyrillic</h5>
<pre>
Trước mã hóa : АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
Sau mã hóa   : ГИНТЧЬБЖЛРХЪЯДЙОУШЭВЗМСЦЫАЕКПФЩЮ
</pre>

<p><var>m</var> = 32 (32 ký tự).</p>

<h5>Chữ Kana Nhật Bản (Hiragana/Katakana)</h5>
<pre>
Trước mã hóa : ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔ
Sau mã hóa   : いぉぎこじそぢでぬぱぶほむゅりわゔぅおくごすぞっとねひぷぼめゆるゐぁうかぐさずたつどのびへぽもょれゑあぇがけざせだづなはぴべまゃよろをぃえきげしぜちてにばふぺみやらゎん
</pre>

<pre>
Trước mã hóa : ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴ
Sau mã hóa   : イォギコジソヂデヌパブホムュリワヴゥオクゴスゾットネヒプボメユルヰァウカグサズタツドノビヘポモョレヱアェガケザセダヅナハピベマャヨロヲィエキゲシゼチテニバフペミヤラヮン
</pre>

<p>Thứ tự ký tự dựa trên định nghĩa Unicode. Lưu ý rằng các ký tự "ゕ", "ゖ", "ヵ", "ヶ" và "ヷ", "ヸ", "ヹ", "ヺ" không được mã hóa.</p>

<p><var>m</var> = 84 (84 ký tự).</p>
