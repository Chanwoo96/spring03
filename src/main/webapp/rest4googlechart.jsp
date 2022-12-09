<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
    <script type="text/javascript">
    $(function() {
    $('#b2').click(function() {
		$.ajax({
			url : "jsonResponse6",
			dataType : "json",
			success : function(array) {
	//구글차트 그리기			
    google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
		//구글차트에 넣을 데이터 2차원 배열생성
    	  var piedata= new Array(array.length+1);
		for (var i = 0; i < piedata.length; i++){
			piedata[i]= new Array(2);
			if(i==0){
				piedata[i][0]='Task';
				piedata[i][1]='Hours per Day';
			}else{
				piedata[i][0]=array[i-1].doing;
				piedata[i][1]=array[i-1].time;
				
			}
		}
		//차트에 2차원데이터 배열 넣기
        var data = google.visualization.arrayToDataTable(piedata);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
			}//success function
		})//ajax
	}) 
    })
    </script>
  </head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
</head>
<body>
<button id="b1">코엑스 위치검색</button>
<button id="b2">구글 파이차트 생성</button>
<div id="p1"></div>
<div id="map" style="width:100%;height:350px;"></div>
 <div id="piechart" style="width: 900px; height: 500px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4611b2688b283a9862933471078a1361"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.260804020100501, 128.305979899497487), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.260804020100501, 128.305979899497487); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>

</body>
<script type="text/javascript">

$(function() {
	$('#b1').click(function() {
		$.ajax({
			url : "jsonResponse5",
			dataType : "json",
			success : function(json) {
				marker.setMap(null);
				$('#p1').html(json.place)
				// 마커가 표시될 위치입니다 
				markerPosition  = new kakao.maps.LatLng(json.wid, json.lon); 

				// 마커를 생성합니다
				marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				var moveLatLon = new kakao.maps.LatLng(json.wid, json.lon);
			    
			    // 지도 중심을 부드럽게 이동시킵니다
			    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			    map.panTo(moveLatLon);    
			}//success function
		})//ajax
	})//b1click
	//b2click
	
})
</script>
</html>