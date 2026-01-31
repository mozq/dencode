<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Chuẩn hóa Unicode</h3>
<p>Chuẩn hóa Unicode là việc phân tách và tổng hợp các ký tự. Các ký tự Unicode có thể có nhiều cách biểu diễn dù trông giống nhau. Ví dụ, "â" có thể được biểu diễn bằng 1 mã point là "â" (U+00E2), hoặc bằng 2 mã point phân tách là "a" (U+0061) và " ̂" (U+0302) (ký tự cơ sở + ký tự kết hợp). Trường hợp trước gọi là ký tự đã tổng hợp (precomposed character), trường hợp sau gọi là chuỗi ký tự kết hợp (combining character sequence, CCS).</p>
<p>Có các loại chuẩn hóa Unicode sau:</p>

<div class="table-responsive">
	<table class="table">
		<tr><th scope="col">Dạng chuẩn hóa</th><th scope="col">Mô tả</th><th scope="col">Ví dụ</th></tr>
		<tr><td>Normalization Form D (NFD)</td><td>Phân tách theo tương đương chính quy (Canonical Equivalence)</td><td>"â"(U+00E2) -&gt; "a"(U+0061) + " ̂"(U+0302)</td></tr>
		<tr><td>Normalization Form KD (NFKD)</td><td>Phân tách theo tương đương tương thích (Compatibility Equivalence)</td><td>"ﬁ"(U+FB01) -&gt; "f"(U+0066) + "i"(U+0069)</td></tr>
		<tr><td>Normalization Form C (NFC)</td><td>Phân tách theo tương đương chính quy và tổng hợp lại</td><td>"â"(U+00E2) -&gt; "a"(U+0061) + " ̂"(U+0302) -&gt; "â"(U+00E2)</td></tr>
		<tr><td>Normalization Form KC (NFKC)</td><td>Phân tách theo tương đương tương thích và tổng hợp lại theo tương đương chính quy</td><td>"ﬁ"(U+FB01) -&gt; "f"(U+0066) + "i"(U+0069) -&gt; "f"(U+0066) + "i"(U+0069)</td></tr>
	</table>
</div>

<p>Tương đương chính quy chuẩn hóa trong khi vẫn giữ lại các ký tự tương đương về mặt thị giác và chức năng. Ví dụ: "â" &lt;-&gt; "a" + " ̂"</p>
<p>Tương đương tương thích, ngoài tương đương chính quy, cũng bao gồm các ký tự có dạng khác nhau về mặt ngữ nghĩa trong phạm vi chuẩn hóa. Ví dụ: "ﬁ" -&gt; "f" + "i"</p>
