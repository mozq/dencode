<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Sobre o Braille</h3>
<p>
O Braille é um sistema de escrita tátil de pontos em relevo, concebido para ser lido pelas pontas dos dedos de pessoas cegas ou com deficiência visual.
Representa um caractere ou símbolo através da combinação de 6 pontos organizados em 3 linhas e 2 colunas (Braille de 6 pontos).
Este sistema é utilizado globalmente e as regras de atribuição de pontos variam consoante o idioma.
</p>


<h3>Braille em Inglês (UEB Grau 1)</h3>
<p>
Esta ferramenta permite a conversão com base no Grau 1 (Braille integral: método de soletração letra a letra) do "Unified English Braille (UEB)", utilizado como norma nos países falantes da língua inglesa. As formas abreviadas (Grau 2) não são suportadas.
</p>

<p>Exemplo de conversão:</p>
<pre>
"Hello, world!"
⠦⠠⠓⠑⠇⠇⠕⠂⠀⠺⠕⠗⠇⠙⠖⠴
</pre>

<h4>Alfabeto</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>a</th><td>⠁</td><th>b</th><td>⠃</td><th>c</th><td>⠉</td><th>d</th><td>⠙</td><th>e</th><td>⠑</td></tr>
		<tr><th>f</th><td>⠋</td><th>g</th><td>⠛</td><th>h</th><td>⠓</td><th>i</th><td>⠊</td><th>j</th><td>⠚</td></tr>
		<tr><th>k</th><td>⠅</td><th>l</th><td>⠇</td><th>m</th><td>⠍</td><th>n</th><td>⠝</td><th>o</th><td>⠕</td></tr>
		<tr><th>p</th><td>⠏</td><th>q</th><td>⠟</td><th>r</th><td>⠗</td><th>s</th><td>⠎</td><th>t</th><td>⠞</td></tr>
		<tr><th>u</th><td>⠥</td><th>v</th><td>⠧</td><th>w</th><td>⠺</td><th>x</th><td>⠭</td><th>y</th><td>⠽</td></tr>
		<tr><th>z</th><td>⠵</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<p>
Para letras maiúsculas, o indicador de maiúscula (<code>⠠</code>) é colocado antes da letra.
Além disso, no caso de maiúsculas consecutivas, um "indicador de palavra em maiúsculas (<code>⠠⠠</code>)" define a palavra inteira com maiúsculas; o "indicador de passagem em maiúsculas (<code>⠠⠠⠠</code>)" para várias palavras; e utiliza-se o "terminador de maiúsculas (<code>⠠⠄</code>)" no final da sua aplicação.
</p>

<h4>Números</h4>
<p>
Os números são representados precedidos por um sinal de número (<code>⠼</code>). Os caracteres que se lhe seguem serão processados como dígitos, pedindo emprestada a representação braille das letras de 'a' a 'j'.
</p>
<div class="table-responsive">
	<table class="table">
		<tr><th>Sinal Numérico</th><td>⠼</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>1</th><td>⠁</td><th>2</th><td>⠃</td><th>3</th><td>⠉</td><th>4</th><td>⠙</td><th>5</th><td>⠑</td></tr>
		<tr><th>6</th><td>⠋</td><th>7</th><td>⠛</td><th>8</th><td>⠓</td><th>9</th><td>⠊</td><th>0</th><td>⠚</td></tr>
	</table>
</div>
<p>
Se uma minúscula de 'a' a 'j' surgir imediatamente depois dum número, insere-se um indicador de Grau 1 (<code>⠰</code>) para prevenir qualquer confusão para com os algarismos.
</p>

<h4>Símbolos Principais</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>, (Vírgula)</th><td>⠂</td><th>. (Ponto Final)</th><td>⠲</td><th>! (Ponto de Exclamação)</th><td>⠖</td><th>? (Ponto de Interrogação)</th><td>⠦</td></tr>
		<tr><th>' (Apóstrofo)</th><td>⠄</td><th>- (Hífen)</th><td>⠤</td><th>; (Ponto e Vírgula)</th><td>⠆</td><th>: (Dois Pontos)</th><td>⠒</td></tr>
	</table>
