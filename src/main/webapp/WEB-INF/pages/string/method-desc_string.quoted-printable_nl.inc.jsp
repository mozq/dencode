<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Quoted-printable</h3>
<p>Quoted-printable is een coderingsmethode die gebruikmaakt van 7-bit ASCII-tekens. Het wordt gebruikt in e-mail om 8-bit gegevens over te dragen via een 7-bit gegevenspad.</p>
<p>In Quoted-printable worden 8-bit gegevens weergegeven in een formaat van 2 hexadecimale cijfers zoals =XX. Bijvoorbeeld, "あ" wordt "=E3=81=82" in UTF-8. 7-bit afdrukbare tekens zoals "A" worden niet geconverteerd.</p>


<h4>MIME-berichtenkoptekstformaat (RFC 2047) voor e-mail</h4>
<p>DenCode ondersteunt ook het decoderen van het volgende MIME-berichtenkoptekstformaat (RFC 2047). Dit formaat wordt gebruikt wanneer het onderwerp of het adres van een e-mail niet-ASCII-tekens bevat.</p>

<pre>Subject: =?UTF-8?Q?=E3=82=B5=E3=83=B3=E3=83=97=E3=83=AB?=</pre>

<p>Het resultaat na decodering is als volgt:</p>

<pre>Subject: サンプル</pre>
