<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于SHA-384</h3>
<p>SHA-384 是一种密码学哈希函数，可以从任意长度的数据生成 384 位哈希值。它是 SHA-2 家族的一种，输出的哈希值比 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 更长。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 96 位十六进制显示 SHA-384 哈希值。</p>

<p>例如，“Hello, world!” 的 SHA-384 哈希值如下。</p>

<pre>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</pre>

<h4>哈希值的特点</h4>
<p>SHA-384 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">SHA-384哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>55bc556b0d2fe0fce582ba5fe07baafff035653638c7ac0d5494c2a64c0bea1cc57331c7c12a45cdbca7f4c34a089eeb</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>8e268e3455b7b934f9e4b1288a401781f9791fd63411a1da6d3103a05cebb9719a94898699b986d19834c41ae10aa12a</code></td></tr>
	</table>
</div>
