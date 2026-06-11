<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over regels sorteren</h3>
<p>Regels sorteren herschikt tekst met meerdere regels, regel voor regel. De ingevoerde regels kunnen oplopend, aflopend of in omgekeerde volgorde worden gezet.</p>
<p>Bij oplopend en aflopend sorteren wordt elke volledige regel vergeleken als Unicode-tekenreeks. Bij omgekeerde volgorde blijft de tekst in elke regel gelijk; alleen de volgorde van de regels wordt van boven naar beneden omgedraaid.</p>

<p>Als de volgende tekst bijvoorbeeld oplopend wordt gesorteerd:</p>

<pre>
banana
apple
orange
</pre>

<p>Het resultaat is:</p>

<pre>
apple
banana
orange
</pre>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Volgorde</th><th scope="col">Beschrijving</th><th scope="col">Conversievoorbeeld</th></tr>
		<tr><td>Oplopend</td><td>Sorteert de regels van kleinere naar grotere Unicode-tekenreekswaarde.</td><td><code>apple</code>, <code>banana</code>, <code>orange</code></td></tr>
		<tr><td>Aflopend</td><td>Sorteert de regels van grotere naar kleinere Unicode-tekenreekswaarde.</td><td><code>orange</code>, <code>banana</code>, <code>apple</code></td></tr>
		<tr><td>Omgekeerd</td><td>Keert de volgorde van de ingevoerde regels om.</td><td><code>orange</code>, <code>apple</code>, <code>banana</code></td></tr>
	</table>
</div>

<p>Hoofdletters, kleine letters, cijfers, symbolen en niet-Latijnse tekens worden als Unicode-tekens vergeleken. De sortering is dus gebaseerd op tekenreeksvergelijking, niet op de woordenboekvolgorde van een natuurlijke taal of op numerieke waarde.</p>
