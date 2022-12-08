<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url : "json.jsp",
			dataType : "json",
			success : function(json) {
				alert(json.id+" "+json.pw+" "+json.name)
			}//success function
		})//ajax
	})//b1click
	$('#b2').click(function() {
		$.ajax({
			url : "json2.jsp",
			dataType : "json",
			success : function(array) {
				alert(array)
				alert(array[0].id+" "+array[0].pw+" "+array[0].name+" "+ array[0].tel)
				alert(array[1].id+" "+array[1].pw+" "+array[1].name+" "+ array[1].tel)
			}//success function
		})//ajax
	})//b2click
})
</script>
</head>
<body>
<button id="b1">우리도 JSON받아보자!</button>
<button id="b2">여러개의 JSON을 받아보자!</button>
</body>
</html>