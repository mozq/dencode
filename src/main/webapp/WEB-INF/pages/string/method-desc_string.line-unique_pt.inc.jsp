<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a remoção de linhas duplicadas</h3>
<p>Esta função remove linhas repetidas de um texto com várias linhas. Se a mesma linha aparecer mais de uma vez, apenas a primeira ocorrência será mantida, e as ocorrências seguintes serão removidas.</p>
<p>As linhas restantes mantêm a ordem original. O texto não é ordenado.</p>

<p>Por exemplo, ao remover as linhas duplicadas do texto abaixo:</p>

<pre>
apple
banana
apple
orange
banana
</pre>

<p>O resultado é:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Linha de entrada</th><th scope="col">Resultado</th><th scope="col">Descrição</th></tr>
		<tr><td><code>apple</code> (1ª vez)</td><td>Mantida</td><td>É a primeira ocorrência da linha.</td></tr>
		<tr><td><code>banana</code> (1ª vez)</td><td>Mantida</td><td>É a primeira ocorrência da linha.</td></tr>
		<tr><td><code>apple</code> (2ª vez)</td><td>Excluída</td><td>A mesma linha já apareceu.</td></tr>
		<tr><td><code>orange</code> (1ª vez)</td><td>Mantida</td><td>É a primeira ocorrência da linha.</td></tr>
		<tr><td><code>banana</code> (2ª vez)</td><td>Excluída</td><td>A mesma linha já apareceu.</td></tr>
	</table>
</div>

<p>A detecção de duplicatas compara a linha inteira. Diferenças entre maiúsculas e minúsculas, espaços no início ou no fim e caracteres de largura inteira ou meia largura são tratados como texto diferente.</p>
