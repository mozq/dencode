<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor HSL</h3>
<p>A cor HSL é um modelo de cor que representa cores com matiz, saturação e luminosidade. Diferente de RGB, que especifica diretamente a intensidade da luz vermelha, verde e azul, HSL separa tom, vivacidade e brilho, sendo útil para ajuste de cores e trabalho com CSS.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Matiz</td><td>Representa o matiz como um ângulo. Vermelho fica perto de 0deg, verde perto de 120deg e azul perto de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>S: Saturação</td><td>Representa a vivacidade da cor. 0% é acromático e 100% é a cor mais viva.</td><td><code>50%</code></td></tr>
			<tr><td>L: Luminosidade</td><td>Representa o brilho da cor. 0% é preto, 50% é um brilho normal e 100% é branco.</td><td><code>50%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Notação HSL</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>hsl(0deg 100% 50%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hsl(120deg 100% 25.1%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>hsl(120deg 100% 50%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>hsl(240deg 100% 50%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>hsl(0deg 0% 100%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>hsl(0deg 0% 0%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>hsl(0deg 100% 50% / 0.5)</code>.</p>

<p>Como entrada, é possível usar a notação separada por espaços <code>hsl(0deg 100% 50%)</code>, bem como a notação tradicional separada por vírgulas <code>hsl(0deg, 100%, 50%)</code>.</p>

<h4>Tratamento do matiz, da saturação e da luminosidade</h4>
<p>O matiz é tratado como um ângulo; valores maiores que 360deg ou negativos são normalizados para o intervalo de 0deg a 360deg. Por exemplo, <code>hsl(360deg 100% 50%)</code> é tratado como a mesma cor que <code>hsl(0deg 100% 50%)</code>, e <code>hsl(-120deg 100% 50%)</code> como a mesma cor que <code>hsl(240deg 100% 50%)</code>.</p>

<p>Saturação e luminosidade são tratadas no intervalo de 0% a 100%. Quando a saturação é 0%, a cor se torna um cinza acromático independentemente do matiz. Quando a luminosidade é 0%, a cor é preta; quando é 100%, é branca.</p>

<h4>Diferença entre HSL e RGB</h4>
<p><a href="${dc:h(basePath)}/color/rgb">RGB</a> especifica diretamente os componentes vermelho, verde e azul, ficando próximo da exibição em tela e dos dados de imagem. HSL separa matiz, saturação e luminosidade, facilitando operações como “clarear mantendo o mesmo matiz” ou “reduzir apenas a saturação”.</p>

<p>No entanto, HSL não é um espaço de cor perceptualmente uniforme. Quando se deseja tratar melhor o brilho visual ou diferenças de cor, podem ser usados espaços de cor como <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> e <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
