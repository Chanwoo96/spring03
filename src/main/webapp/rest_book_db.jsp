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
	$('#b2').click(function() {
		$.ajax({
			url : "jsonResponse2",
			dataType : "json",
			success : function(array) {
				alert(array)
				for (var i = 0; i < array.length; i++) {
					
					$('#d1').append(array[i].id+"<br>")
				$('#d1').append(array[i].name+"<br>")
				$('#d1').append("<a href="+array[i].url+">"+array[i].url+"</a><br>")
				$('#d1').append("<a href="+array[i].url+"><img src="+array[i].img+"></a><br>" )
				}//for
				
			}//success function
		})//ajax
	})//b2click
	$('#b3').click(function() {
		$.ajax({
			url : "jsonbook",
			dataType : "json",
			success : function(array) {
				alert(array)
					$('#d1').append("<table class='table'><tr><th>아이디</th><th>이름</th><th>url</th><th>img</th></tr>");
				for (var i = 0; i < array.length; i++) {
					$('#d1').append("<tr class='table'>"+
				"<td>"+array[i].id+"</td>"
				+"<td>"+array[i].name+"</td>"
				+"<td><a href="+array[i].url+">"+array[i].url+"</a></td>"
				+"<td><a href="+array[i].url+"><img width=150px; src=resources/img/"+array[i].img+"></a></td>"
					+"</tr>");
				}//for
					$('#d1').append("</table>");
				
			}//success function
		})//ajax
	})//b3click
	
})
</script>
</head>
<body>
<button id="b3">booktable 받아오기!</button>
<button id="b2">booklist 받아오기!</button>
<hr>
<div id='d1'></div>
</body>
</html>