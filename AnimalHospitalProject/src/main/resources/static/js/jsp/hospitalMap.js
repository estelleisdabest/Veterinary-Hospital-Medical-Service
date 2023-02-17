/**
* Project Name : AnimalHospital 
* Page Name : myPageProtector.js
* Author: Park Ji Young
*/
/* 병원 주소검색 */
window.onload = function() {
	document
	.getElementById("address_kakao")
	.addEventListener(
		"click",
		function() { //주소입력칸을 클릭하면
			//카카오 지도 발생
			var width = 500; //팝업의 너비
			var height = 600; //팝업의 높이
			new daum.Postcode(
				{
				width : width, //생성자에 크기 값을 명시적으로 지정
				height : height,
				oncomplete : function(data) { //선택시 입력값 세팅
					document
							.getElementById("inputKakao").value = data.address; // 주소 넣기
				}
				}).open({
				    left: (window.screen.width / 2) - (width / 2),
				    top: (window.screen.height / 2) - (height / 2)
				});
	});
}
/**
* Project Name : AnimalHospital 
* Page Name : hospitalMap.html
* Author: Shin Hye Su
*/
/* 네이버 지도 */
$(document).ready(function(){
	$.ajax({
		url: "/hospitalMapRest",
		dataType: "json",
		type: "get",
		data: {
		},
		success: function(data) {
			var HOME_PATH = window.HOME_PATH || '.';
			var position = new naver.maps.LatLng(37.276983, 127.027534);
			
			var map = new naver.maps.Map('map', {
			    center: position,
			    zoom: 15,
			    minZoom: 12
			});
			var markers = [], infoWindows = [];
			
			for(var i = 0; i<data.length;i++){
				var marker  = new naver.maps.Marker({
				    map: map,
				    position: new naver.maps.LatLng(data[i].hospitalLocationLatitude , data[i].hospitalLocationLongitude).destinationPoint(90, 15),
				    icon: {
				        url: HOME_PATH +'/img/markerCat.png',
				        size: new naver.maps.Size(48, 48),
				        origin: new naver.maps.Point(0, 0),
				        anchor: new naver.maps.Point(17, 10)
				    },
				    zIndex: 100
				}); //marker 
				var contentString = [
			        '<div class="iw_inner">',
			        '<h5><b>'+data[i].animalHospitalName+'</b></h5>',
			        '   <p style="font-size:11pt">'+data[i].animalHospitalAddress+'<br />',
			        ''+data[i].animalHospitalPhoneNo+'<br />',
			        '</p>',
			        '</div>'
			    ].join('');
				
				var infoWindow = new naver.maps.InfoWindow({
		    		content: contentString,
		    		maxWidth: 300,
				    backgroundColor: "#eee",
				    borderColor: "#1977CC",
				    borderWidth: 2,
				    anchorSize: new naver.maps.Size(20, 10),
				    anchorSkew: true,
				    anchorColor: "#eee",
				    pixelOffset: new naver.maps.Point(20, -20)
				});
				
				markers.push(marker);
    			infoWindows.push(infoWindow);
				};
    			
				naver.maps.Event.addListener(map, 'idle', function() {
			    updateMarkers(map, markers);
				}); // for문
			
		function updateMarkers(map, markers) {
		    var mapBounds = map.getBounds();
		    var marker, position;
		
		    for (var i = 0; i < markers.length; i++) {
		        marker = markers[i]
		        position = marker.getPosition();
		
		        if (mapBounds.hasLatLng(position)) {
		            showMarker(map, marker);
		        } else {
		            hideMarker(map, marker);
		        }
		    }
		}

		function showMarker(map, marker) {
		    if (marker.setMap()) return;
		    marker.setMap(map);
		}

		function hideMarker(map, marker) {
		    if (!marker.setMap()) return;
		    marker.setMap(null);
		}
		
		// 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환
		function getClickHandler(seq) {
		    return function(e) {
		        var marker = markers[seq],
		            infoWindow = infoWindows[seq];
		        if (infoWindow.getMap()) {
		            infoWindow.close();
		        } else {
		            infoWindow.open(map, marker);
		        }
		    }
		}
			for (var i=0, ii=markers.length; i<ii; i++) {
			    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
			}	
		}, //성공시 
		error: function(data) {
			alert("Error");
		} // 에러시
	}); // ajax 끝
}); // 함수 끝