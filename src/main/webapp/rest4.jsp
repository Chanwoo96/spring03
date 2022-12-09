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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4611b2688b283a9862933471078a1361"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37, 128), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

$(function() {
	$('#b1').click(function() {
		$.ajax({
			url : "jsonResponse5",
			dataType : "json",
			success : function(json) {
				marker.setMap(null);
				$('#p1').html(json.place)
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(json.wid, json.lon); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
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
<button id="b1">코엑스 위치검색</button>
<div id="p1"></div>
<div id="map" style="width:100%;height:350px;"></div>


</body>
</html>