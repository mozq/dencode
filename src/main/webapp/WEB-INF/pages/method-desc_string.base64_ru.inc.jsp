<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О Base64</h3>
<p>Base64 - это метод кодирования, использующий 7-битные печатаемые символы ASCII. В основном используется в электронной почте для передачи 8-битных данных по 7-битному пути.</p>
<p>В Base64 данные делятся на 6 бит и преобразуются в буквенно-цифровые символы (A-Z, a-z, 0-9) и символы (+, /). Преобразует каждые 4 символа, а если последний меньше 4 символов, заполните его символом равенства (=).</p>
<p>Кроме того, RFC 1421 (PEM: Privacy-Enhanced Mail) предусматривает перерыв каждые 64 символа, а RFC 2045 (MIME) предусматривает перерыв каждые 76 символов.</p>

<p>Таблица преобразования для символов Base64 выглядит следующим образом.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>5-битные данные</th><th>Base32 символа</th></tr>
		<tr><td>000000</td><td>A</td></tr>
		<tr><td>000001</td><td>B</td></tr>
		<tr><td>000010</td><td>C</td></tr>
		<tr><td>000011</td><td>D</td></tr>
		<tr><td>000100</td><td>E</td></tr>
		<tr><td>000101</td><td>F</td></tr>
		<tr><td>000110</td><td>G</td></tr>
		<tr><td>000111</td><td>H</td></tr>
		<tr><td>001000</td><td>I</td></tr>
		<tr><td>001001</td><td>J</td></tr>
		<tr><td>001010</td><td>K</td></tr>
		<tr><td>001011</td><td>L</td></tr>
		<tr><td>001100</td><td>M</td></tr>
		<tr><td>001101</td><td>N</td></tr>
		<tr><td>001110</td><td>O</td></tr>
		<tr><td>001111</td><td>P</td></tr>
		<tr><td>010000</td><td>Q</td></tr>
		<tr><td>010001</td><td>R</td></tr>
		<tr><td>010010</td><td>S</td></tr>
		<tr><td>010011</td><td>T</td></tr>
		<tr><td>010100</td><td>U</td></tr>
		<tr><td>010101</td><td>V</td></tr>
		<tr><td>010110</td><td>W</td></tr>
		<tr><td>010111</td><td>X</td></tr>
		<tr><td>011000</td><td>Y</td></tr>
		<tr><td>011001</td><td>Z</td></tr>
		<tr><td>011010</td><td>a</td></tr>
		<tr><td>011011</td><td>b</td></tr>
		<tr><td>011100</td><td>c</td></tr>
		<tr><td>011101</td><td>d</td></tr>
		<tr><td>011110</td><td>e</td></tr>
		<tr><td>011111</td><td>f</td></tr>
		<tr><td>100000</td><td>g</td></tr>
		<tr><td>100001</td><td>h</td></tr>
		<tr><td>100010</td><td>i</td></tr>
		<tr><td>100011</td><td>j</td></tr>
		<tr><td>100100</td><td>k</td></tr>
		<tr><td>100101</td><td>l</td></tr>
		<tr><td>100110</td><td>m</td></tr>
		<tr><td>100111</td><td>n</td></tr>
		<tr><td>101000</td><td>o</td></tr>
		<tr><td>101001</td><td>p</td></tr>
		<tr><td>101010</td><td>q</td></tr>
		<tr><td>101011</td><td>r</td></tr>
		<tr><td>101100</td><td>s</td></tr>
		<tr><td>101101</td><td>t</td></tr>
		<tr><td>101110</td><td>u</td></tr>
		<tr><td>101111</td><td>v</td></tr>
		<tr><td>110000</td><td>w</td></tr>
		<tr><td>110001</td><td>x</td></tr>
		<tr><td>110010</td><td>y</td></tr>
		<tr><td>110011</td><td>z</td></tr>
		<tr><td>110100</td><td>0</td></tr>
		<tr><td>110101</td><td>1</td></tr>
		<tr><td>110110</td><td>2</td></tr>
		<tr><td>110111</td><td>3</td></tr>
		<tr><td>111000</td><td>4</td></tr>
		<tr><td>111001</td><td>5</td></tr>
		<tr><td>111010</td><td>6</td></tr>
		<tr><td>111011</td><td>7</td></tr>
		<tr><td>111100</td><td>8</td></tr>
		<tr><td>111101</td><td>9</td></tr>
		<tr><td>111110</td><td>+</td></tr>
		<tr><td>111111</td><td>/</td></tr>
	</table>
</div>

<p>Например, если вы конвертируете «Hello» с помощью Base64, это будет следующим образом.</p>

<p>1. Преобразуйте это в двоичное представление.</p>

