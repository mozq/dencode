<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Konwersja stylizowanego tekstu Unicode</h3>
<p>Konwersja stylizowanego tekstu Unicode zastępuje litery łacińskie i cyfry dekoracyjnymi znakami Unicode. Pozwala tworzyć tekst przypominający pogrubienie, kursywę, pismo odręczne, Fraktur, podwójny kontur, tekst o stałej szerokości, kapitaliki i inne style.</p>
<p>Ta konwersja nie zmienia ustawienia czcionki w CSS ani w dokumencie. Zamiast tego zastępuje litery ASCII (A-Z, a-z) i cyfry (0-9) odpowiednimi znakami Unicode. Jeśli dany styl nie ma odpowiadającego znaku, znak pozostaje bez zmian.</p>

<p>Na przykład po konwersji „Hello, world! 123” do stylu pisma odręcznego wynik wygląda następująco.</p>

<pre>ℋℯ𝓁𝓁ℴ, 𝓌ℴ𝓇𝓁𝒹! 123</pre>

<p>W tym przykładzie litery są zastępowane znakami Unicode przypominającymi pismo odręczne, a przecinek, spacja, wykrzyknik i cyfry pozostają bez zmian.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Styl</th><th scope="col">Przykład konwersji dla „ABC abc 123”</th><th scope="col">Opis</th></tr>
		<tr><td>Sans-serif</td><td><code>𝖠𝖡𝖢 𝖺𝖻𝖼 𝟣𝟤𝟥</code></td><td>Znaki w stylu sans-serif.</td></tr>
		<tr><td>Sans-serif bold</td><td><code>𝗔𝗕𝗖 𝗮𝗯𝗰 𝟭𝟮𝟯</code></td><td>Pogrubione znaki w stylu sans-serif.</td></tr>
		<tr><td>Sans-serif italic</td><td><code>𝘈𝘉𝘊 𝘢𝘣𝘤 123</code></td><td>Kursywa w stylu sans-serif. Cyfry nie są konwertowane.</td></tr>
		<tr><td>Serif bold</td><td><code>𝐀𝐁𝐂 𝐚𝐛𝐜 𝟏𝟐𝟑</code></td><td>Pogrubione znaki w stylu serif.</td></tr>
		<tr><td>Serif italic</td><td><code>𝐴𝐵𝐶 𝑎𝑏𝑐 123</code></td><td>Kursywa w stylu serif. Cyfry nie są konwertowane.</td></tr>
		<tr><td>Script</td><td><code>𝒜ℬ𝒞 𝒶𝒷𝒸 123</code></td><td>Znaki w stylu pisma odręcznego. Cyfry nie są konwertowane.</td></tr>
		<tr><td>Fraktur</td><td><code>𝔄𝔅ℭ 𝔞𝔟𝔠 123</code></td><td>Znaki w stylu Fraktur. Cyfry nie są konwertowane.</td></tr>
		<tr><td>Double Struck</td><td><code>𝔸𝔹ℂ 𝕒𝕓𝕔 𝟙𝟚𝟛</code></td><td>Znaki z podwójnym konturem.</td></tr>
		<tr><td>Monospace</td><td><code>𝙰𝙱𝙲 𝚊𝚋𝚌 𝟷𝟸𝟹</code></td><td>Znaki w stylu monospace.</td></tr>
		<tr><td>Small Capital</td><td><code>ABC ᴀʙᴄ 123</code></td><td>Znaki przypominające kapitaliki. Konwertowane są tylko małe litery.</td></tr>
		<tr><td>Circled</td><td><code>ⒶⒷⒸ ⓐⓑⓒ ①②③</code></td><td>Litery i cyfry w kółkach.</td></tr>
		<tr><td>Negative Circled</td><td><code>🅐🅑🅒 🅐🅑🅒 ❶❷❸</code></td><td>Litery i cyfry w odwróconych kółkach. Małe litery są konwertowane na wielkie litery.</td></tr>
		<tr><td>Squared</td><td><code>🄰🄱🄲 🄰🄱🄲 123</code></td><td>Litery w kwadratach. Małe litery są konwertowane na wielkie litery. Cyfry nie są konwertowane.</td></tr>
		<tr><td>Negative Squared</td><td><code>🅰🅱🅲 🅰🅱🅲 123</code></td><td>Litery w odwróconych kwadratach. Małe litery są konwertowane na wielkie litery. Cyfry nie są konwertowane.</td></tr>
	</table>
</div>

<p>Znaki po konwersji są innymi znakami Unicode niż zwykłe litery i cyfry. Dlatego podczas wyszukiwania, kopiowania, odczytu głosowego i porównywania w programach są traktowane jako inne znaki, nawet jeśli wyglądają podobnie.</p>
<p>Jeśli czcionka w danym środowisku nie obsługuje części znaków, mogą one być wyświetlane jako kwadraty albo puste miejsca. Sprawdzają się w postach w mediach społecznościowych i krótkich tekstach dekoracyjnych, ale w identyfikatorach, URL-ach, adresach e-mail i tekstach przeznaczonych do wyszukiwania lepiej używać zwykłych liter i cyfr.</p>
