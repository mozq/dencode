<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre CRC32</h3>
<p>CRC32 é um método de detecção de erros que gera um valor de verificação de 32 bits a partir de dados de qualquer tamanho. É usado em transferências de arquivos, formatos compactados e contextos semelhantes para verificar se os dados foram corrompidos.</p>
<p>No DenCode, o texto inserido é tratado como uma sequência de bytes na codificação de caracteres selecionada, e o valor CRC32 é exibido em hexadecimal.</p>

<p>Por exemplo, o CRC32 de "Hello, world!" é o seguinte.</p>

<pre>ebe6c6e6</pre>

<h4>Características do CRC32</h4>
<p>CRC32 é adequado para detectar corrupção acidental de dados. Porém, como não é uma função hash criptográfica, não é adequado para usos que exigem segurança contra alterações.</p>
<p>CRC32 sempre gera o mesmo valor para a mesma entrada. Quando a entrada muda, o valor resultante também muda. No entanto, os dados de entrada originais não podem ser restaurados a partir do valor CRC32.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Entrada</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
