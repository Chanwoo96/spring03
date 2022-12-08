<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
<tr>
<th>번호</th>
<th>제목</th>
<th>내용</th>
<th>작성자</th>
</tr>
<c:forEach var="dto" items="${list}">
<tr>
<td>${dto.id}</td>
<td>${dto.name}</td>
<td><a href="${dto.url}">${dto.url}</a></td>
<td><img src="resources/img/${dto.img}"></td>
</tr>
  </c:forEach>
</table>