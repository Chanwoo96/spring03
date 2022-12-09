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
			url : "jsonResponse1",
			dataType : "json",
			success : function(json) {
				alert(json)
				$('#d1').append(json.id)
				d1.append(json.name)
				d1.append(json.url)
				d1.append(json.img)
			}//success function
		})//ajax
	})//b1click
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
			url : "jsonResponse2",
			dataType : "json",
			success : function(array) {
				alert(array)
					$('#d1').append("<table class=table><tr><th>아이디</th><th>이름</th><th>url</th><th>img</th></tr>")
				for (var i = 0; i < array.length; i++) {
					$('#d1').append("<tr>")
					$('#d1').append("<td>"+array[i].id+"</td>")
				$('#d1').append("<td>"+array[i].name+"</td>")
				$('#d1').append("<td><a href="+array[i].url+">"+array[i].url+"</a></td>")
				$('#d1').append("<td><a href="+array[i].url+"><img width=150px; src="+array[i].img+"></a></td>" )
					$('#d1').append("</tr>")
				}//for
					$('#d1').append("</table>")
				
			}//success function
		})//ajax
	})//b2click
})
</script>
</head>
<body>
<button id="b1">우리도 JSON받아보자!</button>
<button id="b2">여러개의 JSON을 많이 받아보자!(리스트)</button>
<button id="b3">여러개의 JSON을 받아보자! (테이블로)</button>
<hr>
<div id='d1' style="background: yellow;"></div>
</body>
</html>