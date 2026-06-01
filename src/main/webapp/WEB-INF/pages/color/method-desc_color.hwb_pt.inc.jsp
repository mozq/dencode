<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor HWB</h3>
<p>A cor HWB é um modelo de cor que representa cores com três componentes: matiz, brancura e negrura. O matiz especifica o tom base, enquanto a brancura e a negrura indicam quanto branco e preto são misturados. Isso torna intuitivo clarear, escurecer ou aproximar uma cor do cinza.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Componente</th><th>Significado</th><th>Valor de exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>H: Matiz</td><td>Representa o tom como um ângulo. O vermelho fica em torno de 0deg, o verde em torno de 120deg e o azul em torno de 240deg.</td><td><code>90deg</code></td></tr>
			<tr><td>W: Brancura</td><td>Representa a quantidade de branco misturada à cor. Quanto maior o valor, mais esbranquiçada a cor fica.</td><td><code>20%</code></td></tr>
			<tr><td>B: Negrura</td><td>Representa a quantidade de preto misturada à cor. Quanto maior o valor, mais escura a cor fica.</td><td><code>30%</code></td></tr>
		</tbody>
	</table>
</div>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Notação HWB</th><th>Notação RGB</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>hwb(0deg 0% 0%)</code></td><td><code>rgb(255 0 0)</code></td></tr>
			<tr><td>Verde</td><td><code>hwb(120deg 0% 49.8%)</code></td><td><code>rgb(0 128 0)</code></td></tr>
			<tr><td>Lima</td><td><code>hwb(120deg 0% 0%)</code></td><td><code>rgb(0 255 0)</code></td></tr>
			<tr><td>Azul</td><td><code>hwb(240deg 0% 0%)</code></td><td><code>rgb(0 0 255)</code></td></tr>
			<tr><td>Branco</td><td><code>hwb(0deg 100% 0%)</code></td><td><code>rgb(255 255 255)</code></td></tr>
			<tr><td>Preto</td><td><code>hwb(0deg 0% 100%)</code></td><td><code>rgb(0 0 0)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>hwb(0deg 0% 0% / 0.5)</code>.</p>

<h4>Tratamento de matiz, brancura e negrura</h4>
<p>O matiz é tratado como um ângulo, e valores maiores que 360deg ou negativos são normalizados para o intervalo de 0deg a 360deg. Por exemplo, <code>hwb(360deg 0% 0%)</code> é tratado como a mesma cor que <code>hwb(0deg 0% 0%)</code>, e <code>hwb(-120deg 0% 0%)</code> como a mesma cor que <code>hwb(240deg 0% 0%)</code>.</p>

<p>A brancura e a negrura são tratadas no intervalo de 0% a 100%. Uma brancura maior aproxima a cor do branco, e uma negrura maior a aproxima do preto. Se a soma da brancura e da negrura for 100% ou mais, a cor é tratada como acinzentada independentemente do matiz.</p>

<h4>Diferença entre HWB e HSL</h4>
<p><a href="${dc:h(basePath)}/color/hsl">HSL</a> ajusta a cor com saturação e luminosidade, sendo adequado para especificar vivacidade e brilho. HWB ajusta a cor pela quantidade de branco e preto misturados, facilitando descrever operações como “deixar mais branco mantendo o mesmo matiz” ou “adicionar preto para escurecer”.</p>

<p>No entanto, HWB também não é um espaço de cor perceptualmente uniforme. Para lidar com brilho visual ou diferenças de cor com mais facilidade, podem ser usados espaços de cor como <a href="${dc:h(basePath)}/color/lab">Lab</a>, <a href="${dc:h(basePath)}/color/lch">LCH</a>, <a href="${dc:h(basePath)}/color/oklab">Oklab</a> e <a href="${dc:h(basePath)}/color/oklch">Oklch</a>.</p>
