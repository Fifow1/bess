<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>여러개 마커에 이벤트 등록하기1</title>
    
</head>
<body>
<input type="text" class="form-control pt-1" id="sample4_postcode" name="address_zip" style="width: 500px; height: 50px;">
<input type="text" class="form-control pt-1" id="sample4_roadAddress" name="address_zip" style="width: 500px; height: 50px;">
<input type="text" class="form-control pt-1" id="x" name="address_zip" style="width: 500px; height: 50px;">
<input type="text" class="form-control pt-1" id="y" name="address_zip" style="width: 500px; height: 50px;">
<button type="button" class="btn btn-dark" onclick="sample4_execDaumPostcode()" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
<button type="button" class="btn btn-dark" id="check" style="width: 100px;background-color:white;">체크</button>
<button type="button" class="btn btn-dark" id="line" style="width: 100px;background-color:white;">선</button>
<div id="map" style="width:100%;height:350px;"></div>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c3e148b9d3b6d9eee46fb31507354ea&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
var arr = new Array(); 
for (var i = 0; i < arr.length; i++) {
	arr[i] = new Array(2);
}


console.log(arr);
var x = document.getElementById("x").value
var y = document.getElementById("y").value

var place = document.getElementById("sample4_roadAddress").value
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            
			/* lat and lng from address s */
				
			// 주소-좌표 변환 객체를 생성
			var geocoder = new daum.maps.services.Geocoder();
			
			// 주소로 좌표를 검색
			geocoder.addressSearch(roadAddr, function(result, status) {
			 
				// 정상적으로 검색이 완료됐으면,
				if (status == daum.maps.services.Status.OK) {
					
					document.getElementById("y").value=result[0].y;
					document.getElementById("x").value=result[0].x;
				}
			});
			/* lat and lng from address e */
            
				
      }
    
    }).open();
    
}




var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

document.getElementById("check").onclick = function(){
//주소로 좌표를 검색합니다	
var place = document.getElementById("sample4_roadAddress").value

geocoder.addressSearch(place, function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
        
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
}) 
};

document.getElementById("line").onclick = function(){
	
	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
var linePath = [
	new kakao.maps.LatLng(x, y),
];
	
	
	
	var polyline = new kakao.maps.Polyline({
	    path: linePath, // 선을 구성하는 좌표배열 입니다
	    strokeWeight: 5, // 선의 두께 입니다
	    strokeColor: '#FFAE00', // 선의 색깔입니다
	    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    strokeStyle: 'solid' // 선의 스타일입니다
	});
	polyline.setMap(map);
};
</script>
</body>
</html>
