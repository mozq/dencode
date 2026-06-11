<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于SHA-1</h3>
<p>SHA-1 是一种密码学哈希函数，可以从任意长度的数据生成 160 位哈希值。它过去曾被广泛使用，但现在碰撞抵抗性存在问题，不建议用于新的密码学用途。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 40 位十六进制显示 SHA-1 哈希值。</p>

<p>例如，“Hello, world!” 的 SHA-1 哈希值如下。</p>

<pre>943a702d06f34599aee1f8da8ef9f7296031d699</pre>

<h4>哈希值的特点</h4>
<p>SHA-1 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">SHA-1哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>943a702d06f34599aee1f8da8ef9f7296031d699</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>1a77cb7c956ca25b14950285c79f0686ae1f0058</code></td></tr>
	</table>
</div>

<p>它有时用于与现有系统保持兼容，但新的用途请考虑使用 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 或更强的哈希函数。</p>
