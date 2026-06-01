<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor Lab</h3>
<p>A cor Lab é um espaço de cor que representa cores com luminosidade, um eixo do verde ao vermelho e um eixo do azul ao amarelo. Diferente de RGB, que especifica diretamente os componentes vermelho, verde e azul de uma tela, Lab separa brilho e cor de uma forma mais próxima da visão humana.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidade</td><td>Representa a luminosidade da cor. 0% é preto e 100% é branco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Representa a direção do verde ao vermelho. Valores negativos tendem ao verde e positivos ao vermelho.</td><td><code>40</code></td></tr>
			<tr><td>b</td><td>Representa a direção do azul ao amarelo. Valores negativos tendem ao azul e positivos ao amarelo.</td><td><code>30</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Lab notação</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>lab(54.29% 80.8049 69.891)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lab(46.28% -47.5524 48.5863)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>lab(87.82% -79.2711 80.9946)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>lab(29.57% 68.2874 -112.0297)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>lab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>lab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>lab(54.29% 80.8049 69.891 / 0.5)</code>.</p>

<h4>Tratamento da luminosidade, a e b</h4>
<p>Representa a luminosidade da cor. 0% é preto e 100% é branco Valores abaixo de 0% são tratados como 0%, e acima de 100% são limitados a 100%.</p>

<p><code>a</code> e <code>b</code> são especificados como números positivos ou negativos. Seus valores não são limitados a um intervalo fixo e são tratados como os componentes Lab especificados.</p>

<h4>Diferença entre Lab e LCH</h4>
<p><a href="${dc:h(basePath)}/color/lch">LCH</a> usa a mesma ideia perceptual de Lab, mas expressa a cor com croma e matiz.</p>
