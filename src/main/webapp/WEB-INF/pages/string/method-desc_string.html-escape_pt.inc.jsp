<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre Escape HTML</h3>
<p>Escape HTML converte caracteres que têm significado especial em HTML em referências de caracteres, para que uma string possa ser exibida com segurança como texto HTML. Por exemplo, <code>&lt;</code> e <code>&gt;</code>, que podem ser interpretados como tags, são escritos como <code>&amp;lt;</code> e <code>&amp;gt;</code>.</p>
<p>Ao fazer escape de HTML, o texto inserido não é interpretado como tags ou atributos HTML e pode ser exibido na tela como texto.</p>

<p>Por exemplo, ao aplicar Escape HTML a “&lt;p&gt;Hello, world!&lt;/p&gt;”, o resultado é o seguinte.</p>

<pre>&amp;lt;p&amp;gt;Hello, world!&amp;lt;/p&amp;gt;</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Caractere</th><th scope="col">Após Escape HTML</th><th scope="col">Descrição</th></tr>
		<tr><td><code>&lt;</code></td><td><code>&amp;lt;</code></td><td>Pode ser interpretado como o início de uma tag HTML.</td></tr>
		<tr><td><code>&gt;</code></td><td><code>&amp;gt;</code></td><td>Pode ser interpretado como o fim de uma tag HTML.</td></tr>
		<tr><td><code>&amp;</code></td><td><code>&amp;amp;</code></td><td>Pode ser interpretado como o início de uma referência de caractere.</td></tr>
		<tr><td><code>&quot;</code></td><td><code>&amp;quot;</code></td><td>Tem significado especial quando o valor de um atributo está entre aspas duplas.</td></tr>
		<tr><td><code>'</code></td><td><code>&amp;apos;</code></td><td>Tem significado especial quando o valor de um atributo está entre aspas simples.</td></tr>
	</table>
</div>

<h4>Opções de escape HTML</h4>
<p>O DenCode permite escolher o alvo, como as referências de caracteres nomeadas são usadas e a notação de referências numéricas.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Alvo</caption>
		<tr><th scope="col">Opção</th><th scope="col">Descrição</th><th scope="col">Exemplo para “A &lt; 😀”</th></tr>
		<tr><td>Básico</td><td>Converte os cinco caracteres <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> e <code>'</code>.</td><td><code>A &amp;lt; 😀</code></td></tr>
		<tr><td>Básico + não ASCII</td><td>Converte os cinco caracteres básicos e os caracteres não ASCII.</td><td><code>A &amp;lt; &amp;#128512;</code></td></tr>
		<tr><td>Não alfanuméricos</td><td>Converte caracteres que não sejam letras ou dígitos ASCII.</td><td><code>A&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
		<tr><td>Tudo</td><td>Converte todos os caracteres.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#128512;</code></td></tr>
	</table>
</div>

<p>Para a exibição HTML comum, “Básico” é usado com frequência porque converte apenas os caracteres necessários. Use “Tudo” quando quiser inspecionar uma string como referências de caracteres HTML ou representar todos os caracteres explicitamente como referência.</p>

<div class="table-responsive">
	<table class="table">
		<caption>Referências de caracteres nomeadas</caption>
		<tr><th scope="col">Opção</th><th scope="col">Descrição</th><th scope="col">Exemplo</th></tr>
		<tr><td>HTML5</td><td>Usa as referências de caracteres nomeadas definidas pelo HTML5.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>HTML4</td><td>Usa as referências de caracteres nomeadas definidas pelo HTML4.</td><td><code>&amp;copy;</code></td></tr>
		<tr><td>XHTML</td><td>Usa as cinco referências <code>&amp;lt;</code>, <code>&amp;gt;</code>, <code>&amp;amp;</code>, <code>&amp;quot;</code> e <code>&amp;apos;</code>.</td><td><code>&amp;apos;</code></td></tr>
		<tr><td>Nenhuma</td><td>Não usa referências nomeadas; apenas referências numéricas são usadas.</td><td><code>&amp;#169;</code></td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<caption>Notação de referências numéricas</caption>
		<tr><th scope="col">Opção</th><th scope="col">Descrição</th><th scope="col">Exemplo</th></tr>
		<tr><td>Decimal</td><td>Usa referências numéricas decimais.</td><td><code>&amp;#169;</code></td></tr>
		<tr><td>Hexadecimal minúsculo</td><td>Usa referências numéricas hexadecimais com letras minúsculas.</td><td><code>&amp;#xa9;</code></td></tr>
		<tr><td>Hexadecimal maiúsculo</td><td>Usa referências numéricas hexadecimais com letras maiúsculas.</td><td><code>&amp;#xA9;</code></td></tr>
	</table>
</div>
