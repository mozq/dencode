<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre Punycode IDN</h3>
<p>Punycode é um método de codificação que representa strings Unicode usando apenas caracteres ASCII. Ele é usado principalmente para converter nomes de domínio internacionalizados (IDN), como domínios com caracteres japoneses, chineses, coreanos ou letras latinas acentuadas, para uma forma ASCII que o DNS consegue processar.</p>
<p>Em um nome de domínio internacionalizado, cada rótulo do domínio é convertido com Punycode e recebe o prefixo <code>xn--</code>. Essa forma ASCII é chamada de A-label; a forma Unicode original é chamada de U-label.</p>

<p>Por exemplo, ao converter “ドメイン.com” para Punycode IDN, o resultado é o seguinte.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>Neste exemplo, o domínio de nível superior <code>com</code> contém apenas caracteres ASCII e permanece inalterado; somente o rótulo “ドメイン” é convertido para <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Forma Unicode</th><th scope="col">Forma Punycode IDN</th><th scope="col">Descrição</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nome de domínio com caracteres japoneses.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Cada rótulo é convertido separadamente.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Exemplo com uma letra latina acentuada.</td></tr>
	</table>
</div>

<p>Punycode IDN é diferente da codificação URL. A codificação URL representa caracteres dentro de uma URL como sequências de bytes, por exemplo <code>%E3%81%82</code>. Já o Punycode IDN converte rótulos de nomes de domínio em rótulos ASCII que começam com <code>xn--</code>.</p>

<h4>Conversão por rótulo do domínio</h4>
<p>Um nome de domínio é uma sequência de rótulos separados por pontos (<code>.</code>). O Punycode IDN não converte o nome de domínio inteiro como uma única string; ele converte cada rótulo separadamente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Rótulo</th><th scope="col">Resultado da conversão</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Assim, <code>例え.テスト</code> é convertido para <code>xn--r8jz45g.xn--zckzah</code>.</p>
