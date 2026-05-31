<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Об N-арных числах</h3>
<p>N-арные числа (с основанием N) представляют числовые значения в позиционной системе счисления с использованием N символов (обычно это цифры «0–9» и буквы «A–Z»).</p>

<p>DenCode поддерживает основания от 2 до 36. Для оснований больше 10 (от 11 до 36) для представления значений от 10 и выше используются буквы латинского алфавита, начиная с «A». Например, значения от 10 до 15 представляются буквами от A до F в шестнадцатеричной системе (основание 16), а значения от 10 до 35 представляются буквами от A до Z в системе с основанием 36.</p>

<p>Пример преобразования в каждой системе счисления приведен ниже.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Десятичное</th><th>Двоичное</th><th>Восьмеричное</th><th>Шестнадцатеричное</th><th>Основание 32</th><th>Основание 36</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td><td class="text-right">0</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td><td class="text-right">1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">10</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td><td class="text-right">2</td></tr>
			<tr><td class="text-right">7</td><td class="text-right">111</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td><td class="text-right">7</td></tr>
			<tr><td class="text-right">8</td><td class="text-right">1000</td><td class="text-right">10</td><td class="text-right">8</td><td class="text-right">8</td><td class="text-right">8</td></tr>
			<tr><td class="text-right">9</td><td class="text-right">1001</td><td class="text-right">11</td><td class="text-right">9</td><td class="text-right">9</td><td class="text-right">9</td></tr>
			<tr><td class="text-right">10</td><td class="text-right">1010</td><td class="text-right">12</td><td class="text-right">A</td><td class="text-right">A</td><td class="text-right">A</td></tr>
			<tr><td class="text-right">15</td><td class="text-right">1111</td><td class="text-right">17</td><td class="text-right">F</td><td class="text-right">F</td><td class="text-right">F</td></tr>
			<tr><td class="text-right">16</td><td class="text-right">10000</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">G</td><td class="text-right">G</td></tr>
			<tr><td class="text-right">17</td><td class="text-right">10001</td><td class="text-right">21</td><td class="text-right">11</td><td class="text-right">H</td><td class="text-right">H</td></tr>
			<tr><td class="text-right">31</td><td class="text-right">11111</td><td class="text-right">37</td><td class="text-right">1F</td><td class="text-right">V</td><td class="text-right">V</td></tr>
			<tr><td class="text-right">32</td><td class="text-right">100000</td><td class="text-right">40</td><td class="text-right">20</td><td class="text-right">10</td><td class="text-right">W</td></tr>
			<tr><td class="text-right">35</td><td class="text-right">100011</td><td class="text-right">43</td><td class="text-right">23</td><td class="text-right">13</td><td class="text-right">Z</td></tr>
			<tr><td class="text-right">36</td><td class="text-right">100100</td><td class="text-right">44</td><td class="text-right">24</td><td class="text-right">14</td><td class="text-right">10</td></tr>
		</tbody>
	</table>
</div>

<p>Кроме того, числа после десятичной точки преобразуются в N-арной системе как значения разрядов N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... Если дробная часть не может быть точно представлена в виде суммы N<sup>-n</sup>, число невозможно полностью преобразовать в N-арную систему счисления, и возникнет погрешность. В этом случае DenCode сокращает значение, добавляя «...» в конце.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Десятичное</th><th>Двоичное</th><th>Восьмеричное</th><th>Шестнадцатеричное</th><th>Основание 32</th><th>Основание 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
