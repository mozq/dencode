<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>Về Base45</h3>
<p>Base45 là phương thức mã hóa sử dụng các ký tự ASCII 7-bit có thể in được.</p>
<p>Trong Base45, dữ liệu được chia thành từng 2 byte và chuyển đổi thành 3 ký tự ASCII.</p>

<p>Các ký tự ASCII được sử dụng trong Base45 như sau. Giá trị 2 byte được xử lý như số nguyên không dấu big-endian, tính toán các chữ số trong hệ cơ số 45 (3 chữ số), và dựa vào các ký tự ASCII sau để lấy kết quả chuyển đổi Base45.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Chữ số hệ 45</th><th>Ký tự ASCII Base45</th></tr>
		<tr><td>0</td><td>0</td></tr>
		<tr><td>1</td><td>1</td></tr>
		<tr><td>2</td><td>2</td></tr>
		<tr><td>3</td><td>3</td></tr>
		<tr><td>4</td><td>4</td></tr>
		<tr><td>5</td><td>5</td></tr>
		<tr><td>6</td><td>6</td></tr>
		<tr><td>7</td><td>7</td></tr>
		<tr><td>8</td><td>8</td></tr>
		<tr><td>9</td><td>9</td></tr>
		<tr><td>10</td><td>A</td></tr>
		<tr><td>11</td><td>B</td></tr>
		<tr><td>12</td><td>C</td></tr>
		<tr><td>13</td><td>D</td></tr>
		<tr><td>14</td><td>E</td></tr>
		<tr><td>15</td><td>F</td></tr>
		<tr><td>16</td><td>G</td></tr>
		<tr><td>17</td><td>H</td></tr>
		<tr><td>18</td><td>I</td></tr>
		<tr><td>19</td><td>J</td></tr>
		<tr><td>20</td><td>K</td></tr>
		<tr><td>21</td><td>L</td></tr>
		<tr><td>22</td><td>M</td></tr>
		<tr><td>23</td><td>N</td></tr>
		<tr><td>24</td><td>O</td></tr>
		<tr><td>25</td><td>P</td></tr>
		<tr><td>26</td><td>Q</td></tr>
		<tr><td>27</td><td>R</td></tr>
		<tr><td>28</td><td>S</td></tr>
		<tr><td>29</td><td>T</td></tr>
		<tr><td>30</td><td>U</td></tr>
		<tr><td>31</td><td>V</td></tr>
		<tr><td>32</td><td>W</td></tr>
		<tr><td>33</td><td>X</td></tr>
		<tr><td>34</td><td>Y</td></tr>
		<tr><td>35</td><td>Z</td></tr>
		<tr><td>36</td><td> [SP]</td></tr>
		<tr><td>37</td><td>$</td></tr>
		<tr><td>38</td><td>%</td></tr>
		<tr><td>39</td><td>*</td></tr>
		<tr><td>40</td><td>+</td></tr>
		<tr><td>41</td><td>-</td></tr>
		<tr><td>42</td><td>.</td></tr>
		<tr><td>43</td><td>/</td></tr>
	</table>
</div>

<p>Ví dụ, nếu chuyển đổi "Hello" bằng Base45, kết quả sẽ như sau:</p>

<p>1. Chia thành từng 2 byte.</p>

<pre>4865<sub>(16)</sub> 6C6C<sub>(16)</sub> 6F<sub>(16)</sub>  (He ll o)</pre>

<p>2. Xử lý mỗi 2 byte như số nguyên không dấu big-endian và chuyển đổi giá trị đó thành 3 chữ số trong hệ cơ số 45. Nếu cuối cùng chỉ còn 1 byte, chuyển đổi thành 2 chữ số hệ cơ số 45.</p>

<pre>4865<sub>(16)</sub>
= 18533<sub>(10)</sub>
= <b>9</b> * 45<sup>2</sup> + <b>6</b> * 45 + <b>38</b></pre>

<pre>6C6C<sub>(16)</sub>
= 27756<sub>(10)</sub>
= <b>13</b> * 45<sup>2</sup> + <b>31</b> * 45 + <b>36</b></pre>

<pre>6F<sub>(16)</sub>
= 111<sub>(10)</sub>
= <b>2</b> * 45 + <b>21</b></pre>

<p>3. Chuyển đổi các chữ số hệ cơ số 45 sang ký tự ASCII theo thứ tự ngược lại.</p>

<div class="table-responsive">
	<table class="table">
		<tr><th>Chữ số hệ 45</th><td>38</td><td>6</td><td>9</td><td></td><td>36</td><td>31</td><td>13</td><td></td><td>21</td><td>2</td></tr>
		<tr><th>Ký tự ASCII Base45</th><td>%</td><td>6</td><td>9</td><td></td><td> [SP]</td><td>V</td><td>D</td><td></td><td>L</td><td>2</td></tr>
	</table>
</div>

<p>4. Nối tất cả các ký tự lại để có kết quả chuyển đổi Base45.</p>

<pre>%69 VDL2</pre>

<h3>Về Base45/Zlib/COSE/CBOR</h3>
<p>Base45/Zlib/COSE/CBOR là dữ liệu được biểu thị ở định dạng CBOR, được ký theo định dạng COSE, sau đó nén bằng Zlib và chuyển đổi sang định dạng Base45.</p>
<p>Nó được sử dụng làm định dạng dữ liệu cho mã QR của <a href="https://ec.europa.eu/info/live-work-travel-eu/coronavirus-response/safe-covid-19-vaccines-europeans/eu-digital-covid-certificate_en" target="_blank">EUDCC (Chứng chỉ COVID kỹ thuật số của EU)</a>. EUDCC là định dạng chung cho chứng chỉ tiêm chủng COVID-19 tại EU, còn được gọi là DGC (EU Digital Green Certificate) hoặc Green Pass.</p>
<p>DenCode chỉ hỗ trợ giải mã và kết quả giải mã được biểu thị dưới dạng JSON. Tính hợp lệ của chữ ký không được xác minh.</p>
