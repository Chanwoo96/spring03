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
<table>
<tr>
<th>bbs_no</th>
<th>번호</th>
<th>제목</th>
<th>내용</th>
<th>작성자</th>
</tr>
<c:forEach var="dto" items="${list}">
<tr>
<td>${dto.row_no}</td>
<td>${dto.id}</td>
<td>${dto.title}</td>
<td>${dto.content}</td>
<td>${dto.writer}</td>
</tr>
  </c:forEach>
</table>
</body>
</html>