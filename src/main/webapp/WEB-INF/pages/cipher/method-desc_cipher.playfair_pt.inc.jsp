<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre a Cifra de Playfair</h3>
<p>A Cifra de Playfair é uma cifra de substituição que troca pares de letras usando uma tabela de letras 5×5.</p>

<p>Por exemplo, quando a chave é "SECRET" e o texto claro é "HELLO", ele é criptografado da seguinte forma.</p>

<pre>
Texto claro : HELLO
Texto cifrado : ISKYIQ
</pre>

<p>Na criptografia, o texto claro é primeiro dividido em pares de letras. Se um par contiver a mesma letra, como "LL", a letra auxiliar "X" é inserida entre elas. Se restar apenas uma letra no final, também é acrescentado um "X".</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>Em seguida, prepara-se uma tabela de cifra 5×5, com 25 células no total. Como o alfabeto tem 26 letras, normalmente "I=J" fica na mesma célula.</p>
<p>Primeiro, escrevem-se na tabela as letras da chave, sem repetições. Com a chave "SECRET", o segundo "E" é ignorado. Depois, escreve-se "ABCDEFGHIKLMNOPQRSTUVWXYZ", ignorando também as letras que já aparecem na chave. Assim se completa uma tabela 5×5 sem letras duplicadas.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Com essa tabela, cada par de letras é criptografado pelas regras abaixo. O método depende da posição relativa das duas letras na tabela.</p>

<ul>
	<li>Na mesma linha: cada letra é substituída pela letra à sua direita. Se estiver na extremidade direita, volta para a extremidade esquerda.</li>
	<li>Na mesma coluna: cada letra é substituída pela letra abaixo dela. Se estiver na parte inferior, volta para o topo.</li>
	<li>Em linhas e colunas diferentes: imagine um retângulo cujos cantos incluem as duas letras e substitua-as pelas letras dos outros dois cantos.</li>
</ul>

<pre>
S <strong>E</strong>
A B
<strong>H</strong> I

K <strong>L</strong>
P Q
<strong>X</strong> Y

I K <strong>L</strong>
<strong>O</strong> P Q
</pre>

<pre>
HE LX LO
↓
IS KY IQ
</pre>

<p>Para descriptografar, o texto cifrado é processado em pares usando a mesma tabela de letras. Observe que a letra auxiliar "X" não é removida automaticamente.</p>

<pre>
Texto cifrado : ISKYIQ
Texto claro   : HEL<strong>X</strong>LO
</pre>
