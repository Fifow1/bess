<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!Doctype html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Edu+VIC+WA+NT+Beginner:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,600;1,200&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Edu+NSW+ACT+Foundation:wght@600&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="/resources/css/main.css">
  	<title>member</title>
	<style type="text/css">

</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<nav class="navbar navbar-expand-lg header">
	<div class="container" style="height: 0px;">
		<div style="margin-top: 30px; margin-right: 70px;">
			<a class="navbar-brand" href="#"><h1 style="color: #FFFFFF; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav" style="font-family: 'Kanit', sans-serif;">
				<li class="nav-item" style="margin-right: 40px;"><a class="nav-link active" aria-current="page" style="color: #FFFFFF;" href="../main.html">Home</a></li>
				<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="../product/productList_deskmat.html">shop</a></li>
				<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="#">community</a></li>
			</ul>
		</div>
		<div id="headerR" class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button class="btn btn-outline" type="button" onclick="location.href='./memberLogin.html'" style="color: #FFFFFF">
				<i class="fa-solid fa-user"></i>
			</button>
			<button class="btn btn-outline me-md-2" type="button" style="color: #FFFFFF">
				<i class="fa-solid fa-cart-shopping"></i>
			</button>
		</div>
	</div>
</nav>
<!------------------------------------------------------------------------------------------------------------------------------------------------->

<div id="wrapper" style="height: 2700px">

	<div style="width: 40%; height:1000px; float:left; margin-top: 800px;">
		<div class="row" style="padding-right: 70px;">
			<div class="col d-flex justify-content-center">
				<p style="font-family: 'Source Sans Pro', sans-serif; font-size: 80px;">Create<br> Account</p>
			</div>
		</div>
		<div class="row">
			<div class="col d-flex justify-content-center">
				<hr style="border: solid 4px #2E2E2E; width: 350px; opacity: .9; ">
			</div>
		</div>
	</div>




<div class="line"></div>

	
	
	<div style="width: 60%; height:2000px; float:right; padding-top: 200px;">
		<div class="container">
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">아이디</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
						<button type="button" class="btn btn-dark" style="width: 100px; padding: 0px; background-color: #2E2E2E;">중복확인</button>
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">비밀번호</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">비밀번호 확인</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
					</div>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">성별</p>
					<div class="form_radio_btn radio_male" style="float: left; margin-left: 310px;">
						<input id="radio-1" type="radio" name="userGender" value="male" checked> <label for="radio-1">남자</label>
					</div>
					<div class="form_radio_btn" style="float: left;">
						<input id="radio-2" type="radio" name="userGender" value="female"> <label for="radio-2">여자</label>
					</div>
				</div>
			</div>'
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">생년월일</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">이메일</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
						<button type="button" class="btn btn-dark" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">전화번호</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
						<button type="button" class="btn btn-dark" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">우편번호</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="sample4_postcode" aria-describedby="emailHelp" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
						<button type="button" class="btn btn-dark" onclick="sample4_execDaumPostcode()" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">주소</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="sample4_roadAddress"  style="width: 500px; height: 50px;">
					</div>
				</div>
			</div>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3">
					<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">상세주소</p>
					<div class="form-floating d-flex justify-content-center">
						<input type="text" class="form-control" id="exampleInputEmail1" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
					</div>
				</div>
			</div>
			
			
			
			<input type="text" class="form-control" id="y" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
			<input type="text" class="form-control" id="x"  style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
			
			
			
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3" style="margin-left: 310px;">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <p> 모두 동의합니다 </p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"> <p> (필수) 이용약관과 개인정보 수집 및 이용에 동의합니다. </p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><p> (필수) 만 14세 이상입니다.<br>만 19세 미만의 미성년자가 결제 시 법정대리인이 거래를 취소할 수 있습니다 </p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"> <p> (선택) 이메일 및 SMS 마케팅 정보 수신에 동의합니다.<br>회원은 언제든지 회원 정보에서 수신 거부로 변경할 수 있습니다. </p>
						</div>
					</div>
			</div>
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center">
					<button type="button" class="btn btn-dark textbox">가입하기</button>		
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center" style="margin-bottom: 10px; margin-top: 10px;	">
					<hr style="width: 212px; color:black; float:left;"><p style="float: left; padding-left:20px; padding-right:20px;">또는</p><hr style="width: 212px; color:black;">
				</div>
			</div>
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center">
					<button type="button" class="btn btn-success border" style="width: 120px;">
						<i class="fa-sharp fa-solid fa-n"></i>
					</button>
					<button type="button" class="btn btn-warning border ms-2" style="width: 120px;">
						<i class="fa-sharp fa-solid fa-comment"></i>
					</button>
					<button type="button" class="btn btn-danger border ms-2" style="width: 120px;">
						<i class="fa-brands fa-google"></i>
					</button>
					<button type="button" class="btn btn-primary border ms-2" style="width: 120px;">
						<i class="fa-brands fa-facebook"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
<!------------------------------------------------------------------- footer -------------------------------------------------------------------->

	<div class="container-fluid footer">	
		<div class="row" style="padding-top: 40px;">
			<div class="col d-flex justify-content-center" style="padding-left: 90px; padding-bottom: 10px; padding-right:0px; ">
				<div>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">Ham소개</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">자주묻는질문</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a>
					<a href="#" class="link-light ps-5"  style="text-decoration: none;">개인정보처리방침</a>	
					<a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
				</div>
			</div>
			<div class="col d-flex justify-content-center" style="padding-right: 137px; padding-left: 0px;">
				<div class="">
					<a href="#" class="link-light ps-5 instagram" style="text-decoration: none;">인스타그램</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">페이스북</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">개인정보처리방침</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
				</div>
			</div>
		</div>
		<hr style="color: white; margin-top: 0px;">
		<div class="row" style="padding-left: 40px;">
			<div class="col" style="padding-left: 145px;">
				<h1 style="color: white; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1>
			</div>
			<div class="col"style="padding-right:20px;">
				<h1 style="color: white;">고객센터</h1>
			</div>
		</div>
		<div class="row" style="padding-left: 40px;">
			<div class="col" style="padding-left: 145px;">
				<p style="color: white; text-align: left;">대표이사 : 함승윤 사업자등록번호 : 220-88-93187 통신판매업신고 : 2016-서울강남-00359<br><br>
					호스팅사업자 : (주)HAM 주소 : 서울 강남구 테헤란로38길 12 (역삼동)<br><br>
					개인정보관리책임자 : 함승윤(privacy@brandi.co.kr)<br><br>
					(주)브랜디가 제공하는 하이버 서비스는 통신판매중개자로서 통신판매 당사자가 아니며,<br><br>
					판매자가 등록한 상품정보 및 거래에 Ham은 책임지지 않습니다.<br><br>
					100% 정품<br><br>
					하이버에서 판매되는 모든 브랜드 제품은 정식제조, 정식수입원을 통해 유통되는 100% 정품입니다.<br><br>
					안전거래센터신고하기</p>
			</div>
			<div class="col">
				<p style="color: white; text-align: left;">영업시간 AM 10:00 ~ PM 17:00 (주말 및 공휴일 ㅣ휴뮤)<br><br>
	
					점심시간 AM 12:00 ~ PM 13:30</p>
			</div>
		</div>
	</div>
</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c3e148b9d3b6d9eee46fb31507354ea&libraries=services"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
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
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>