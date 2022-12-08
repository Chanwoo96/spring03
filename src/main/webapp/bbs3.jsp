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

		/* 	$.ajax({
				url:"bbsList",
				success: function(x) {
					$('#result').html(x)
				}
			}) */

		$('#b1').click(function() {
			$.ajax({
				url : "bbsAll",
				success : function(x) {
					$('#result').html(x)
				}
			})
		})//b1

		$('#b2').click(function() {
			$.ajax({
				url : "bbsList2",
				data : {
					page:1
				},
				success : function(x) {
					$('#result').html(x)
				}
			})
		})//b2
		$('#b3').click(function() {
			$.ajax({
				url : "bbsList2",
				data : {
					page : 2
				},
				success : function(x) {
					$('#result').html(x)
				}
			})
		})//b2
	})//start
</script>
<body>
	<h1>게시물 목록</h1>
	<button id="b1">페이징고급화</button>
	<button id="b2">페이징 연습 (1~5)</button>
	<button id="b3">페이징 연습 (6~10)</button>
	<div id="result"></div>
</body>
</html>