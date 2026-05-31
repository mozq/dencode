<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О дробях</h3>
<p>Дробные числа (дроби) представляют числа в виде «числитель/знаменатель» как отношение (частное) числителя и знаменателя.</p>

<p>В DenCode введенное число (целое или десятичная дробь) преобразуется в несократимую дробь (дробь, которую невозможно упростить дальше).</p>

<p>Примеры преобразования дробей приведены ниже.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Десятичное (Ввод)</th><th>Дробь (Вывод)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>Десятичная дробь, заканчивающаяся на «...», интерпретируется как «усеченное число» и преобразуется по следующим правилам:</p>
<ul>
	<li><strong>При наличии повторяющегося шаблона (периодическая дробь):</strong> повторяющийся шаблон в десятичной части (период) автоматически обнаруживается и преобразуется в точное дробное представление.</li>
	<li><strong>При отсутствии повторяющегося шаблона:</strong> она преобразуется в дробь как конечная десятичная дробь на основе количества введенных цифр.</li>
</ul>

<p>Примеры преобразования для десятичных дробей, заканчивающихся на «...», приведены ниже.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Десятичное (Ввод)</th><th>Дробь (Вывод)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
