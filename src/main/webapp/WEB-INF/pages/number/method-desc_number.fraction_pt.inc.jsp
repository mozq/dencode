<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre frações</h3>
<p>As frações (números fracionários) representam números na forma de „numerador/denominador“ como a razão (quociente) do numerador e do denominador.</p>

<p>No DenCode, o número inserido (inteiro ou decimal) é convertido em uma fração irredutível (uma fração que não pode ser mais simplificada).</p>

<p>Exemplos de conversão de fração são os seguintes.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Entrada)</th><th>Fração (Saída)</th></tr>
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

<p>Um decimal que termina com „...“ é interpretado como um „número truncado“ e é convertido com base nas seguintes regras:</p>
<ul>
	<li><strong>Se houver um padrão repetitivo (decimal dízima periódica):</strong> O padrão repetitivo na parte decimal (período) é detectado automaticamente e convertido na representação exata da fração.</li>
	<li><strong>Se não houver um padrão repetitivo:</strong> É convertido em uma fração como um decimal finito com base no número de dígitos inseridos.</li>
</ul>

<p>Exemplos de conversão para decimais que terminam com „...“ são os seguintes.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Decimal (Entrada)</th><th>Fração (Saída)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
