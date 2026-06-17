<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于SHA-3</h3>
<p>SHA-3 是一种密码学哈希函数，可以从任意长度的数据生成固定长度的哈希值。SHA-3 包含 SHA3-224、SHA3-256、SHA3-384、SHA3-512 四种哈希值长度不同的函数。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以十六进制显示 SHA-3 哈希值。</p>

<p>例如，“Hello, world!” 的 SHA3-256 哈希值如下。</p>

<pre>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</pre>

<h4>哈希值的特点</h4>
<p>SHA-3 对相同输入始终生成相同的哈希值。即使输入只改变一点，输出的哈希值也会发生很大变化。</p>
<p>哈希函数是单向函数，因此无法从哈希值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">SHA3-256哈希值</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>f345a219da005ebe9c1a1eaad97bbf38a10c8473e41d0af7fb617caa0c6aa722</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>284b1109df3210bff4b0c54ad4e47402a0a4a27e0fa0953a5b87aaabe62a3b9a</code></td></tr>
	</table>
</div>

<h4>与 SHA-2 的区别</h4>
<p>SHA-2 基于与 MD5、SHA-1 同一类的 Merkle-Damgård 结构，而 SHA-3 是对 Keccak 的标准化，采用的是海绵结构。因此，SHA-256 和 SHA3-256 都输出 256 位哈希值，但生成的值不同。</p>
