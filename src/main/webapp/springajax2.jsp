<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
$(function(){
	$('#b1').click(function () {
		$.ajax({
			url:"movie",
			data: {
				title : $('#title').val(),
				price : $('#price').val(),
			},
			success: function(x) {
				$('#result').html(x)
			}
		})
	})//b1click
})//start
</script>
</head>
<body>
영화 제목: <input id="title"><br>
영화 관람료: <input id="price"><br>
<button id="b1">영화 관람 예매</button>
<hr color="blue">
<div id="result"></div>
</body>
</html>