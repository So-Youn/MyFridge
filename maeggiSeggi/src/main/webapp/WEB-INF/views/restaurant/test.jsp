<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7786ca578eabcf447df71f78399388e&libraries=services"></script>
<script type="text/javascript">
	var map;
	var container;
	window.onload = function() {
		//현재 위치 기반 지도 생성
		createMap();
		//검색할 때 부를 콜백함수
		document.getElementById("sendKey").onclick = searchRestaurantOnMap;
	}
	
	function createMap() {
		//지도를 담을 영역의 DOM 레퍼런스
		container = document.getElementById('map'); 
		if (navigator.geolocation) {
			//현재 위치 기준으로 map 중심 좌표 설정
			navigator.geolocation.getCurrentPosition(function(pos) {
				var lat = pos.coords.latitude;
				var lon = pos.coords.longitude;
				
				var options = { //지도를 생성할 때 필요한 기본 옵션
						center : new kakao.maps.LatLng(lat, lon),	//지도의 중심좌표.
						level : 3									//지도의 레벨(확대, 축소 정도)
					};
				
				map = new kakao.maps.Map(container, options); 		//지도 생성 및 객체 리턴
				
				//마커로 사용할 이미지 등록
				var imageSrc = '/maeggiSeggi/images/myPin.png';
				var imageSize = new kakao.maps.Size(54,59);
				var imageOption = {offset: new kakao.maps.Point(17, 59)};
				
				// 등록한 이미지 바탕으로 마커이미지 생성
				var markerImg = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
			    
			    // 마커를 생성하고 지도에 표시합니다
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: new kakao.maps.LatLng(lat, lon),
			        image: markerImg
			    });
			    
				marker.setMap(map);
			});
		}	
	}
	
	function searchRestaurantOnMap() {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(pos) {
				var lat = pos.coords.latitude;
				var lon = pos.coords.longitude;

				var locPosition = new kakao.maps.LatLng(lat, lon);
				
				// 라이브러리에 등록된 장소 불러오기
				var ps = new kakao.maps.services.Places();
				
				//찾을 키워드
				var key = document.getElementById("keyword").value;
				
				//현재 중심 좌표를 기준으로, 2000m 반경 이내, 키워드 검색
				ps.keywordSearch(key, placesSearchCB, {
					location: locPosition,
					radius: 2000
				});

				// 지도 중심좌표를 접속위치로 변경합니다
				map.setCenter(locPosition);
				map.setLevel(6);
			});
			
		}
	}
	
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	    	for (var i = 0; i < data.length; i++) {
	    		displayMarkers(data[i]);
			}      
	    } 
	}
	
	// 지도에 마커를 표시하는 함수입니다
	function displayMarkers(place) {
		
		//마커로 사용할 이미지 등록
		var imageSrc = '/maeggiSeggi/images/pin.png';
		var imageSize = new kakao.maps.Size(54,59);
		var imageOption = {offset: new kakao.maps.Point(17, 59)};
		
		// 등록한 이미지 바탕으로 마커이미지 생성
		var markerImg = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	    
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x),
	        image: markerImg
	    });
	    
		marker.setMap(map);

	    /* // 마커에 클릭이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    }); */
	}
</script>
</head>
<body>
	<div id="map" style="width:500px; height: 400px;"></div>
	<input id="keyword" style="height: 50px;"/>
	<button id="sendKey" value="검색" style="width: 100px; height: 50px;">검색</button>
	<div id="latitude" ></div>
	<div id="longitude" style="display:none;"></div>
</body>
</html>