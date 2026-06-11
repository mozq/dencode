<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于SHA-512</h3>
<p>SHA-512 是一种密码学哈希函数，可以从任意长度的数据生成 512 位哈希值。它是 SHA-2 家族的一种，输出的哈希值比 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 更长。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 128 位十六进制显示 SHA-512 哈希值。</p>

<p>例如，“Hello, world!” 的 SHA-512 哈希值如下。</p>

<pre>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</pre>

<h4>哈希值的特点</h4>
<p>SHA-512 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">SHA-512哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>c1527cd893c124773d811911970c8fe6e857d6df5dc9226bd8a160614c0cd963a4ddea2b94bb7d36021ef9d865d5cea294a82dd49a0bb269f51f6e7a57f79421</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>54a24182bad0215568b65fa929769fef397b653b4e866c8b3f2a39143d920efd0c35866a26ae89b4d4f3f947c2ddd1de78f7a7e9fab70af302d482bdf4d6f560</code></td></tr>
	</table>
</div>
