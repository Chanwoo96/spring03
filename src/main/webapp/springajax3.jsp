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
			url:"tour",
			success: function(x) {
				$('#result').html(x)
			}
		})
	})//b1click
	$('#b2').click(function () {
		$.ajax({
			url:"fruit",
			success: function(x) {
				$('#result').html(x)
			}
		})
	})//b2click
})//start
</script>
</head>
<body>
<button id="b1">여행목록을 가져오자</button>
<button id="b2">과일목록을 가져오자</button>
<hr color="blue">
<div id="result"></div>
</body>
</html>