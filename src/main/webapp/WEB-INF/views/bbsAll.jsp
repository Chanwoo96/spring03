<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>전체 게시글 갯수 : ${count}개</h3>
<hr color="blue">
<%int pages= (int)request.getAttribute("pages");
	for(int p=1; p<= pages; p++){
%>
<a href=bbsAll?page=<%=p%> >
	<button><%=p %></button>
</a>
<%} %>
<table class="table">
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