</div>

<h4>Aspas e Parênteses</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>" *** " (Aspas Duplas Habituais)</th><td>⠦ *** ⠴</td><th>' *** ' (Aspas Simples Habituais)</th><td>⠠⠦ *** ⠠⠴</td></tr>
		<tr><th>“ *** ” (Aspas Duplas Direcionais)</th><td>⠘⠦ *** ⠘⠴</td><th>‘ *** ’ (Aspas Simples Direcionais)</th><td>⠠⠘⠦ *** ⠠⠘⠴</td></tr>
		<tr><th>« *** » (Aspas Angulares/Guillemets)</th><td>⠨⠦ *** ⠨⠴</td><th>&lt; *** &gt; (Parênteses Angulares)</th><td>⠈⠣ *** ⠈⠜</td></tr>
		<tr><th>( *** ) (Parênteses Curvos)</th><td>⠐⠣ *** ⠐⠜</td><th>[ *** ] (Parênteses Retos)</th><td>⠨⠣ *** ⠨⠜</td></tr>
		<tr><th>{ *** } (Chavetas)</th><td>⠸⠣ *** ⠸⠜</td><th></th><td></td></tr>
	</table>
</div>


<h3>Braille Japonês</h3>
<p>
O Braille nipónico escreve-se transpondo, em primeiro lugar, a frase para 'kana' (silabário fonético japonês) e depois convertendo-o para sinais braille.
</p>

<p>Exemplo de conversão:</p>
<pre>
"コンニチワ、セカイ！"
⠤⠪⠴⠇⠗⠄⠰⠀⠻⠡⠃⠖⠤
</pre>

<h4>Kana</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>ア</th><td>⠁</td><th>イ</th><td>⠃</td><th>ウ</th><td>⠉</td><th>エ</th><td>⠋</td><th>オ</th><td>⠊</td></tr>
		<tr><th>カ</th><td>⠡</td><th>キ</th><td>⠣</td><th>ク</th><td>⠩</td><th>ケ</th><td>⠫</td><th>コ</th><td>⠪</td></tr>
		<tr><th>サ</th><td>⠱</td><th>シ</th><td>⠳</td><th>ス</th><td>⠹</td><th>セ</th><td>⠻</td><th>ソ</th><td>⠺</td></tr>
		<tr><th>タ</th><td>⠕</td><th>チ</th><td>⠗</td><th>ツ</th><td>⠝</td><th>テ</th><td>⠟</td><th>ト</th><td>⠞</td></tr>
		<tr><th>ナ</th><td>⠅</td><th>ニ</th><td>⠇</td><th>ヌ</th><td>⠍</td><th>ネ</th><td>⠏</td><th>ノ</th><td>⠎</td></tr>
		<tr><th>ハ</th><td>⠥</td><th>ヒ</th><td>⠧</td><th>フ</th><td>⠭</td><th>ヘ</th><td>⠯</td><th>ホ</th><td>⠮</td></tr>
		<tr><th>マ</th><td>⠵</td><th>ミ</th><td>⠷</td><th>ム</th><td>⠽</td><th>メ</th><td>⠿</td><th>モ</th><td>⠾</td></tr>
		<tr><th>ヤ</th><td>⠌</td><th></th><td></td><th>ユ</th><td>⠬</td><th></th><td></td><th>ヨ</th><td>⠜</td></tr>
		<tr><th>ラ</th><td>⠑</td><th>リ</th><td>⠓</td><th>ル</th><td>⠙</td><th>レ</th><td>⠛</td><th>ロ</th><td>⠚</td></tr>
		<tr><th>ワ</th><td>⠄</td><th>ヰ</th><td>⠆</td><th></th><td></td><th>ヱ</th><td>⠖</td><th>ヲ</th><td>⠔</td></tr>
		<tr><th>ン</th><td>⠴</td><th></th><td></td><th></th><td></td><th></th><td></td><th></th><td></td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ッ (Sokuon)</th><td>⠂</td><th>ー (Chōon)</th><td>⠒</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>ガ</th><td>⠐⠡</td><th>ギ</th><td>⠐⠣</td><th>グ</th><td>⠐⠩</td><th>ゲ</th><td>⠐⠫</td><th>ゴ</th><td>⠐⠪</td></tr>
		<tr><th>ザ</th><td>⠐⠱</td><th>ジ</th><td>⠐⠳</td><th>ズ</th><td>⠐⠹</td><th>ゼ</th><td>⠐⠻</td><th>ゾ</th><td>⠐⠺</td></tr>
		<tr><th>ダ</th><td>⠐⠕</td><th>ヂ</th><td>⠐⠗</td><th>ヅ</th><td>⠐⠝</td><th>デ</th><td>⠐⠟</td><th>ド</th><td>⠐⠞</td></tr>
		<tr><th>バ</th><td>⠐⠥</td><th>ビ</th><td>⠐⠧</td><th>ブ</th><td>⠐⠭</td><th>ベ</th><td>⠐⠯</td><th>ボ</th><td>⠐⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>パ</th><td>⠠⠥</td><th>ピ</th><td>⠠⠧</td><th>プ</th><td>⠠⠭</td><th>ペ</th><td>⠠⠯</td><th>ポ</th><td>⠠⠮</td></tr>
	</table>
