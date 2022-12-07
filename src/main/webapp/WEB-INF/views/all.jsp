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
 아이디 : ${dto.id }<br> 
 패스워드 : ${dto.pw} <br>
 이름 : ${dto.name} <br>
 연락처 : ${dto.tel} <br>
  <hr color="blue"> 
  </c:forEach>
</body>
</html>