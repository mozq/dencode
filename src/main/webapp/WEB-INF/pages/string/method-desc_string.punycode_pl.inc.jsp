<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDN</h3>
<p>Punycode to metoda kodowania, która pozwala zapisać ciągi Unicode wyłącznie za pomocą znaków ASCII. Najczęściej służy do konwersji umiędzynarodowionych nazw domen (IDN), na przykład zawierających znaki japońskie, chińskie, koreańskie lub litery łacińskie ze znakami diakrytycznymi, do postaci ASCII obsługiwanej przez DNS.</p>
<p>W umiędzynarodowionej nazwie domeny każda etykieta domeny jest konwertowana za pomocą Punycode, a do przekonwertowanej etykiety dodawany jest prefiks <code>xn--</code>. Taka postać ASCII nazywa się A-label, a pierwotna postać Unicode — U-label.</p>

<p>Na przykład konwersja „ドメイン.com” do Punycode IDN daje następujący wynik.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>W tym przykładzie domena najwyższego poziomu <code>com</code> zawiera tylko znaki ASCII i pozostaje bez zmian. Konwertowana jest tylko etykieta „ドメイン”, do postaci <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Postać Unicode</th><th scope="col">Postać Punycode IDN</th><th scope="col">Opis</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nazwa domeny zawierająca znaki japońskie.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Każda etykieta jest konwertowana osobno.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Przykład z łacińską literą ze znakiem diakrytycznym.</td></tr>
	</table>
</div>

<p>Punycode IDN to inny mechanizm niż kodowanie URL. Kodowanie URL zapisuje znaki w adresie URL jako sekwencje bajtów, na przykład <code>%E3%81%82</code>. Punycode IDN konwertuje natomiast etykiety nazwy domeny na etykiety ASCII zaczynające się od <code>xn--</code>.</p>

<h4>Konwersja etykiet domeny</h4>
<p>Nazwa domeny składa się z etykiet oddzielonych kropkami (<code>.</code>). Punycode IDN nie konwertuje całej nazwy domeny jako jednego ciągu; każda etykieta jest przetwarzana osobno.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Etykieta</th><th scope="col">Wynik konwersji</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Dlatego <code>例え.テスト</code> jest konwertowane do <code>xn--r8jz45g.xn--zckzah</code>.</p>
