<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a cor RGB</h3>
<p>A cor RGB é um modelo de cor que representa cores combinando três componentes de luz: vermelho, verde e azul. É amplamente usada para cores em telas, como displays, páginas web e dados de imagem.</p>

<p>Em RGB, a intensidade de cada componente é especificada com um valor numérico. Geralmente é representada como um inteiro de 0 a 255 ou como uma porcentagem de 0% a 100%. Quando todos os componentes são 0, a cor é preta; quando todos estão no máximo, a cor é branca.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Cor</th><th>Notação RGB</th><th>Notação hexadecimal</th></tr>
		</thead>
		<tbody>
			<tr><td>Vermelho</td><td><code>rgb(255 0 0)</code></td><td><code>#ff0000</code></td></tr>
			<tr><td>Verde</td><td><code>rgb(0 128 0)</code></td><td><code>#008000</code></td></tr>
			<tr><td>Azul</td><td><code>rgb(0 0 255)</code></td><td><code>#0000ff</code></td></tr>
			<tr><td>Branco</td><td><code>rgb(255 255 255)</code></td><td><code>#ffffff</code></td></tr>
			<tr><td>Preto</td><td><code>rgb(0 0 0)</code></td><td><code>#000000</code></td></tr>
		</tbody>
	</table>
</div>

<p>Cores RGB podem ser escritas em forma de função ou em notação hexadecimal. Por exemplo, o vermelho pode ser representado como <code>rgb(255 0 0)</code>, <code>rgb(100% 0% 0%)</code>, <code>#ff0000</code> ou <code>#f00</code>.</p>

<p>Para incluir transparência, adicione um valor alfa. Por exemplo, o vermelho semitransparente pode ser representado como <code>rgb(255 0 0 / 50%)</code> ou <code>#ff000080</code>.</p>

<p>A conversão de cor RGB do DenCode oferece suporte às seguintes opções de notação.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Cor RGB (hexadecimal)</caption>
		<thead>
			<tr><th>Opção de notação</th><th>Formato</th><th>Exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td><code>#RRGGBB(AA)</code></td><td><code>#RRGGBB</code><br><code>#RRGGBBAA</code></td><td><code>#ff0000</code><br><code>#ff000080</code></td></tr>
			<tr><td><code>0xAARRGGBB</code></td><td><code>0xAARRGGBB</code></td><td><code>0xffff0000</code><br><code>0x80ff0000</code></td></tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Cor RGB</caption>
		<thead>
			<tr><th>Opção de notação</th><th>Formato</th><th>Exemplo</th></tr>
		</thead>
		<tbody>
			<tr><td>Número</td><td><code>rgb(R G B)</code><br><code>rgb(R G B / A)</code></td><td><code>rgb(255 0 0)</code><br><code>rgb(255 0 0 / 0.5)</code></td></tr>
			<tr><td>Porcentagem</td><td><code>rgb(R% G% B%)</code><br><code>rgb(R% G% B% / A)</code></td><td><code>rgb(100% 0% 0%)</code><br><code>rgb(100% 0% 0% / 0.5)</code></td></tr>
		</tbody>
	</table>
</div>

<p><code>0xAARRGGBB</code> não é uma notação hexadecimal padrão de CSS, mas um formato ARGB às vezes usado em programas e configurações de aplicativos. O <code>AA</code> inicial representa alfa, seguido de <code>RR</code>, <code>GG</code> e <code>BB</code> para vermelho, verde e azul.</p>

<h4>sRGB e outros espaços de cor RGB</h4>
<p>RGB é um modelo de cor que representa cores com três componentes: vermelho, verde e azul. No entanto, mesmo com os mesmos valores RGB, a cor real muda conforme o espaço de cor usado para interpretação. Valores comuns na web, como <code>rgb()</code> e <code>#RRGGBB</code>, normalmente são tratados como cores sRGB.</p>

<p>CSS Color Module Level 4 também define espaços RGB com gamas diferentes de sRGB, como Display P3 e ProPhoto RGB. O DenCode também oferece suporte à conversão desses espaços.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Espaço de cor</th><th>Formato</th><th>Exemplo</th><th>Características</th></tr>
		</thead>
		<tbody>
			<tr><td>sRGB</td><td><code>rgb(...)</code><br><code>color(srgb ...)</code></td><td><code>rgb(255 0 0)</code><br><code>color(srgb 1 0 0)</code></td><td>O espaço RGB comum para web e CSS. Códigos hexadecimais e valores <code>rgb()</code> comuns são basicamente tratados como sRGB. <code>color(srgb ...)</code> é um formato do CSS Color Module Level 4.</td></tr>
			<tr><td>Linear sRGB</td><td><code>color(srgb-linear ...)</code></td><td><code>color(srgb-linear 1 0 0)</code></td><td>Um espaço de cor que usa a mesma gama de sRGB, mas representa valores com componentes linearizados. É usado em cálculos e composições de cor.</td></tr>
			<tr><td>Display P3</td><td><code>color(display-p3 ...)</code></td><td><code>color(display-p3 1 0 0)</code></td><td>Um espaço de gama mais ampla que sRGB, usado em telas wide gamut e alguns dispositivos móveis.</td></tr>
			<tr><td>Adobe RGB (1998)</td><td><code>color(a98-rgb ...)</code></td><td><code>color(a98-rgb 1 0 0)</code></td><td>Um espaço mais amplo que sRGB, às vezes usado em edição de fotos e fluxos voltados à impressão.</td></tr>
			<tr><td>ProPhoto RGB</td><td><code>color(prophoto-rgb ...)</code></td><td><code>color(prophoto-rgb 1 0 0)</code></td><td>Um espaço RGB com gama ainda mais ampla que Adobe RGB, usado como espaço de trabalho na edição de fotos.</td></tr>
			<tr><td>Rec. 2020</td><td><code>color(rec2020 ...)</code></td><td><code>color(rec2020 1 0 0)</code></td><td>Um espaço RGB com gama muito ampla, usado em padrões de vídeo UHDTV e HDR.</td></tr>
		</tbody>
	</table>
</div>

<p>Cores especificadas em espaços RGB de gama ampla podem não ser representadas com precisão em telas sRGB ou com códigos hexadecimais comuns. Quando o DenCode converte para <code>#RRGGBB</code> ou <code>rgb(R G B)</code> numérico, componentes fora do intervalo sRGB são tratados para caber entre <code>0</code> e <code>255</code>. Ao escolher <code>color(display-p3 ...)</code> ou <code>color(a98-rgb ...)</code>, elas podem ser exibidas como valores do espaço selecionado.</p>
