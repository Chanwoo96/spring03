<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이미지 파일이 업로드 되었습니다.<br>
파일명: ${savedName}입니다.<br>
<img src="resources/upload/${savedName}" width="300" height="300">
<hr color="red">
등록된 게시글 id는 ${bbs2VO.bbs_id}<br>
등록된 게시글 제목은 ${bbs2VO.title} <br>
등록된 게시글 내용는 ${bbs2VO.content} <br>
등록된 게시글 작성자는 ${bbs2VO.writer} <br>
</body>
</html>