</div>

<div class="table-responsive">
	<table class="table">
		<tr><th>キャ</th><td>⠈⠡</td><th>キュ</th><td>⠈⠩</td><th>キョ</th><td>⠈⠪</td></tr>
		<tr><th>シャ</th><td>⠈⠱</td><th>シュ</th><td>⠈⠹</td><th>ショ</th><td>⠈⠺</td></tr>
		<tr><th>チャ</th><td>⠈⠕</td><th>チュ</th><td>⠈⠝</td><th>チョ</th><td>⠈⠞</td></tr>
		<tr><th>ニャ</th><td>⠈⠅</td><th>ニュ</th><td>⠈⠍</td><th>ニョ</th><td>⠈⠎</td></tr>
		<tr><th>ヒャ</th><td>⠈⠥</td><th>ヒュ</th><td>⠈⠭</td><th>ヒョ</th><td>⠈⠮</td></tr>
		<tr><th>ミャ</th><td>⠈⠵</td><th>ミュ</th><td>⠈⠽</td><th>ミョ</th><td>⠈⠾</td></tr>
		<tr><th>リャ</th><td>⠈⠑</td><th>リュ</th><td>⠈⠙</td><th>リョ</th><td>⠈⠚</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ギャ</th><td>⠘⠡</td><th>ギュ</th><td>⠘⠩</td><th>ギョ</th><td>⠘⠪</td></tr>
		<tr><th>ジャ</th><td>⠘⠱</td><th>ジュ</th><td>⠘⠹</td><th>ジョ</th><td>⠘⠺</td></tr>
		<tr><th>ヂャ</th><td>⠘⠕</td><th>ヂュ</th><td>⠘⠝</td><th>ヂョ</th><td>⠘⠞</td></tr>
		<tr><th>ビャ</th><td>⠘⠥</td><th>ビュ</th><td>⠘⠭</td><th>ビョ</th><td>⠘⠮</td></tr>
	</table>
</div>
<div class="table-responsive">
	<table class="table">
		<tr><th>ピャ</th><td>⠨⠥</td><th>ピュ</th><td>⠨⠭</td><th>ピョ</th><td>⠨⠮</td></tr>
	</table>
</div>

