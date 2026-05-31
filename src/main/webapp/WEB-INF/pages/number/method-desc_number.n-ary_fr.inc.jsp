<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos des nombres en base N</h3>
<p>Les nombres en base N (base N) représentent les valeurs numériques dans un système de numération de position utilisant N symboles (généralement les chiffres « 0–9 » et les lettres « A–Z »).</p>

<p>DenCode prend en charge les bases de 2 à 36. Pour les bases supérieures à 10 (11 à 36), les lettres de l'alphabet à partir de « A » sont utilisées dans l'ordre pour représenter les nombres supérieurs ou égaux à 10. Par exemple, 10 à 15 sont représentés par A à F en base 16, et 10 à 35 sont représentés par A à Z en base 36.</p>

<p>Des exemples de conversion dans chaque base sont présentés ci-dessous.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Décimal</th><th>Binaire</th><th>Octal</th><th>Hexadécimal</th><th>Base 32</th><th>Base 36</th></tr>
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

<p>De plus, les nombres après la virgule sont convertis en base N comme valeurs de chaque position : N<sup>-1</sup> (1/N), N<sup>-2</sup> (1/N<sup>2</sup>), N<sup>-3</sup> (1/N<sup>3</sup>), ... Si la partie fractionnaire ne peut pas être représentée par la somme de N<sup>-n</sup>, elle ne peut pas être convertie complètement en base N et une erreur de précision se produit. Dans ce cas, DenCode l'exprime en ajoutant « ... » à la fin pour indiquer l'omission.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Décimal</th><th>Binaire</th><th>Octal</th><th>Hexadécimal</th><th>Base 32</th><th>Base 36</th></tr>
		</thead>
		<tbody>
			<tr><td>0.5</td><td>0.1</td><td>0.4</td><td>0.8</td><td>0.G</td><td>0.I</td></tr>
			<tr><td>0.75</td><td>0.11</td><td>0.6</td><td>0.C</td><td>0.O</td><td>0.R</td></tr>
			<tr><td>0.9</td><td>0.11100110011001...</td><td>0.71463...</td><td>0.E666...</td><td>0.SPJ6...</td><td>0.W...</td></tr>
		</tbody>
	</table>
</div>
