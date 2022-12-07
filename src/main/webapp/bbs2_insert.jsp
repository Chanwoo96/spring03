<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 글쓰기</h1>
<form action="insert3" method="post" enctype="multipart/form-data">
제목 <input name="title"><br>
컨텐츠 <input name="content"><br>
작성자 <input name="writer"><br>
<input type="file" name="file"><br>

<button>글쓰기 버튼</button>
</form>
</body>
</html>