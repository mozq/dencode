<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О шифре Бэкона</h3>
<p>Шифр Бэкона — это шифр замены, в котором каждая буква представляется пятизначным двоичным шаблоном, например A/B.</p>

<pre>
Открытый текст: HELLO, WORLD!
Шифртекст    : AABBB AABAA ABABB ABABB ABBBA ,  BABBA ABBBA BAAAB ABABB AAABB !
</pre>

<p>Оригинальный шифр Бэкона использует 24-буквенный алфавит, где I/J и U/V считаются одними и теми же буквами. Во второй версии каждой букве от A до Z назначается отдельный код. DenCode поддерживает оба алфавита.</p>

<h4>Оригинальный 24-буквенный алфавит</h4>
<p>В оригинальном алфавите I и J имеют один код, как и U и V. При кодировании J преобразуется как I, а V — как U.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I/J</th><td>ABAAA</td><th>K</th><td>ABAAB</td><th>L</th><td>ABABA</td><th>M</th><td>ABABB</td></tr>
<tr><th>N</th><td>ABBAA</td><th>O</th><td>ABBAB</td><th>P</th><td>ABBBA</td><th>Q</th><td>ABBBB</td></tr>
<tr><th>R</th><td>BAAAA</td><th>S</th><td>BAAAB</td><th>T</th><td>BAABA</td><th>U/V</th><td>BAABB</td></tr>
<tr><th>W</th><td>BABAA</td><th>X</th><td>BABAB</td><th>Y</th><td>BABBA</td><th>Z</th><td>BABBB</td></tr>
</table>

<h4>Вторая версия: 26-буквенный алфавит</h4>
<p>Во второй версии каждая буква от A до Z имеет собственный код Бэкона, включая I, J, U и V.</p>

<table class="table">
<tr><th>A</th><td>AAAAA</td><th>B</th><td>AAAAB</td><th>C</th><td>AAABA</td><th>D</th><td>AAABB</td></tr>
<tr><th>E</th><td>AABAA</td><th>F</th><td>AABAB</td><th>G</th><td>AABBA</td><th>H</th><td>AABBB</td></tr>
<tr><th>I</th><td>ABAAA</td><th>J</th><td>ABAAB</td><th>K</th><td>ABABA</td><th>L</th><td>ABABB</td></tr>
<tr><th>M</th><td>ABBAA</td><th>N</th><td>ABBAB</td><th>O</th><td>ABBBA</td><th>P</th><td>ABBBB</td></tr>
<tr><th>Q</th><td>BAAAA</td><th>R</th><td>BAAAB</td><th>S</th><td>BAABA</td><th>T</th><td>BAABB</td></tr>
<tr><th>U</th><td>BABAA</td><th>V</th><td>BABAB</td><th>W</th><td>BABBA</td><th>X</th><td>BABBB</td></tr>
<tr><th>Y</th><td>BBAAA</td><th>Z</th><td>BBAAB</td><td></td><td></td><td></td><td></td></tr>
</table>

<p>Символы, не поддерживаемые выбранным алфавитом, сохраняются без изменений.</p>

<h4>Использование в стеганографии</h4>
<p>Шифр Бэкона был предложен Фрэнсисом Бэконом в 1605 году. Если пятисимвольные группы A/B записывать напрямую, он работает как шифр замены. Если же выбор A/B скрывать во внешнем виде другого текста, его можно использовать как шифр сокрытия или форму стеганографии.</p>
<p>Для стеганографического использования секретное сообщение сначала преобразуется в последовательность A/B, затем подготавливается достаточно длинный маскирующий текст. Каждая буква этого текста записывается одним из двух начертаний: одно читается как A, другое как B. Текст выглядит как обычное предложение, но различия начертания, прочитанные группами по пять, раскрывают скрытое сообщение. Бэкон также описал билитеральный алфавит для рукописного письма с двумя вариантами форм прописных и строчных букв.</p>

<p>Например, шифрование «HI» дает «AABBB ABAAA». Если скрыть это в маскирующем тексте «Hello world», получится так:</p>
<pre>
  H     I
AABBB ABAAA
He<strong>llo</strong> w<strong>o</strong>rld
</pre>

<p>В этом примере обычные буквы читаются как A, а полужирные — как B. Видимый текст — «Hello world», но если читать только различия начертания, получается «AABBB ABAAA», что декодируется группами по пять как «HI».</p>
