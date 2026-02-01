<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Over Base45</h3>
<p>Base45 is een coderingsmethode die gebruikmaakt van 7-bit ASCII-tekens.</p>
<p>In Base45 worden gegevens in groepen van 2 bytes verdeeld en weergegeven door ze om te zetten in 3 ASCII-tekens.</p>

<p>De ASCII-tekens die in Base45 worden gebruikt, zijn als volgt. 2-byte waarden worden behandeld als big-endian unsigned integers, berekend als cijfers in het 45-tallig stelsel (3 cijfers), en het Base45-conversieresultaat wordt verkregen op basis van de volgende ASCII-tekens.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>45-tallig cijfer</th><th>Base45 ASCII-teken</th></tr>
		<tr><td>0</td><td>0</td></tr>
		<tr><td>1</td><td>1</td></tr>
		<tr><td>2</td><td>2</td></tr>
		<tr><td>3</td><td>3</td></tr>
		<tr><td>4</td><td>4</td></tr>
		<tr><td>5</td><td>5</td></tr>
		<tr><td>6</td><td>6</td></tr>
		<tr><td>7</td><td>7</td></tr>
		<tr><td>8</td><td>8</td></tr>
		<tr><td>9</td><td>9</td></tr>
		<tr><td>10</td><td>A</td></tr>
		<tr><td>11</td><td>B</td></tr>
		<tr><td>12</td><td>C</td></tr>
		<tr><td>13</td><td>D</td></tr>
		<tr><td>14</td><td>E</td></tr>
		<tr><td>15</td><td>F</td></tr>
		<tr><td>16</td><td>G</td></tr>
		<tr><td>17</td><td>H</td></tr>
		<tr><td>18</td><td>I</td></tr>
		<tr><td>19</td><td>J</td></tr>
		<tr><td>20</td><td>K</td></tr>
		<tr><td>21</td><td>L</td></tr>
		<tr><td>22</td><td>M</td></tr>
		<tr><td>23</td><td>N</td></tr>
		<tr><td>24</td><td>O</td></tr>
		<tr><td>25</td><td>P</td></tr>
		<tr><td>26</td><td>Q</td></tr>
		<tr><td>27</td><td>R</td></tr>
		<tr><td>28</td><td>S</td></tr>
		<tr><td>29</td><td>T</td></tr>
		<tr><td>30</td><td>U</td></tr>
		<tr><td>31</td><td>V</td></tr>
		<tr><td>32</td><td>W</td></tr>
		<tr><td>33</td><td>X</td></tr>
		<tr><td>34</td><td>Y</td></tr>
		<tr><td>35</td><td>Z</td></tr>
		<tr><td>36</td><td> [SP]</td></tr>
		<tr><td>37</td><td>$</td></tr>
		<tr><td>38</td><td>%</td></tr>
		<tr><td>39</td><td>*</td></tr>
		<tr><td>40</td><td>+</td></tr>
		<tr><td>41</td><td>-</td></tr>
		<tr><td>42</td><td>.</td></tr>
		<tr><td>43</td><td>/</td></tr>
	</table>
</div>

<p>Bijvoorbeeld, het resultaat van het converteren van "Hello" met Base45 is als volgt:</p>

<p>1. Verdeel in groepen van 2 bytes.</p>

<pre>4865<sub>(16)</sub> 6C6C<sub>(16)</sub> 6F<sub>(16)</sub>  (He ll o)</pre>

<p>2. Behandel elke 2 bytes als een big-endian unsigned integer en converteer de waarde naar cijfers in het 45-tallig stelsel (3 cijfers). Als het laatste deel 1 byte is, converteer dan naar 2 cijfers in het 45-tallig stelsel.</p>

<pre>4865<sub>(16)</sub>
= 18533<sub>(10)</sub>
= <b>9</b> * 45<sup>2</sup> + <b>6</b> * 45 + <b>38</b></pre>

<pre>6C6C<sub>(16)</sub>
= 27756<sub>(10)</sub>
= <b>13</b> * 45<sup>2</sup> + <b>31</b> * 45 + <b>36</b></pre>

<pre>6F<sub>(16)</sub>
= 111<sub>(10)</sub>
= <b>2</b> * 45 + <b>21</b></pre>

<p>3. Converteer elk cijfer van het 45-tallig stelsel in omgekeerde volgorde naar een ASCII-teken.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>45-tallig cijfer</th><td>38</td><td>6</td><td>9</td><td></td><td>36</td><td>31</td><td>13</td><td></td><td>21</td><td>2</td></tr>
		<tr><th>Base45 ASCII-teken</th><td>%</td><td>6</td><td>9</td><td></td><td> [SP]</td><td>V</td><td>D</td><td></td><td>L</td><td>2</td></tr>
	</table>
</div>

<p>4. Verbind alle tekens om het resultaat van de Base45-conversie te vormen.</p>

<pre>%69 VDL2</pre>

<h3>Over Base45/Zlib/COSE/CBOR</h3>
<p>Base45/Zlib/COSE/CBOR zijn gegevens in CBOR-formaat die zijn ondertekend in COSE-formaat, vervolgens gecomprimeerd in Zlib-formaat en geconverteerd naar Base45-formaat.</p>
<p>Het wordt gebruikt als gegevensformaat voor de QR-code van <a href="https://ec.europa.eu/info/live-work-travel-eu/coronavirus-response/safe-covid-19-vaccines-europeans/eu-digital-covid-certificate_en" target="_blank">EUDCC (EU Digital COVID Certificate)</a>. EUDCC is het gemeenschappelijke formaat voor vaccinatiebewijzen voor COVID-19 in de EU, ook wel DGC (EU Digital Green Certificate) of Green Pass genoemd.</p>
<p>DenCode ondersteunt alleen decodering en het resultaat wordt weergegeven in JSON-formaat. De geldigheid van de handtekening wordt niet geverifieerd.</p>
