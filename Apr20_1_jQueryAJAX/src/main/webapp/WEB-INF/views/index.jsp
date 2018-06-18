<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#b1").click(function() {
			// Asynchronous : 서버의 응답 여부와 상관없이 이 프로그램은 작동
			// Javascript
			// And
			// Xml
			// 비동기식 자바스크립트 xml통신

			$.ajax({
				url : "menu.get", // 요청 주소
				success : function(xml) {
					$("table").empty();
					$(xml).find("menu").each(function(i, m) {
						var m_name = $(m).find("m_name").text();
						var m_price = $(m).find("m_price").text();

						var nTd = $("<td></td>").text(m_name);
						var pTd = $("<td></td>").text(m_price);
						var tr = $("<tr></tr>").append(nTd, pTd);
						$("table").append(tr);
					});
				} // 응답 오면
			});
		});
		$("#b2").click(function() {
			var p = $("#i1").val();

			//$.ajax({
			//	url : "요청 주소",
			//	data : {파라메터명:값, 파라메터명:값, ...},
			//	success : function(xml){
			//	}
			//});
			$.ajax({
				url : "menu.search.price",
				data : {
					m_price : p
				},
				success : function(xml) {
					$("table").empty();
					$(xml).find("menu").each(function(i, m) {
						var m_name = $(m).find("m_name").text();
						var m_price = $(m).find("m_price").text();

						var nTd = $("<td></td>").text(m_name);
						var pTd = $("<td></td>").text(m_price);
						var tr = $("<tr></tr>").append(nTd, pTd);
						$("table").append(tr);
					});
				}
			});
		});

		$("#i1").keyup(function(e) {
			//if(e.keyCode == 13){
			// 강제 이벤트 발생
			$("#b2").trigger("click");
			//}
		});
		$("#b3").click(function(e) {
			var n = $("#i2").val();
			// ㅋ -> %2D
			n = encodeURIComponent(n);
			// jquery는 utf-8
			$.ajax({
				url : "menu.search.name",
				data : {
					m_name : n
				},
				success : function(xml) {
					$("table").empty();
					$(xml).find("menu").each(function(i, m) {
						var m_name = $(m).find("m_name").text();
						var m_price = $(m).find("m_price").text();

						var nTd = $("<td></td>").text(m_name);
						var pTd = $("<td></td>").text(m_price);
						var tr = $("<tr></tr>").append(nTd, pTd);
						$("table").append(tr);
					});
				}
			});
		});
		$("#i2").keyup(function() {
			$("#b3").trigger("click");
		});
		// $(xml).find("단수형").each(function(i, s){
		//	$(s).find("속성명").text();
		//});
		// ...
		//		<단수형>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//		</단수형>
		//		<단수형>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//		</단수형>
		//		<단수형>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//			<속성명>xxx</속성명>
		//		</단수형>
		// ...
		
		// XML : 데이터를 HTML모양으로 표현
		// JSON : 데이터를 JS객체모양으로 표현
		$("#b4").click(function() {
			$.ajax({
				url : "student.getAll",
				success : function(json) {
					var ar = json.student;
					$("table").empty();
					$.each(ar, function(i, s){
						var nameTd = $("<td></td>").text(s.s_name);
						var korTd = $("<td></td>").text(s.s_kor);
						var engTd = $("<td></td>").text(s.s_eng);
						var matTd = $("<td></td>").text(s.s_mat);
						var tr = $("<tr></tr>").append(nameTd, korTd, engTd, matTd);
						$("table").append(tr);
					});
				}
			});
		});
	});
</script>
</head>
<body>
	<h1>index</h1>
	<button id="b4">전체 학생 출력</button>
	<p>



		<hr><button id="b1">전체 메뉴 출력</button>
	<p>
		<input id="i1">&nbsp;&nbsp;
		<button id="b2">가격으로 검색</button>
	<p>
		<input id="i2">&nbsp;&nbsp;
		<button id="b3">메뉴명으로 검색</button>
	<hr>
	<table></table>
</body>
</html>







