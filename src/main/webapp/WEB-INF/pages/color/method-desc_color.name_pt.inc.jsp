<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Sobre nomes de cor</h3>
<p>Nomes de cor são uma forma de representar cores usando cores nomeadas definidas no CSS. Como as cores podem ser especificadas com palavras-chave como <code>red</code>, <code>blue</code> e <code>orange</code>, cores comuns em HTML e CSS podem ser escritas de forma legível.</p>

<p>Por exemplo, cores principais como o vermelho podem ser representadas assim.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Nome da cor</th><th>Notação RGB</th><th>Notação hexadecimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>red</code></td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Lima</td><td><code>lime</code></td><td><code>rgb(0 255 0)</code></td><td><code>#00ff00</code></td></tr>
			<tr><td>Azul</td><td><code>blue</code></td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Branco</td><td><code>white</code></td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Preto</td><td><code>black</code></td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
			<tr><td>Laranja</td><td><code>orange</code></td><td><code>rgb(255 165 0)</code></td><td><code>#ffa500</code></td></tr>
			<tr><td>Transparente</td><td><code>transparent</code></td><td><code>rgb(0 0 0 / 0)</code></td><td><code>#00000000</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>transparent</code> é um nome de cor especial que representa preto transparente.</p>

<p>Nomes de cor, exceto <code>transparent</code>, não contêm informação de transparência. No DenCode, quando uma cor com transparência pode ser representada como uma cor nomeada, ela é exibida com a sintaxe de cor relativa do CSS. Por exemplo, <code>red</code> semitransparente é representado como <code>rgb(from <strong>red</strong> r g b / <strong>0.5</strong>)</code>.</p>

<h4>Diferença entre nomes de cor e RGB</h4>
<p>Nomes de cor representam cores comuns com palavras-chave legíveis. Já <a href="${dc:h(basePath)}/color/rgb">RGB</a> especifica valores dos componentes vermelho, verde e azul, podendo representar muito mais cores numericamente. Nomes de cor são usados quando a legibilidade em CSS ou HTML é importante; a notação RGB é usada para especificações detalhadas ou conversões de cor.</p>
