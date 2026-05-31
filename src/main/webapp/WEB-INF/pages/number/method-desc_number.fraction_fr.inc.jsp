<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos des fractions</h3>
<p>Les fractions représentent les nombres sous la forme « numérateur/dénominateur » comme le rapport (quotient) du numérateur et du dénominateur.</p>

<p>Dans DenCode, le nombre saisi (entier ou décimal) est converti en une fraction irréductible (une fraction qui ne peut plus être simplifiée).</p>

<p>Les exemples de conversion de fractions sont les suivants.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Décimal (Entrée)</th><th>Fraction (Sortie)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0</td><td class="text-right">0/1</td></tr>
			<tr><td class="text-right">1</td><td class="text-right">1/1</td></tr>
			<tr><td class="text-right">2</td><td class="text-right">2/1</td></tr>
			<tr><td class="text-right">0.5</td><td class="text-right">1/2</td></tr>
			<tr><td class="text-right">0.75</td><td class="text-right">3/4</td></tr>
			<tr><td class="text-right">1.2</td><td class="text-right">6/5</td></tr>
			<tr><td class="text-right">-0.125</td><td class="text-right">-1/8</td></tr>
			<tr><td class="text-right">1234.5</td><td class="text-right">2469/2</td></tr>
		</tbody>
	</table>
</div>

<p>Un nombre décimal se terminant par « ... » est interprété comme un « nombre tronqué » et est converti selon les règles suivantes :</p>
<ul>
	<li><strong>S'il y a un motif répétitif (décimal périodique) :</strong> Le motif répétitif dans la partie décimale (période) est automatiquement détecté et converti en sa représentation fractionnaire exacte.</li>
	<li><strong>S'il n'y a pas de motif répétitif :</strong> Il est converti en une fraction sous forme de décimal fini basé sur le nombre de chiffres saisis.</li>
</ul>

<p>Les exemples de conversion pour les nombres décimaux se terminant par « ... » sont les suivants.</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>Décimal (Entrée)</th><th>Fraction (Sortie)</th></tr>
		</thead>
		<tbody>
			<tr><td class="text-right">0.333...</td><td class="text-right">1/3</td></tr>
			<tr><td class="text-right">0.142857142857...</td><td class="text-right">1/7</td></tr>
			<tr><td class="text-right">0.123...</td><td class="text-right">123/1000</td></tr>
		</tbody>
	</table>
</div>
