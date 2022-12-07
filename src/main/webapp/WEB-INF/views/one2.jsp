<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
검색된 북마크id : ${dto.id } <br>
검색된 북마크 이름 : ${dto.name } <br>
검색된 북마크 url : ${dto.url }<br>
검색된 북마크 img : <img src="resources/img/${dto.img }"><br>
</body>
</html>