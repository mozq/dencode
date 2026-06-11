<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于SHA-256</h3>
<p>SHA-256 是一种密码学哈希函数，可以从任意长度的数据生成 256 位哈希值。它是 SHA-2 家族的一种，常用于文件篡改检测、数据完整性确认、数字签名、证书、区块链等场景。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以 64 位十六进制显示 SHA-256 哈希值。</p>

<p>例如，“Hello, world!” 的 SHA-256 哈希值如下。</p>

<pre>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</pre>

<h4>哈希值的特点</h4>
<p>SHA-256 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">SHA-256哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>407e1b6fc892e3340482da07d6c07d8180bdbb1fcf4329ba96559db159316ce7</code></td></tr>
	</table>
</div>
