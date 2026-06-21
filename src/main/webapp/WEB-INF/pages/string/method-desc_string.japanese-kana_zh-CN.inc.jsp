<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>关于日文假名 / 罗马字转换</h3>
<p>可在日文平假名、片假名和罗马字之间相互转换。</p>
<p>罗马字转换支持 Hepburn 和 Kunrei-shiki 两种方式。</p>

<p>例如，将罗马字“sakura”转换为片假名的结果如下。</p>

<pre>サクラ</pre>

<p>将平假名“しんぶん”转换为罗马字（Hepburn）的结果如下。</p>

<pre>shinbun</pre>

<p>转换为罗马字时，会将“、”“。”转换为逗号和句点。转换为假名时，仅当逗号和句点后面是空格或行尾时，才会将其转换为“、”“。”。</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>从罗马字转换为假名时，只有整段拉丁字母都能解释为罗马字时才会转换。例如，“computer”不能解释为罗马字，因此不会转换，会保留为“computer”。</p>
<p>半角片假名不在转换范围内。如需转换半角片假名，请先使用<a href="${dc:h(basePath)}/string/character-width">半角/全角字符转换</a>转换为全角片假名。</p>