<h4>Símbolos Principais</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>、 (Vírgula Japonesa)</th><td>⠰</td><th>。 (Ponto Japonês)</th><td>⠲</td><th>？ (Ponto de Interrogação)</th><td>⠢</td><th>！ (Ponto de Exclamação)</th><td>⠖</td></tr>
		<tr><th>・ (Ponto Mediano)</th><td>⠐</td><th>〜 (Linha Ondulada)</th><td>⠤⠤</td><th>＆ (E Comercial)</th><td>⠰⠯</td><th>％ (Sinal de Percentagem)</th><td>⠰⠏</td></tr>
	</table>
</div>

<h4>Aspas e Parênteses</h4>
<div class="table-responsive">
	<table class="table">
		<tr><th>「 *** 」 (Aspas Simples Japon.)</th><td>⠤ *** ⠤</td><th>『 *** 』 (Aspas Duplas Japon.)</th><td>⠰⠤ *** ⠤⠆</td></tr>
		<tr><th>（ *** ） (Parênteses Curvos Largos)</th><td>⠶ *** ⠶</td><th>｟ *** ｠ (Parênteses Curvos Duplos)</th><td>⠰⠶ *** ⠶⠆</td></tr>
	</table>
</div>

<h4>Alfabeto Estrangeiro</h4>
<p>
Quando o alfabeto inglês ou outro idioma estrangeiro se entrelaça no texto em nipónico, é embutida a marca de idioma exterior (<code>⠰</code>) precisamente à frente da letra em questão, sendo-lhe antecedido do respetivo braille formatado em UEB.
</p>

<h4>Números</h4>
<p>
As convenções obedecem aos preceitos patentes no Braille em Inglês.
</p>

<h4>Separação de Palavras (Wakachigaki)</h4>
<p>
O DenCode absteve-se da intercalação orgânica instantânea nas formatações de lexemas correntes japoneses, ou seja, compila a sequência fornecida pura como digitada. Encoraja-se imperiosamente à insersão antecedida de espaçamento no texto originário, de modo a alcançar minuciosa retidão ao nível do deciframento braille neste idioma (Wakachigaki).
</p>


<h3>Historial Primitivo do Braille</h3>
<p>
A padronização contemporânea de 6 pontos do braille viu a sua precursão em 1825 sob as hostes criativas de um francês apelidado Louis Braille.
Braille, despojado da lucidez visual decorrente dum infortúnio acidental ao longo de infanto, cimentou e aprimorou o enquadramento do sistema atingindo excentricamente a idade de quinze anos.
Sistemas rudimentares antecedentes almejando pessoas visuais defecientes dependiam invariavelmente da proeminência física a papéis assentes nos caracteres de abecedário tipicamente tidos, provando-se tortuosamente penosos não raras as vezes aquando lidando com atos leitivos assim tanto exarvando escrições manuais.
O avanço revolucionário ditado pelos 6 pontos facultou todavia um escanear veloz nos flancros ungueais, emparelhado ao registo escrito pragmático desprovidos constrangimentos suportando engenhos delineamente orientados para a causa. E correntemente, o simples vocábulo «Braille» ascendeu aos píncaros e popularizou-se em escala ubíqua perfazendo sinónimo intrínseco aos aspetos inerentes de «escrita pontuada».
</p>
<p>
Sobre o Japão, a análise e diálogo em prol do advento da codificação braille avistou génese à época remetida da designada Era Meiji.
No decurso de 1890 (Meiji 23), a edificação e preceitos basilares atestados pela ramificação nativa (em seis pontos), sob pilar na tábua canônica 'kana' tal e qual a utilizamos perenemente, conheceram lapidação final sob supervisão de Kuraji Ishikawa – notável catedrático da então designada Academia para Cegos de Tóquio.
Atualmente, enraizou-se o ato alusivo ao estatuído «Dia de Braille» para os panoramas territoriais da pátria do sul nascente enredando em memória do dia 1 de novembro (quando a norma engendrada pelo próprio viera a obter consagração e assento formal).
</p>

