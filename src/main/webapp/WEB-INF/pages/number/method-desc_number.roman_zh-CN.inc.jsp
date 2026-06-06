<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于罗马数字</h3>
<p>罗马数字通过组合 <code>I</code>、<code>V</code>、<code>X</code>、<code>L</code>、<code>C</code>、<code>D</code>、<code>M</code> 等符号来表示整数。</p>

<p>标准罗马数字可以表示 1 到 3999 的整数。没有表示 0 的符号。</p>
<pre>
1234 = MCCXXXIV
3999 = MMMCMXCIX
</pre>

<h4>基本符号</h4>
<p>罗马数字使用以下7种符号。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>符号</th><th>值</th></tr>
		</thead>
		<tbody>
			<tr><td><code>I</code></td><td>1</td></tr>
			<tr><td><code>V</code></td><td>5</td></tr>
			<tr><td><code>X</code></td><td>10</td></tr>
			<tr><td><code>L</code></td><td>50</td></tr>
			<tr><td><code>C</code></td><td>100</td></tr>
			<tr><td><code>D</code></td><td>500</td></tr>
			<tr><td><code>M</code></td><td>1000</td></tr>
		</tbody>
	</table>
</div>

<h4>加法记数</h4>
<p>当符号按从大到小的值排列时，将各符号的值相加。</p>
<pre>
VIII = 5 + 1 + 1 + 1 = 8
LX = 50 + 10 = 60
MDC = 1000 + 500 + 100 = 1600
</pre>

<p><code>I</code>、<code>X</code>、<code>C</code>、<code>M</code> 最多可以连续使用3次。<code>V</code>、<code>L</code>、<code>D</code> 在同一位上只使用1次。</p>

<h4>减法记数</h4>
<p>将较小的符号放在较大的符号之前时，会减去较小的值。标准罗马数字使用以下6种减法形式。</p>

<div class="table-responsive">
	<table class="table">
		<thead>
			<tr><th>记法</th><th>值</th></tr>
		</thead>
		<tbody>
			<tr><td><code>IV</code></td><td>4</td></tr>
			<tr><td><code>IX</code></td><td>9</td></tr>
			<tr><td><code>XL</code></td><td>40</td></tr>
			<tr><td><code>XC</code></td><td>90</td></tr>
			<tr><td><code>CD</code></td><td>400</td></tr>
			<tr><td><code>CM</code></td><td>900</td></tr>
		</tbody>
	</table>
</div>

<pre>
44 = XLIV
999 = CMXCIX
1999 = MCMXCIX
</pre>

<p>将 <code>IC</code> 作为 99、<code>IL</code> 作为 49、<code>VX</code> 作为 5 的写法不是标准写法，因此不支持。</p>

<h4>罗马数字的历史</h4>
<p>罗马数字被认为起源于古罗马用于计数的简单标记和刻痕。像 <code>I</code> 这样的竖线逐渐表示 1，5 和 10 的组合也开始用不同符号表示，最终整理成组合 <code>V</code>、<code>X</code>、<code>L</code>、<code>C</code>、<code>D</code>、<code>M</code> 的记数体系。</p>

<p>早期罗马数字并不像现在这样严格统一。例如，4 除了写作 <code>IV</code>，也会写作 <code>IIII</code>；9 有时也会写作 <code>VIIII</code>，而不是 <code>IX</code>。现在常见的 <code>IV</code>、<code>IX</code>、<code>XL</code>、<code>XC</code>、<code>CD</code>、<code>CM</code> 等减法形式，是后来整理为标准写法的。</p>

<p>罗马数字曾长期用于商业交易、碑文、历法、时钟、章节编号等场景。今天，它们仍作为表示年份和编号的装饰性、惯用性写法保留下来。</p>
