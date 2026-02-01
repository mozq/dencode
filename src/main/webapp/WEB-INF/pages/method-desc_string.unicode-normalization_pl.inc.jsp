<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>O Normalizacji Unicode</h3>
<p>Normalizacja Unicode to proces rozkładu (dekompozycji) i składania (kompozycji) znaków. W Unicode ten sam znak może być reprezentowany na różne sposoby. Np. „â” może być jednym kodem (U+00E2) lub sekwencją „a” (U+0061) + „ ̂” (U+0302).</p>
<p>Dostępne są następujące formy normalizacji:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Forma</th><th scope="col">Opis</th><th scope="col">Przykład</th></tr>
		<tr><td>Normalization Form D (NFD)</td><td>Rozkład kanoniczny</td><td>„â”(U+00E2) -&gt; „a”(U+0061) + „ ̂”(U+0302)</td></tr>
		<tr><td>Normalization Form KD (NFKD)</td><td>Rozkład kompatybilności</td><td>„ﬁ”(U+FB01) -&gt; „f”(U+0066) + 「i」(U+0069)</td></tr>
		<tr><td>Normalization Form C (NFC)</td><td>Rozkład kanoniczny, następnie złożenie kanoniczne</td><td>„â”(U+00E2) -&gt; ... -&gt; „â”(U+00E2)</td></tr>
		<tr><td>Normalization Form KC (NFKC)</td><td>Rozkład kompatybilności, następnie złożenie kanoniczne</td><td>„ﬁ”(U+FB01) -&gt; ... -&gt; „f”(U+0066) + „i”(U+0069)</td></tr>
	</table>
</div>

<p>Równoważność kanoniczna dotyczy znaków, które są wizualnie i funkcjonalnie identyczne.</p>
<p>Równoważność kompatybilności dotyczy znaków, które mogą różnić się wizualnie lub semantycznie, ale reprezentują ten sam znak podstawowy (np. ligatury).</p>