<h3>Trajetória da matriz em inglês e implantação UEB</h3>
<p>
As comunidades e repúblicas englobando falantes ativos do idioma inglês persistenciaram prolongadamente submissas em usar normativos autóctones braille discrepando mutuamente, acasalados ao reduto limiar ou nação.
À guisa de clarificação imediata, operava em dominações estadunidenses a bitola rotulada por 'English Braille, American Edition' (EBAE), ao reverso que no limiar soberanista grão-britânico o regimento 'Standard English Braille' (SEB) dominava como régua fundamental. Ainda circundados pelo vernáculo anglófano nativo, esbarrariam ocasionalmente em colisões assentes nos simbolismos, quer nos caracteres contraídos, revelando dissenso tangível.
Indubitavelmente além destas cisões colaterais, sistemas pontilhistas de raiz matemática e científica (ex. Nemeth Code) bem como à margem elaborados paradigmas aplicados nos domínios da informática em si (Computer Braille Code) colidiam num aglomero coexistencial enraizando constrangimentos dantescos perante as tutelas de aprendizado como ademais aos executores encarregues dotados do desenvolvimento dos próprios sistemas computacionais.
</p>
<p>
Por molde a derrubar barreiras patrióticas abarcando a diluição da confusa aglomeração restritiva afeta a disciplinas intrínsecas, esferas motrizes despoletaram movimentos interlaçados nos alicerces percussores internacionais agilizando unificações estandarizadas de calibre mundial por alturas sensíveis na década inaugural de noventa (anos 90).
Do seio coligativo de tais campanhas nasceria derradeiramente a premissa conhecida que enverga atualmente pelo nome <strong>Unified English Braille (UEB)</strong>, amplamente adotada nas estâncias mundiais de hoje por cânone imperativo inerente a países do quadro anglo.
</p>
<p>
Os ventos propulsoriamente reviradores assinaláveis nesta frente UEB em cotejo aos sistemas fundacionais retrógradas remetidos à envergadura do (EBAE), repousam morosamente e notória na realocação regimental do repertório símblico acrescendo às demolições, expurgações e afinamento dogmático das próprias dinâmicas contenciosas contraídas estipuladas pelas abreviaturas em Grau 2 (Grade 2).
Recorrendo às metodologias obsoletas presidia inerentimente o intento contacionista apetrechado por abreviaturas altamente baralhosas (Contractions) logrando a suprema miniaturização física do porte informacional e visual contudo, ditames assentes agora preparam a obliteração de amarras de tal abreviamento as quais encerravam em si confusão inequíva e embate cognitivo atestado mediante os sufixos correntes «ble» e em parte, «com».
Como bônus, traçou-se e promulgou-se de igual peso imperativo a rejeição impositiva estipulando abstenção à compactação da via braillista vocacionada no contexto descodificado a URLs e rubricas de email. Supletivamente ao dito, presenciou-se à alocação imperiosa, em vertente primária da criação englobante formal das notações contemporaneamente fulcrais (tais quais o vulgo arroba <code>@</code> e o familiar traço oblíquo delimitacional <code>/</code>) sob escopo a preencher lacunas nos atuais contornos societais dominados pelos pormenores tecnológicos.
</p>
<p>
Na aurora atual do milênio atesta-se perentoriamente num panorama alargado ao compasso transigente de proeminentes esferas da nata global oriunda dos redutores falantes-inglês (cujas presenças remetem quer por inerência e citação sumária aos domínios nos EUA, coroa dita do Reino Unido da GrãBretanha, terras e possessões continentais australásias a parelhas de pódium partilhados perante as terras dos cedros norte-americanos englobando Canadá e redutos sob jurisdição zelandista (Nova Zelândia) a coroação final da translação massiva à égide da UEB. Fruto e consequência inabaláveis, materiais escolares sublinhados por conteúdos lúdico-educacionais e encapotamentos burocráticos englobando estrita filologia anglófana em via internacional encontram-se hoje e no presente inteiramente e unicamente adstritos segundo este compêndio padronizado UEB.
</p>
