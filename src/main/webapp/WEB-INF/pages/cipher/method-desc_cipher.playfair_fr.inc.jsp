<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>À propos du chiffre de Playfair</h3>
<p>Le chiffre de Playfair est un chiffre par substitution qui remplace les lettres deux par deux à l'aide d'une table de lettres 5×5.</p>

<p>Par exemple, avec la clé "SECRET" et le texte clair "HELLO", le chiffrement est le suivant.</p>

<pre>
Texte clair : HELLO
Texte chiffré : ISKYIQ
</pre>

<p>Pour chiffrer, on commence par diviser le texte clair en paires de lettres. Si une paire contient deux lettres identiques, comme "LL", on insère la lettre auxiliaire "X" entre elles. S'il reste une seule lettre à la fin, on ajoute également un "X".</p>

<pre>
HE L<b>X</b> LO
</pre>

<p>On prépare ensuite une table de chiffrement 5×5, soit 25 cases. Comme l'alphabet contient 26 lettres, on place généralement "I=J" dans la même case.</p>
<p>On écrit d'abord les lettres de la clé dans la table en supprimant les doublons. Avec la clé "SECRET", le deuxième "E" n'est pas écrit. On ajoute ensuite "ABCDEFGHIKLMNOPQRSTUVWXYZ", en ignorant là aussi les lettres déjà présentes dans la clé. On obtient ainsi une table 5×5 sans lettres en double.</p>

<pre>
S E C R T
A B D F G
H I K L M
N O P Q U
V W X Y Z
</pre>

<p>Avec cette table, chaque paire de lettres est chiffrée selon les règles suivantes. La méthode dépend de la position relative des deux lettres dans la table.</p>

<ul>
	<li>Sur la même ligne : chaque lettre est remplacée par celle située à sa droite. À l'extrémité droite, on revient au début de la ligne.</li>
	<li>Dans la même colonne : chaque lettre est remplacée par celle située en dessous. En bas de la colonne, on revient en haut.</li>
	<li>Sur des lignes et colonnes différentes : imaginez un rectangle dont les deux lettres sont des angles, puis remplacez-les par les lettres situées aux deux autres angles.</li>
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

<p>Pour le déchiffrement, le texte chiffré est traité deux lettres par deux avec la même table. Notez que la lettre auxiliaire "X" n'est pas supprimée automatiquement.</p>

<pre>
Texte chiffré : ISKYIQ
Texte clair   : HEL<strong>X</strong>LO
</pre>
