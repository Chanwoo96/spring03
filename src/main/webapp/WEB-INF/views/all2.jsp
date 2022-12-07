<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="dto" items="${list}">
  아이디: ${dto.id }<br> 
  사이트명: ${dto.name} <br>
  사이트 url: ${dto.url} <br>
  사이트로고: <img src="resources/img/${dto.img}"> <br>
  <hr color="blue"> 
  </c:forEach>
</body>
</html>