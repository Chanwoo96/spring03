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
			url : "bbsAll2",
			data : {page : 1},
			success : function(x) {
				$('#result').html(x)
			}
		})
		
	})//start
</script>
<body>
	<h1>게시물 목록</h1>
	
	<div id="result"></div>
</body>
</html>