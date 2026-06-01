<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor Oklab</h3>
<p>A cor Oklab é um espaço de cor perceptual que representa cores com luminosidade e dois componentes de cor. Assim como Lab, separa brilho e cor, mas como modelo mais recente foi projetada para que as mudanças de cor fiquem mais próximas da aparência visual.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>L: Luminosidade</td><td>Representa a luminosidade da cor. 0% é preto e 100% é branco.</td><td><code>60%</code></td></tr>
			<tr><td>a</td><td>Representa a direção do verde ao vermelho. Valores negativos tendem ao verde e positivos ao vermelho.</td><td><code>0.1</code></td></tr>
			<tr><td>b</td><td>Representa a direção do azul ao amarelo. Valores negativos tendem ao azul e positivos ao amarelo.</td><td><code>0.1</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Oklab notação</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>oklab(62.8% 0.2249 0.1258)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>oklab(51.98% -0.1403 0.1077)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>oklab(86.64% -0.2339 0.1795)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>oklab(45.2% -0.0325 -0.3115)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>oklab(100% 0 0)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>oklab(0% 0 0)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>oklab(62.8% 0.2249 0.1258 / 0.5)</code>.</p>

<h4>Tratamento da luminosidade, a e b</h4>
<p>Representa a luminosidade da cor. 0% é preto e 100% é branco Valores abaixo de 0% são tratados como 0%, e acima de 100% são limitados a 100%.</p>

<p><code>a</code> e <code>b</code> são especificados como números positivos ou negativos. Seus valores não são limitados a um intervalo fixo e são tratados como os componentes Oklab especificados.</p>

<h4>Diferença entre Oklab e Oklch</h4>
<p><a href="${dc:h(basePath)}/color/oklch">Oklch</a> usa a mesma ideia perceptual de Oklab, mas expressa a cor com croma e matiz.</p>

<h4>Diferença entre Oklab e Lab</h4>
<p>Oklab foi projetado para produzir mudanças visuais mais uniformes que <a href="${dc:h(basePath)}/color/lab">Lab</a> ao alterar matiz ou croma.</p>
