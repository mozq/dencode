<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于MD5</h3>
<p>MD5 是一种哈希函数，可以从任意长度的数据生成 128 位哈希值。它曾被广泛使用，但由于碰撞抵抗性存在问题，不建议用于当前的密码学用途。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 32 位十六进制显示 MD5 哈希值。</p>

<p>例如，“Hello, world!” 的 MD5 哈希值如下。</p>

<pre>6cd3556deb0da54bca060b4c39479839</pre>

<h4>哈希值的特点</h4>
<p>MD5 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">MD5哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>6cd3556deb0da54bca060b4c39479839</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>b35b9b4b6114ee258f063e61a53d178b</code></td></tr>
	</table>
</div>

<p>MD5 有时会出现在旧校验和的比对中，但在篡改检测、签名等需要安全性的用途下，请考虑使用 <a href="${dc:h(basePath)}/hash/sha256">SHA-256</a> 等更新的哈希函数。</p>