<pre>01001000 01100101 01101100 01101100 01101111  (Для US-ASCII / UTF-8)</pre>

<p>2. Разделите на группы по 6 бит. Если последняя группа меньше 6 бит, дополните ее "0" в конце.</p>

<pre>010010 000110 010101 101100 011011 000110 111100</pre>

<p>3. Преобразуйте в символы с помощью таблицы преобразования. Преобразуйте каждые 4 символа, и если оно меньше 4 символов, дополните конец знаком «=».</p>

<pre>SGVs bG8=</pre>

<p>4. Соедините все символы, чтобы получить результат преобразования Base64.</p>

<pre>SGVsbG8=</pre>


<h4>Формат заголовка сообщения электронной почты MIME (RFC 2047)</h4>
<p>DenCode также поддерживает декодирование формата заголовка сообщения MIME (RFC 2047), как показано ниже. Этот формат используется, когда тема, получатель и т. Д. Электронного письма содержат символы, отличные от ASCII.</p>

<pre>Subject: =?UTF-8?B?0L/RgNC40LzQtdGA?=</pre>

<p>Результат после расшифровки следующий.</p>

<pre>Subject: пример</pre>


<h4>JSON Web Token (RFC 7519)</h4>
<p>JSON Web Token (JWT) — это формат токена, который компактно представляет данные JSON с помощью кодирования Base64url. Широко используется для аутентификации и авторизации в веб-приложениях и стандартизирован в RFC 7519.</p>

<p>JWT состоит из трёх элементов, разделённых точками (.).</p>

<pre>&lt;Header&gt;.&lt;Payload&gt;.&lt;Signature&gt;</pre>

<p>Роль каждого элемента следующая.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Элемент</th><th>Описание</th></tr>
		<tr><td>Header</td><td>JSON-объект, содержащий метаданные, такие как тип токена (typ) и алгоритм подписи (alg)</td></tr>
		<tr><td>Payload</td><td>JSON-объект, содержащий информацию, такую как идентификатор пользователя и срок действия</td></tr>
		<tr><td>Signature</td><td>Данные подписи, используемые для обнаружения подделки заголовка и полезной нагрузки</td></tr>
	</table>
</div>

<p>Заголовок и полезная нагрузка кодируются в Base64url. Base64url заменяет «+» на «-» и «/» на «_», а также опускает заполнение «=» по сравнению со стандартным Base64 (RFC 4648). Это позволяет безопасно включать их в URL-адреса и HTTP-заголовки.</p>

<p>Например, декодирование следующего JWT даёт заголовок и полезную нагрузку в формате JSON.</p>

<pre>eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c</pre>

<pre>
{
  "alg": "HS256",
  "typ": "JWT"
}
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
</pre>

<p>Основные поля (утверждения), содержащиеся в заголовке и полезной нагрузке, следующие.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Поле</th><th>Название</th><th>Описание</th></tr>
		<tr><td>alg</td><td>Algorithm</td><td>Алгоритм, используемый для подписи или шифрования (например, HS256, RS256, ES256)</td></tr>
		<tr><td>typ</td><td>Type</td><td>Тип токена (обычно «JWT»)</td></tr>
		<tr><td>cty</td><td>Content Type</td><td>Тип содержимого полезной нагрузки (для вложенных JWT — «JWT»)</td></tr>
		<tr><td>kid</td><td>Key ID</td><td>Идентификатор ключа, используемого для проверки подписи</td></tr>
		<tr><td>jku</td><td>JWK Set URL</td><td>URL набора JWK, используемого для проверки подписи</td></tr>
		<tr><td>x5u</td><td>X.509 URL</td><td>URL цепочки сертификатов X.509, используемой для проверки подписи</td></tr>
		<tr><td>x5t</td><td>X.509 Certificate SHA-1 Thumbprint</td><td>Отпечаток SHA-1 сертификата X.509, используемого для проверки подписи</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>Поле</th><th>Название</th><th>Описание</th></tr>
		<tr><td>iss</td><td>Issuer</td><td>Издатель токена</td></tr>
		<tr><td>sub</td><td>Subject</td><td>Субъект токена (например, идентификатор пользователя)</td></tr>
		<tr><td>aud</td><td>Audience</td><td>Получатель токена</td></tr>
		<tr><td>exp</td><td>Expiration Time</td><td>Срок действия токена (временная метка Unix)</td></tr>
		<tr><td>nbf</td><td>Not Before</td><td>Время, до которого токен недействителен (временная метка Unix)</td></tr>
		<tr><td>iat</td><td>Issued At</td><td>Время выпуска токена (временная метка Unix)</td></tr>
		<tr><td>jti</td><td>JWT ID</td><td>Уникальный идентификатор токена</td></tr>
	</table>
</div>
