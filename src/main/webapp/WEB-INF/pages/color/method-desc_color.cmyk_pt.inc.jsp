<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre a cor CMYK</h3>
<p>A cor CMYK é um modelo de cor que representa cores com quatro componentes: ciano, magenta, amarelo e preto (key plate). É usada principalmente em impressão e editoração eletrônica, e se baseia na mistura subtrativa, em que as cores são produzidas pela sobreposição de tintas.</p>

<p>Em CMYK, cada componente é representado no intervalo de 0% a 100%. Em geral, <code>C</code>, <code>M</code> e <code>Y</code> representam o tom da cor, enquanto <code>K</code> representa a quantidade de preto. Quando todos os componentes são 0%, a cor é branca; quando <code>K</code> é 100%, a cor fica próxima do preto.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Notação CMYK</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td></tr>
			<tr><td>Ciano</td><td><code>device-cmyk(100% 0% 0% 0%)</code></td></tr>
			<tr><td>Magenta</td><td><code>device-cmyk(0% 100% 0% 0%)</code></td></tr>
			<tr><td>Amarelo</td><td><code>device-cmyk(0% 0% 100% 0%)</code></td></tr>
			<tr><td>Branco</td><td><code>device-cmyk(0% 0% 0% 0%)</code></td></tr>
			<tr><td>Preto</td><td><code>device-cmyk(0% 0% 0% 100%)</code></td></tr>
		</tbody>
	</table>
</div>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>device-cmyk(0% 100% 100% 0% / 0.5)</code>.</p>

<h4>Perfis de cor</h4>
<p>O DenCode permite escolher vários perfis de cor. Os perfis compatíveis estão listados abaixo.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Cor CMYK</caption>
		<thead>
			<tr><th>Perfil de cor</th><th>Exemplo de notação CMYK</th><th>Características</th></tr>
		</thead>
		<tbody>
			<tr><td>Naive CMYK</td><td><code>device-cmyk(0% 100% 100% 0%)</code></td><td>Conversão simples entre RGB e CMYK. Não depende de condições específicas de impressão nem de perfis ICC.</td></tr>
			<tr><td>U.S. Web Coated (SWOP) v2 (Approx.)</td><td><code>color(--swop-v2 0% 98.28% 100% 0%)</code></td><td>Perfil de cor CMYK que aproxima U.S. Web Coated (SWOP) v2.</td></tr>
			<tr><td>CRPC5 - SWOP 2013 C3</td><td><code>color(--swop2013-c3 0% 94.7% 100% 0%)</code></td><td>Conversão CMYK que usa o perfil ICC SWOP 2013 C3.</td></tr>
			<tr><td>CRPC6 - GRACoL 2013</td><td><code>color(--gracol2013 0% 93.17% 99.88% 0%)</code></td><td>Conversão CMYK que usa o perfil ICC GRACoL 2013.</td></tr>
			<tr><td>FOGRA39 - Coated Fogra39L VIGC 300</td><td><code>color(--fogra39 0% 92.77% 99.95% 0%)</code></td><td>Conversão CMYK que usa o perfil ICC FOGRA39.</td></tr>
			<tr><td>FOGRA51 - Coated (Approx.)</td><td><code>color(--fogra51 0% 97.13% 100% 0%)</code></td><td>Perfil de cor CMYK que aproxima FOGRA51.</td></tr>
			<tr><td>FOGRA52 - Uncoated (Approx.)</td><td><code>color(--fogra52 0% 97.67% 100% 0%)</code></td><td>Perfil de cor CMYK que aproxima FOGRA52.</td></tr>
		</tbody>
	</table>
</div>

<p>Cores CMYK com um “perfil ICC” ou “perfil de cor aproximado” são representadas no formato de espaço de cor personalizado CSS <code>color(--profile C% M% Y% K%)</code>. Para usá-las em CSS real, especifique o perfil ICC correspondente com <code>@color-profile</code>.</p>

<pre>
@color-profile --swop2013-c3 {
  src: url("path/to/SWOP2013C3_CRPC5.icc");
}

.foo {
  background-color: color(--swop2013-c3 0% 100% 100% 0%);
}
</pre>

<p>Perfis de cor aproximados calculam cores CMYK aproximadas com base em Characterization data publicados. Por isso, mesmo usando um perfil ICC semelhante com <code>@color-profile</code> no CSS, a cor exibida pode diferir ligeiramente.</p>

<h4>Diferença entre CMYK e RGB</h4>
<p>CMYK é um modelo de cor subtrativo para tintas de impressão. Já <a href="${dc:h(basePath)}/color/rgb">RGB</a> é um modelo aditivo para luz, como em telas. Mesmo para cores que parecem iguais, os valores dos componentes CMYK e RGB podem ser muito diferentes.</p>
