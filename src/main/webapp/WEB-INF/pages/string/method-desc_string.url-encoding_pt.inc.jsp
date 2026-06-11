<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a codificação de URL</h3>
<p>A codificação de URL é um método para representar texto com segurança em URLs. Seu nome formal é "percent-encoding", definido pela especificação de URI <a href="https://www.rfc-editor.org/rfc/rfc3986" target="_blank">RFC 3986</a>.</p>
<p>Caracteres que têm significado especial em URLs, ou que não são adequados para uso direto em URLs, são convertidos em um sinal de porcentagem (%) seguido de dois dígitos hexadecimais.</p>
<p>Por exemplo, um espaço é representado como <code>%20</code>, um ponto de exclamação (<code>!</code>) como <code>%21</code>, e o caractere japonês "あ" como <code>%E3%81%82</code> em UTF-8.</p>

<p>A codificação de URL primeiro converte o texto em bytes usando a codificação de caracteres selecionada e representa cada byte como <code>%HH</code> quando necessário. No DenCode, os caracteres não reservados da RFC 3986, caracteres alfanuméricos e <code>-</code>, <code>.</code>, <code>_</code>, <code>~</code>, não são convertidos; os outros caracteres são codificados por codificação percentual.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Caractere</th><th scope="col">Após a codificação de URL</th><th scope="col">Descrição</th></tr>
		<tr><td><code>A</code></td><td><code>A</code></td><td>Caracteres alfanuméricos são não reservados, portanto não são convertidos.</td></tr>
		<tr><td><code>-</code></td><td><code>-</code></td><td><code>-</code>, <code>.</code>, <code>_</code> e <code>~</code> são não reservados, portanto não são convertidos.</td></tr>
		<tr><td><code>/</code></td><td><code>%2F</code></td><td>Este caractere separa segmentos de caminho de URL; codifique-o quando for usado como valor.</td></tr>
		<tr><td><code>?</code></td><td><code>%3F</code></td><td>Caractere reservado que inicia a string de consulta.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>%26</code></td><td>Caractere reservado que separa parâmetros de consulta.</td></tr>
		<tr><td><code>=</code></td><td><code>%3D</code></td><td>Caractere reservado que separa o nome e o valor de um parâmetro.</td></tr>
		<tr><td>Espaço</td><td><code>%20</code></td><td>Na codificação percentual de URLs, um espaço é codificado como <code>%20</code>; em <code>application/x-www-form-urlencoded</code>, como <code>+</code>.</td></tr>
		<tr><td><code>+</code></td><td><code>%2B</code></td><td>Codifique <code>+</code> quando o próprio sinal de mais for usado como valor.</td></tr>
		<tr><td><code>あ</code></td><td><code>%E3%81%82</code></td><td>Em UTF-8, este caractere é codificado como uma sequência de três bytes.</td></tr>
	</table>
</div>

<p>Por exemplo, codificar "Hello, world!" como URL produz o seguinte resultado.</p>

<pre>Hello%2C%20world%21</pre>

<p>Neste exemplo, a vírgula (<code>,</code>) se torna <code>%2C</code>, o espaço se torna <code>%20</code> e o ponto de exclamação (<code>!</code>) se torna <code>%21</code>.</p>


<h4>Representação de espaços em application/x-www-form-urlencoded</h4>
<p>Em <code>application/x-www-form-urlencoded</code>, usado no envio de formulários HTML, espaços podem ser representados como <code>+</code>. Esse formato é definido no <a href="https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#application/x-www-form-urlencoded-encoding-algorithm" target="_blank">HTML Standard</a> como codificação para envio de formulários.</p>
<p>O DenCode permite escolher se os espaços serão gerados como <code>%20</code> ou <code>+</code> durante a codificação.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Formato</th><th scope="col">Resultado para "Hello world"</th><th scope="col">Uso</th></tr>
		<tr><td>Codificação percentual</td><td><code>Hello%20world</code></td><td>Formato geral adequado para URLs.</td></tr>
		<tr><td><code>application/x-www-form-urlencoded</code></td><td><code>Hello+world</code></td><td>Usado em strings de consulta e corpos de requisição de formulários HTML.</td></tr>
	</table>
</div>
