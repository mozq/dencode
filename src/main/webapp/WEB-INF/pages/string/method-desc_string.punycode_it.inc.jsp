<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Punycode IDN</h3>
<p>Punycode è un metodo di codifica che rappresenta stringhe Unicode usando solo caratteri ASCII. Viene usato soprattutto per convertire nomi di dominio internazionalizzati (IDN), ad esempio con caratteri giapponesi, cinesi, coreani o lettere latine accentate, in una forma ASCII gestibile dal DNS.</p>
<p>In un nome di dominio internazionalizzato, ogni etichetta del dominio viene convertita con Punycode e all’etichetta convertita viene aggiunto il prefisso <code>xn--</code>. Questa forma ASCII è chiamata A-label; la forma Unicode originale è chiamata U-label.</p>

<p>Ad esempio, convertendo “ドメイン.com” in Punycode IDN si ottiene quanto segue.</p>

<pre>xn--eckwd4c7c.com</pre>

<p>In questo esempio, il dominio di primo livello <code>com</code> contiene solo caratteri ASCII e rimane invariato; solo l’etichetta “ドメイン” viene convertita in <code>xn--eckwd4c7c</code>.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Forma Unicode</th><th scope="col">Forma Punycode IDN</th><th scope="col">Descrizione</th></tr>
		<tr><td><code>ドメイン.com</code></td><td><code>xn--eckwd4c7c.com</code></td><td>Nome di dominio con caratteri giapponesi.</td></tr>
		<tr><td><code>例え.テスト</code></td><td><code>xn--r8jz45g.xn--zckzah</code></td><td>Ogni etichetta viene convertita separatamente.</td></tr>
		<tr><td><code>bücher.example</code></td><td><code>xn--bcher-kva.example</code></td><td>Esempio con una lettera latina accentata.</td></tr>
	</table>
</div>

<p>Punycode IDN è diverso dalla codifica URL. La codifica URL rappresenta i caratteri all’interno di un URL come sequenze di byte, ad esempio <code>%E3%81%82</code>. Punycode IDN invece converte le etichette del nome di dominio in etichette ASCII che iniziano con <code>xn--</code>.</p>

<h4>Conversione per etichetta del dominio</h4>
<p>Un nome di dominio è composto da etichette separate da punti (<code>.</code>). Punycode IDN non converte l’intero nome di dominio come un’unica stringa, ma converte ogni etichetta separatamente.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Etichetta</th><th scope="col">Risultato della conversione</th></tr>
		<tr><td><code>例え</code></td><td><code>xn--r8jz45g</code></td></tr>
		<tr><td><code>テスト</code></td><td><code>xn--zckzah</code></td></tr>
	</table>
</div>

<p>Per questo, <code>例え.テスト</code> diventa <code>xn--r8jz45g.xn--zckzah</code>.</p>
