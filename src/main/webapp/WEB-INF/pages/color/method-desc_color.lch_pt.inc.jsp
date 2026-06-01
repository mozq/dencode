<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor LCH</h3>
<p>A cor LCH é um espaço de cor que representa cores com luminosidade, croma e matiz. Ela usa a mesma ideia perceptual de Lab, mas expressa a cor com croma e ângulo, facilitando o ajuste separado da intensidade e do matiz.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidade</td><td>Representa a luminosidade da cor. 0% é preto e 100% é branco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Representa a intensidade da cor. 0 é acromático e valores maiores produzem cores mais vivas.</td><td><code>80</code></td></tr>
			<tr><td>H: Matiz</td><td>Representa o matiz como um ângulo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>LCH notação</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>lch(54.29% 106.8372 40.86deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>lch(46.28% 67.9842 134.38deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>lch(87.82% 113.3315 134.38deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>lch(29.57% 131.2014 301.36deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>lch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>lch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>lch(54.29% 106.8372 40.86deg / 0.5)</code>.</p>

<h4>Tratamento da luminosidade, do croma e do matiz</h4>
<p>Representa a luminosidade da cor. 0% é preto e 100% é branco Valores abaixo de 0% são tratados como 0%, e acima de 100% são limitados a 100%.</p>

<p>Representa a intensidade da cor. 0 é acromático e valores maiores produzem cores mais vivas. Croma negativo é tratado como 0. Quando o croma é 0, a cor fica acromática e o matiz é tratado como 0deg.</p>

<p>O matiz é tratado como um ângulo. <code>lch(54.29% 106.8372 400.86deg)</code> é tratado como a mesma cor que <code>lch(54.29% 106.8372 40.86deg)</code>.</p>

<h4>Diferença entre LCH e Lab</h4>
<p><a href="${dc:h(basePath)}/color/lab">Lab</a> representa cores com as coordenadas retangulares <code>a</code> e <code>b</code>. LCH expressa a cor com croma e matiz, o que pode tornar os ajustes mais intuitivos com a mesma luminosidade.</p>
