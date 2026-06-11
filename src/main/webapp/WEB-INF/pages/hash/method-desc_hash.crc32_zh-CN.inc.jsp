<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>关于CRC32</h3>
<p>CRC32 是一种错误检测方式，可以从任意长度的数据生成 32 位校验值。它常用于文件传输、压缩格式等场景，用来确认数据是否损坏。</p>
<p>在 DenCode 中，输入的字符串会按指定字符编码作为字节序列处理，并以十六进制显示 CRC32 值。</p>

<p>例如，“Hello, world!” 的 CRC32 如下。</p>

<pre>ebe6c6e6</pre>

<h4>CRC32的特点</h4>
<p>CRC32 适合检测偶发的数据损坏。但它不是密码学哈希函数，因此不适合需要防篡改安全性的用途。</p>
<p>CRC32 对相同输入始终生成相同的值。输入改变时，输出值也会改变。不过，无法从 CRC32 值还原原始输入数据。</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">输入</th><th scope="col">CRC32</th></tr>
		<tr><td><code>Hello, world!</code></td><td><code>ebe6c6e6</code></td></tr>
		<tr><td><code>Hello, world?</code></td><td><code>11e9fb85</code></td></tr>
	</table>
</div>
