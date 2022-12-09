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
	$('#b1').click(function() {
		$.ajax({
			url : "jsonResponse3",
			dataType : "json",
			success : function(json) {
				$('#d1').html("")
				$('#d1').append(json.id)
				d1.append(json.title)
				d1.append(json.content)
				d1.append(json.writer)
			}//success function
		})//ajax
	})//b1click
	$('#b2').click(function() {
		$.ajax({
			url : "jsonResponse4",
			dataType : "json",
			success : function(array) {
				$('#d1').html("")
				for (var i = 0; i < array.length; i++) {
					
					$('#d1').append(array[i].id+"<br>")
				$('#d1').append(array[i].title+"<br>")
				$('#d1').append("<a href="+array[i].contet+">"+array[i].content+"</a><br>")
				$('#d1').append("<a href="+array[i].writer+"><img src="+array[i].writer+"></a><br>" )
				}//for
				
			}//success function
		})//ajax
	})//b2click
	
})
</script>
</head>
<body>
<button id="b1">BbsVO받아보자!</button>
<button id="b2">여러개의 BbsJSON을 많이 받아보자!(리스트)</button>
<hr>
<div id='d1'></div>
</body>
</html>