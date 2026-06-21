<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ taglib prefix="dc" uri="http://dencode.com/jsp/taglib"
%><h3>Về chuyển đổi Kana tiếng Nhật / Romaji</h3>
<p>Chuyển đổi qua lại giữa hiragana, katakana và romaji tiếng Nhật.</p>
<p>Chuyển đổi romaji hỗ trợ hệ Hepburn và Kunrei-shiki.</p>

<p>Ví dụ, kết quả khi chuyển romaji "sakura" sang katakana như sau.</p>

<pre>サクラ</pre>

<p>Kết quả khi chuyển hiragana "しんぶん" sang romaji (Hepburn) như sau.</p>

<pre>shinbun</pre>

<p>Khi xuất ra romaji, "、" và "。" được chuyển thành dấu phẩy và dấu chấm. Khi xuất ra kana, dấu phẩy và dấu chấm chỉ được chuyển thành "、" và "。" nếu theo sau là dấu cách hoặc cuối dòng.</p>
<pre>さくら、はな。 =&gt; sakura, hana.
sakura, hana. =&gt; サクラ、ハナ。</pre>

<p>Khi chuyển từ romaji sang kana, một chuỗi chữ cái Latinh chỉ được chuyển nếu toàn bộ chuỗi có thể được hiểu là romaji. Ví dụ, "computer" không thể được hiểu là romaji, nên được giữ nguyên là "computer".</p>
<p>Katakana bán giác không được chuyển đổi. Để chuyển đổi, trước tiên hãy đổi sang katakana toàn giác bằng <a href="${dc:h(basePath)}/string/character-width">chuyển đổi độ rộng ký tự</a>.</p>
