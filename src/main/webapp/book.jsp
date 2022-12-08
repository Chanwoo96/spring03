<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		 $.ajax({
			url : "pagepage",
			success : function(x) {
				$('#pages').html(x)
			}
		}) 
		$.ajax({
			url : "bookpage",
			data : {page : 1},
			success : function(x) {
				$('#result').html(x)
			}
		})
		
	})//start
</script>
</head>
<body>
<img src="resources/img/naver.png">
<h3>북마크정보검색</h3>
<form action="one2">
아이디 : <input type="text" name="id"><br>
<button type="submit">서버로 전송</button>
</form>
<hr>

<h3>북마크전체검색</h3>
<a href="all2">
	<button>전체 검색 요청</button>
</a>
<hr>
<div id="pages">
</div>
<div id="result">
</div>
<hr>
<h3>북마크 추가</h3>
<form action="insert.do">
아이디 : <input type="text" name="id"><br>
이름 : <input type="text" name="name"><br>
URL : <input type="text" name="url"><br>
IMG : <input type="text" name="img"><br>
<button type="submit">서버로 전송</button>
</form>
<hr>
<h3>북마크 수정</h3>
<form action="up2">
아이디 : <input type="text" name="id"><br>
이름 : <input type="text" name="name"><br>
<button type="submit">서버로 전송</button>
</form>
<hr>
<h3>북마크 삭제</h3>
<form action="delete2">
아이디 : <input type="text" name="id"><br>
<button type="submit">서버로 전송</button>
</form>
</body>
</html>