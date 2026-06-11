<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于MD2</h3>
<p>MD2 是一种哈希函数，可以从任意长度的数据生成 128 位哈希值。它是较旧的算法，不建议用于当前的密码学用途。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 32 位十六进制显示 MD2 哈希值。</p>

<p>例如，“Hello, world!” 的 MD2 哈希值如下。</p>

<pre>8cca0e965edd0e223b744f9cedf8e141</pre>

<h4>哈希值的特点</h4>
<p>MD2 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">MD2哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>8cca0e965edd0e223b744f9cedf8e141</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>e9b7c65d851744a9319fb7c83e3b4469</code></td></tr>
	</table>
</div>

<p>MD2 有时用于兼容性检查等场景，但新的用途请考虑使用 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 等更新的哈希函数。</p>
