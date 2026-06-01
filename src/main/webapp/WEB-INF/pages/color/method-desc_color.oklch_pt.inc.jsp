<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor Oklch</h3>
<p>A cor Oklch é um espaço de cor perceptual que representa cores com luminosidade, croma e matiz. Ela usa a mesma ideia de Oklab, mas expressa a cor com croma e ângulo, facilitando o ajuste separado da intensidade e do matiz.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidade</td><td>Representa a luminosidade da cor. 0% é preto e 100% é branco.</td><td><code>60%</code></td></tr>
			<tr><td>C: Croma</td><td>Representa a intensidade da cor. 0 é acromático e valores maiores produzem cores mais vivas.</td><td><code>0.2</code></td></tr>
			<tr><td>H: Matiz</td><td>Representa o matiz como um ângulo.</td><td><code>90deg</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Oklch notação</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>oklch(62.8% 0.2577 29.23deg)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklch(51.98% 0.1769 142.5deg)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>oklch(86.64% 0.2948 142.5deg)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>oklch(45.2% 0.3132 264.05deg)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>oklch(100% 0 0deg)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>oklch(0% 0 0deg)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>oklch(62.8% 0.2577 29.23deg / 0.5)</code>.</p>

<h4>Tratamento da luminosidade, do croma e do matiz</h4>
<p>Representa a luminosidade da cor. 0% é preto e 100% é branco Valores abaixo de 0% são tratados como 0%, e acima de 100% são limitados a 100%.</p>

<p>Representa a intensidade da cor. 0 é acromático e valores maiores produzem cores mais vivas. Croma negativo é tratado como 0. Quando o croma é 0, a cor fica acromática e o matiz é tratado como 0deg.</p>

<p>O matiz é tratado como um ângulo. <code>oklch(62.8% 0.2577 389.23deg)</code> é tratado como a mesma cor que <code>oklch(62.8% 0.2577 29.23deg)</code>.</p>

<h4>Diferença entre Oklch e Oklab</h4>
<p><a href="${dc:h(basePath)}/color/oklab">Oklab</a> representa cores com as coordenadas retangulares <code>a</code> e <code>b</code>. Oklch converte essa cor em croma e matiz.</p>

<h4>Diferença entre Oklch e LCH</h4>
<p>Oklch foi projetado para produzir mudanças visuais mais uniformes que <a href="${dc:h(basePath)}/color/lch">LCH</a> ao alterar matiz ou croma.</p>
