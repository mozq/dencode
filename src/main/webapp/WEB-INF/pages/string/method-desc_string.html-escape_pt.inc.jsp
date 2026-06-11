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

<h4>Escape básico e escape completo</h4>
<p>DenCode mostra dois resultados de Escape HTML: “Básico” e “Total”.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Tipo</th><th scope="col">Descrição</th><th scope="col">Exemplo para “A &lt; あ”</th></tr>
		<tr><td>Escape HTML (Básico)</td><td>Converte os cinco caracteres <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code>, <code>&quot;</code> e <code>'</code>.</td><td><code>A &amp;lt; あ</code></td></tr>
		<tr><td>Escape HTML (Total)</td><td>Usa referências de caracteres nomeadas quando disponíveis e referências numéricas decimais para os demais caracteres.</td><td><code>&amp;#65;&amp;#32;&amp;lt;&amp;#32;&amp;#12354;</code></td></tr>
	</table>
</div>

<p>Para a exibição HTML normal, geralmente é usado o escape básico, que converte apenas os caracteres necessários. O escape completo é útil para verificar uma string como referências de caracteres HTML ou para representar todos os caracteres explicitamente como referências.</p>

<h4>Unescape</h4>
<p>HTML Unescape converte referências de caracteres HTML de volta aos caracteres originais. DenCode pode decodificar referências nomeadas como <code>&amp;lt;</code> e <code>&amp;amp;</code>, referências numéricas decimais como <code>&amp;#12354;</code> e referências numéricas hexadecimais como <code>&amp;#x3042;</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Referência de caractere HTML</th><th scope="col">Após Unescape</th></tr>
		<tr><td><code>&amp;lt;p&amp;gt;</code></td><td><code>&lt;p&gt;</code></td></tr>
		<tr><td><code>&amp;#12354;</code></td><td><code>あ</code></td></tr>
		<tr><td><code>&amp;#x3042;</code></td><td><code>あ</code></td></tr>
	</table>
</div>
