<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>

<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Edu+VIC+WA+NT+Beginner:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,600;1,200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Edu+NSW+ACT+Foundation:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="/resources/css/main2.css">
<title>member</title>
<style type="text/css">
</style>
</head>

<body>
	<!-------------------------------------------------------------------header -------------------------------------------------------------------->
	<%@include file="../../base/header.jsp"%>
	<!------------------------------------------------------------------------------------------------------------------------------------------------->

	<div id="wrapper" style="height: 1900px">

		<div style="width: 40%; height: 1400px; float: left; margin-top: 500px;">
			<div class="row" style="padding-right: 100px;">
				<div class="col d-flex justify-content-center">
					<p style="font-size: 80px;" class="h1">
						Create<br> Account
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center">
					<hr style="border: solid 4px #2E2E2E; width: 380px; opacity: .9;" class="h1">
				</div>
			</div>
		</div>




		<div class="line"></div>



		<div style="width: 60%; height: 1700px; float: right; padding-top: 200px;">
			<div class="container">
				<form method="post" name="form">
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">아이디&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="id" name="id" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
							<button type="button" class="btn btn-dark" id="good" style="width: 100px; padding: 0px; background-color: #2E2E2E;">중복확인</button>
							<input type="hidden" id="idAllowedNy" name="idAllowedNy">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div style="margin-left: 180px;">
						<div class='failure-message hide msg'>4자 이상의 영문 혹은 영문과 숫자를 조합</div>
						<div class='success-message hide msg success'>사용할 수 있는 아이디입니다.</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">비밀번호&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1 " id='pw' name='pw' style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class='password-message-wrap' style="margin-left: 180px;">
						<span class='password-failure-length hide msg'>7자 이상 입력</span> <span class='password-failure-comb hide msg'>영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span> <span class='password-failure-contn hide msg'>동일한 숫자 3개 이상 연속 사용 불가</span> <span class='password-failure-upper hide msg'>영어 대문자 하나 이상 포함</span> <span class='password-success-message hide msg success'>사용할 수 있는 비밀번호입니다.</span>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">비밀번호 확인&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id='pw-retype' style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div style="margin-left: 180px;">
						<div class="mismatch-message hide msg">동일한 비밀번호를 입력해주세요.</div>
						<div class="match-message hide msg success">동일한 비밀번호가 입력되었습니다.</div>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col mb-0">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">성별&nbsp;&nbsp;(필수)</p>
						<div class="form_radio_btn radio_male" style="float: left; margin-left: 310px;">
							<input id="radio-1" type="radio" name="gender" value="4" checked> <label for="radio-1">남자</label>
						</div>
						<div class="form_radio_btn" style="float: left;">
							<input id="radio-2" type="radio" name="gender" value="5"> <label for="radio-2">여자</label>
						</div>
					</div>
				</div>
				<!-- <div class="row mb-0">
					<div class="col mb-0">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">필수&nbsp;&nbsp;(필수)</p>
						<div class="form_radio_btn radio_male" style="float: left; margin-left: 310px;">
							<input id="radio-11" type="radio" name="authority" value="23" checked> <label for="radio-11">구매자</label>
						</div>
						<div class="form_radio_btn" style="float: left;">
							<input id="radio-22" type="radio" name="authority" value="25"> <label for="radio-22">판매자</label>
						</div>
					</div>
				</div> -->
				<!-- <div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">생년월일</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
						</div>
					</div>
				</div> -->
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">이메일&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="user_email" style="width: 140px; height: 50px; margin-left: 120px; margin-right: 20px;">@
							<input type="text" class="form-control pt-1" id="email_address" style="width: 140px; height: 50px; margin-left: 20px; margin-right: 20px;">
							<select class="form-select pt-1" id="domain-list" style="width: 140px; height: 50px; margin-right: 20px;">
								<option value="type">직접 입력</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="daum.net">daum.net</option>
							</select> 
							<button type="button" class="btn btn-dark" id="checkEmail" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">인증번호</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="email_address" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
						</div>
					</div>
				</div>
				<!-- <div class="row mb-3">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">이메일&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" name="email" id="email"class="form-control pt-1" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
								<select class="form-control" name="userEmail2" id="userEmail2" >
								<option>@naver.com</option>
								<option>@daum.net</option>
								<option>@gmail.com</option>
								<option>@hanmail.com</option>
								<option>직접입력</option>
							</select>
							<button type="button" class="btn btn-dark" id="checkEmail" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
							<input type="hidden" id="emailAllowedNy" name="emailAllowedNy">
						</div>
					</div>
				</div> -->
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">전화번호&nbsp;&nbsp;(필수)</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" name="number_phone" id="number_phone" name="number_phone"class="form-control pt-1" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
							<button type="button" class="btn btn-dark" id="checkPhone" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
							<input type="hidden" id="phoneAllowedNy" name="phoneAllowedNy">
						</div>
					</div>
				</div>
				<br><br><br>
				<!-- <div class="row mb-0"></div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">우편번호</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="sample4_postcode" name="address_zipcode" style="width: 500px; height: 50px; margin-left: 120px; margin-right: 20px;">
							<button type="button" class="btn btn-dark" onclick="sample4_execDaumPostcode()" style="width: 100px; padding: 0px; background-color: #2E2E2E;">인증</button>
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">주소</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="sample4_roadAddress" name="address_zip" style="width: 500px; height: 50px;">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">상세주소</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="exampleInputEmail1" name="address_detail" style="width: 500px; height: 50px; margin-left: 20px; margin-right: 20px;">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">위도</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="y" style="width: 500px; height: 50px;">
						</div>
					</div>
				</div>
				<div class="row mb-0">
					<div class="col">
						<p style="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">경도</p>
						<div class="form-floating d-flex justify-content-center">
							<input type="text" class="form-control pt-1" id="x" style="width: 500px; height: 50px;">
						</div>
					</div>
				</div> -->




				<!-- <div class="row loginbtn d-flex justify-content-center">
					<div class="col mb-3" style="margin-left: 310px;">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<p>모두 동의합니다</p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
							<p>(필수) 이용약관과 개인정보 수집 및 이용에 동의합니다.</p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<p>
								(필수) 만 14세 이상입니다.<br>만 19세 미만의 미성년자가 결제 시 법정대리인이 거래를 취소할 수 있습니다
							</p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
							<p>
								(선택) 이메일 및 SMS 마케팅 정보 수신에 동의합니다.<br>회원은 언제든지 회원 정보에서 수신 거부로 변경할 수 있습니다.
							</p>
						</div>
					</div>
				</div> -->
				<div class="row">
					<div class="col mb-0 d-flex justify-content-center">
						<button type="button" class="btn btn-primary textbox" id="subit-button" onclick="isAllCheck()">가입하기</button>
					</div>
				</div>
				<div class="row">
					<div class="col d-flex justify-content-center" style="margin-bottom: 10px; margin-top: 10px;">
						<hr style="width: 212px; color: black; float: left;">
						<p style="float: left; padding-left: 20px; padding-right: 20px;">또는</p>
						<hr style="width: 212px; color: black;">
					</div>
				</div>
				<div class="row">
					<div class="col mb-0 d-flex justify-content-center">
						<button type="button" class="btn btn-success border" style="width: 120px;">
							<i class="fa-sharp fa-solid fa-n"></i>
						</button>
						<button type="button" onclick="javascript:loginWithKakao()" class="btn btn-warning border ms-2" style="width: 120px;">
							<i class="fa-sharp fa-solid fa-comment"></i> <a id="kakao-login-btn" href="javascript:loginWithKakao()"></a>
							<p id="token-result"></p>
						</button>
						<button type="button" class="btn btn-danger border ms-2" style="width: 120px;">
							<i class="fa-brands fa-google"></i>
						</button>
						<button type="button" class="btn btn-info border ms-2" style="width: 120px;">
							<i class="fa-brands fa-facebook"></i>
						</button>

					</div>

				</div>
				</form>
			</div>
		</div>
		<!------------------------------------------------------------------- footer -------------------------------------------------------------------->

		<div class="container-fluid footer">
			<div class="row" style="padding-top: 40px;">
				<div class="col d-flex justify-content-center" style="padding-left: 90px; padding-bottom: 10px; padding-right: 0px;">
					<div>
						<a href="#" class="link-light ps-5" style="text-decoration: none;">Ham소개</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">자주묻는질문</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">개인정보처리방침</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
					</div>
				</div>
				<div class="col d-flex justify-content-center" style="padding-right: 137px; padding-left: 0px;">
					<div class="">
						<a href="#" class="link-light ps-5 instagram" style="text-decoration: none;">인스타그램</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">페이스북</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">개인정보처리방침</a> <a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
					</div>
				</div>
			</div>
			<hr style="color: white; margin-top: 0px;">
			<div class="row" style="padding-left: 40px;">
				<div class="col" style="padding-left: 145px;">
					<h1 style="color: white; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1>
				</div>
				<div class="col" style="padding-right: 20px;">
					<h1 style="color: white;">고객센터</h1>
				</div>
			</div>
			<div class="row" style="padding-left: 40px;">
				<div class="col" style="padding-left: 145px;">
					<p style="color: white; text-align: left;">
						대표이사 : 함승윤 사업자등록번호 : 220-88-93187 통신판매업신고 : 2016-서울강남-00359<br>
						<br> 호스팅사업자 : (주)HAM 주소 : 서울 강남구 테헤란로38길 12 (역삼동)<br>
						<br> 개인정보관리책임자 : 함승윤(privacy@brandi.co.kr)<br>
						<br> (주)브랜디가 제공하는 하이버 서비스는 통신판매중개자로서 통신판매 당사자가 아니며,<br>
						<br> 판매자가 등록한 상품정보 및 거래에 Ham은 책임지지 않습니다.<br>
						<br> 100% 정품<br>
						<br> 하이버에서 판매되는 모든 브랜드 제품은 정식제조, 정식수입원을 통해 유통되는 100% 정품입니다.<br>
						<br> 안전거래센터신고하기
					</p>
				</div>
				<div class="col">
					<p style="color: white; text-align: left;">
						영업시간 AM 10:00 ~ PM 17:00 (주말 및 공휴일 ㅣ휴뮤)<br>
						<br> 점심시간 AM 12:00 ~ PM 13:30
					</p>
				</div>
			</div>
		</div>
	</div>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- 카카오 API -->
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c3e148b9d3b6d9eee46fb31507354ea&libraries=services"></script>
	<!-- 카카오 API -->
	<!-- 카카오API (주소),(위도경도) -->
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
	<script>
    
    $("#good").on("click", function(){
		if(isMoreThan4Length(elInputUsername.value) && isUserNameChar(elInputUsername.value)) { 
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/member/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "id" : $("#id").val() }
					,success: function(response) {
						if(response.rt == "success") {
							alert("1")
							document.getElementById("id").classList.remove('is-invalid');
							document.getElementById("id").classList.add('is-valid');
		
							/* document.getElementById("idFeedback").classList.remove('invalid-feedback');
							document.getElementById("idFeedback").classList.add('valid-feedback');
							document.getElementById("idFeedback").innerText = "사용 가능 합니다."; */
							
							document.getElementById("idAllowedNy").value = 1;
							
						} else {
							alert("2")
							document.getElementById("id").classList.remove('is-valid');
							document.getElementById("id").classList.add('is-invalid');
							
							/* document.getElementById("idFeedback").classList.remove('valid-feedback');
							document.getElementById("idFeedback").classList.add('invalid-feedback');
							document.getElementById("idFeedback").innerText = "사용 불가능 합니다"; */
							
							document.getElementById("idAllowedNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
			
				})
		 }else{
				document.getElementById("id").classList.remove('is-valid');
				document.getElementById("id").classList.add('is-invalid');
				
				alert("아이디를 4자 이상의 영문 혹은 영문과 숫자를 조합으로 설정해주세요")
			}
		});
/* 아이디 중복검사 */
    // keyup
	
	
	// 이메일 합치기
	
/* 	$("#checkEmail").click(function email() {
		
		const emailF = $("#user_email").val();
		const address = $("#email_address").val();
		
		if(($("#user_email").val() == "") || ($("#email_address").val() == "")){
		  	alert("이메일을 입력해주세요.");
			document.getElementById("emailAllowedNy").value = 0
		  } else{
			$("#email").val(emailF+'@'+address);
			if(!email_check($("#email").val())){
					alert("이메일 형식에 맞게 입력해주세요");
					document.getElementById("email").value = ""
					document.getElementById("emailAllowedNy").value = 0
				 } 
			else{
				  alert("굿");
				  $("#email").val(emailF+'@'+address);
				  document.getElementById("emailAllowedNy").value = 1
				}
		  }
		
		}); */
		$("#checkEmail").click(function email() {
			if(!email_check($("#email").val())){
				alert("이메일 형식에 맞게 입력해주세요");
				document.getElementById("email").classList.remove('is-valid');
				document.getElementById("email").classList.add('is-invalid');
				document.getElementById("email").value = ""
				document.getElementById("emailAllowedNy").value = 0
				
			 } else{
				alert("인증이 완료되었습니다");
				document.getElementById("email").classList.remove('is-invalid');
				document.getElementById("email").classList.add('is-valid');
				document.getElementById("emailAllowedNy").value = 1
			}
		});	
		
		
	 
	 
	 
	$("#checkPhone").click(function phone() {
		if(!numberPhone_check($("#number_phone").val())){
		  	alert("전화번호 형식에 맞게 입력해주세요.");
		  	document.getElementById("number_phone").classList.remove('is-valid');
			document.getElementById("number_phone").classList.add('is-invalid');
			document.getElementById("number_phone").value = ""
			document.getElementById("phoneAllowedNy").value = 0
		  	
		  } else{
			alert("인증이 완료되었습니다");
			document.getElementById("number_phone").classList.remove('is-invalid');
			document.getElementById("number_phone").classList.add('is-valid');
			document.getElementById("phoneAllowedNy").value = 1
		  }
		
	 });
	
    </script>
	<script type="text/javascript">    
    
    /* 유효성검사 */
	  const elInputUsername = document.querySelector('#id');
	  const elFailureMessage = document.querySelector('.failure-message');
	  const elSuccessMessage = document.querySelector('.success-message');
	  const elPassword = document.querySelector('#pw');
	  const elPasswordRetype = document.querySelector('#pw-retype');
	  const elPWRetypeFailureMsg = document.querySelector('.mismatch-message');
	  const elPWRetypeSuccessMsg = document.querySelector('.match-message');
	  const elPWFailureLeng = document.querySelector('.password-failure-length');
	  const elPWFailureComb = document.querySelector('.password-failure-comb');
	  const elPWFailureContn = document.querySelector('.password-failure-contn');
	  const elPWFailureUpper = document.querySelector('.password-failure-upper');
	  const elPWSuccessMessage = document.querySelector('.password-success-message');
	  const elSubmitButton = document.querySelector('#subit-button');
	  

	  //-------- 유효성 검사 ---------//

	  // { 아이디 } input 유효성 검사
	  function usernameFn() {

	    if(isMoreThan4Length(elInputUsername.value) && isUserNameChar(elInputUsername.value)) {
	      /* elSuccessMessage.classList.remove('hide'); */
	      elFailureMessage.classList.add('hide');
	    } else {
	      elFailureMessage.classList.remove('hide');
	      /* elSuccessMessage.classList.add('hide');   */
	    }
	  }

	  elInputUsername.addEventListener('click', usernameFn);
	  elInputUsername.addEventListener('keyup', usernameFn);
	  
	  

	  // { 비밀번호 } input 유효성 검사  
	  function passwordFn () {
		 
		// 비밀번호 자리수
	    if( isMoreThan10Length(elPassword.value) ) {
	      elPWFailureLeng.classList.add('hide');
	    } else {
	      elPWFailureLeng.classList.remove('hide');
	    }
		// 

	    if( (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) &&
	        (isPasswordBlank(elPassword.value)) &&
	        (isPasswordChar(elPassword.value)) 
	      ) {
	      elPWFailureComb.classList.add('hide');
	    } else {
	      elPWFailureComb.classList.remove('hide');
	    }

	    if( isPasswordRepeat(elPassword.value) ) {
	      elPWFailureContn.classList.remove('hide');
	    } else {
	      elPWFailureContn.classList.add('hide');
	    }

	    if( (isPasswordUpper(elPassword.value)) ) {
	      elPWFailureUpper.classList.add('hide');
	    } else {
	      elPWFailureUpper.classList.remove('hide');
	    }

	    if( (isMoreThan10Length(elPassword.value)) && 
	        (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) && 
	        (isPasswordChar(elPassword.value)) && 
	        (isPasswordBlank(elPassword.value)) && 
	        (!isPasswordRepeat(elPassword.value)) && 
	        ((isPasswordUpper(elPassword.value)))
	      ) {
	    	document.getElementById("pw").classList.add('is-valid');
	      /* elPWSuccessMessage.classList.remove('hide'); */
	    } else {
	    	
	      	elPWSuccessMessage.classList.add('hide');
	    }

	  }

	  elPassword.addEventListener('click', passwordFn)
	  elPassword.addEventListener('keyup', passwordFn)
	  elPassword.addEventListener('keyup', passwordRetypeFn)
		
	  // { 비밀번호 확인 } input 유효성 검사
	  function passwordRetypeFn() {
		  if(document.getElementById("pw").value == null && document.getElementById("pw").value == ""){
		  } else{
			  if( isMatch(elPassword.value, elPasswordRetype.value) && isPasswordBlank(elPasswordRetype.value) ) {
			      //console.log('두 비밀번호가 동일하다..');
			      document.getElementById("pw-retype").classList.remove('is-invalid');
			      document.getElementById("pw-retype").classList.add('is-valid');
			      elPWRetypeFailureMsg.classList.add('hide');
			     /*  elPWRetypeSuccessMsg.classList.remove('hide'); */
			    } else {
			      //console.log('두 비밀번호가 다르다...!!!');
			      elPWRetypeFailureMsg.classList.remove('hide');
			      /* elPWRetypeSuccessMsg.classList.add('hide'); */
			      
			      document.getElementById("pw-retype").classList.remove('is-valid');
					document.getElementById("pw-retype").classList.add('is-invalid');
			    }
		  }
	  }

	  elPasswordRetype.onclick = passwordRetypeFn;
	  elPasswordRetype.onkeyup = passwordRetypeFn;
	  
	  if( isMoreThan10Length(elPassword.value) ) {
	      elPWFailureLeng.classList.add('hide');
	    } else {
	      elPWFailureLeng.classList.remove('hide');
	    }
	  //-------- 최종 유효성 검사에서 사용하는 함수다 ---------//

</script>

<script type="text/javascript">	    
	  
	  
	  

	  //-------- 유효성 검사에서 사용하는 함수다 ---------//

	  // [아이디] 길이가 4자 이상이면 true를 리턴하는 함수
	  function isMoreThan4Length(value) {
	    // 아이디 입력창에 사용자가 입력을 할 때 
	    // 글자 수가 4개이상인지 판단한다.
	    // 글자가 4개 이상이면 success메세지가 보여야 한다.
	    return value.length >= 4;
	  }

	  // [아이디] '영문, 숫자'만 있으면 true를 리턴하는 함수
	  function isUserNameChar(username) {
	    var letters = /^[A-Za-z0-9]+$/;

	    if( username.match(letters) ) {
	      return true;
	    } else {   
	      return false;
	    }
	  }

	  // [비밀번호] 길이가 10자 이상이면 true를 리턴하는 함수
	  function isMoreThan10Length (password) {
	    return password.length >= 7;
	  }

	  // [비밀번호] 영문이 있으면 true를 리턴하는 함수
	  function isPasswordEng (password) {
	    var letters = /[A-Za-z]/; // 잘 모르겠지만 이것은 정규표현식으로 AZ - az 모든 알파벳을 담고 있다.
	    
	    if( letters.test(password) ) {  // 정규표현식에 영어문자가 모두 들었고. 정규표현식의 메소드인 test()로 비밀번호 문자에 영어가 있는지 판단한다.
	      return true;
	    } else {
	      return false;
	    }
	  }

	  // [비밀번호] 숫자가 있으면 true를 리턴하는 함수
	  function isPasswordNum (password) {
	    var letters = /[0-9]/;
	    
	    if( letters.test(password) ) {
	      return true;
	    } else {
	      return false;
	    }
	  }

	  // [비밀번호] 특수문자가 있으면 true를 리턴하는 함수
	  function isPasswordSpeci (password) {
	    var letters = /[~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]/;
	    
	    if( letters.test(password) ) {
	      return true;
	    } else {
	      return false;
	    }
	  }

	  // [비밀번호][비밀번호 확인] 스페이스가 없을 경우 true를 리턴하는 함수
	  function isPasswordBlank (password) {
	    if( password.search(/\s/) === -1 ) {
	      return true;
	    } else {
	      return false;
	    }
	  }

	  // [비밀번호] '영문, 숫자, 특수문자'만 있으면 true를 리턴하는 함수
	  function isPasswordChar(password) {
	    var letters = /^[A-Za-z0-9~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]+$/;

	    if( password.match(letters) ) {
	      //console.log('가능한 것만 있네!');
	      return true;
	    } else {
	      //console.log('안되는 것도 있네?');
	      return false;
	    }
	  }

	  // [비밀번호] 동일한 숫자 3개 이상 연속 사용하면 true를 리턴하는 함수
	  function isPasswordRepeat (password) {
	    // password의 길이만큼 반복되는 반복문이 있어야 한다.
	    // 문자 하나와 나 자신+1과 나자신 +2와 비교한다.
	    // 숫자인지 아닌지 판단한다.숫자이면 true 아니면 false
	    for( let i=0; i<password.length-2; i++ ) {
	      if( password[i]===password[i+1] && password[i]===password[i+2] ) {
	        if( !isNaN(Number(password[i])) ) {
	          return true;
	        }
	      }
	    }
	    return false;
	  }

	  // [비밀번호] 영문자 중에 대문자 하나이상 포함되면 true를 리턴하는 함수
	  function isPasswordUpper (password) {
	    var letters = /[A-Z]/; 
	    
	    if( letters.test(password) ) { 
	      return true;
	    } else {
	      return false;
	    }
	  }

	  // [비밀번호 확인] 매치가 동일하면 true를 리턴하는 함수
	  function isMatch (password1, password2) {
	    if( password1 && password2 ) {
	      if(password1 === password2) {
	        return true;
	      }
	    } else {
	      return false;
	    }
	  }
	  
	  
	  function email_check(email) {
			var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			return reg.test(email);
		}
	  
	  function numberPhone_check(numberPhone){
		  var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		  return regPhone.test(numberPhone);
	  }
	  
	   
</script>
	<script type="text/javascript">

	//도메인 직접 입력 or domain option 선택
	const domainListEl = document.querySelector('#domain-list')
	const domainInputEl = document.querySelector('#email_address')
	// select 옵션 변경 시
	domainListEl.addEventListener('change', (event) => {
	  // option에 있는 도메인 선택 시
	  if(event.target.value !== "type") {
	    // 선택한 도메인을 input에 입력하고 disabled
	    domainInputEl.value = event.target.value
	    domainInputEl.disabled = true
	  } else { // 직접 입력 시
	    // input 내용 초기화 & 입력 가능하도록 변경
	    domainInputEl.value = ""
	    domainInputEl.disabled = false
	  }
	});
</script>

<script type="text/javascript">	  
	  
	var idCh1 = true;
	var pw1 = true;
	var pwCh1 = true;
	var numPhoneCh = true;
	var emailCh = true;
	  
	var goUrlInst = "/member/userIsrt"; /* #-> */
	var form = $("form[name=form]");
	  
	function isAllCheck() {  
		while(idCh1 || pw1 || pwCh1 || emailCh || numPhoneCh) {	  
			if(document.getElementById("idAllowedNy").value == 1){
				idCh1 = false;
			} else{
				alert("id중복체크를 해주세요");
				idCh1 = true;
				break;
				}
		    if( (isMoreThan10Length(elPassword.value)) && 
		        (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) &&
		        (isPasswordChar(elPassword.value)) &&
		        (isPasswordBlank(elPassword.value)) && 
		        (!isPasswordRepeat(elPassword.value)) && 
		        ((isPasswordUpper(elPassword.value)))
		      ) { // 비밀번호
		    	pw1 = false;
		   	} else{
		    	alert("pw조건을 맞추시오");
			   	pw1 = true;
			   	break;
		   	}
		   	if( isMatch(elPassword.value, elPasswordRetype.value) ) { // 비밀번호 확인
		    	pwCh1 = false;
			} else{
				alert("pw가 서로 다름");
				pwCh1 = true;
				break;
			   }
		   	
		   	
		   	if(document.getElementById("emailAllowedNy").value == 1){
		   		emailCh = false;
			  }else{
				alert("이메일 인증을 해주세요");
				emailCh = true;
				break;
			  } 
		   	
		   	if(document.getElementById("phoneAllowedNy").value == 1){
		   		numPhoneCh = false;
			  } else{
				alert("전화번호 인증을 해주세요");
				numPhoneCh = true;
				break;
			  }
		   	
		    if(idCh1 || pw1 || pwCh1 || emailCh || numPhoneCh ) {
		    	alert('모든 조건이 충족되어야합니다.');
			    break;
			} else {
				  alert('회원가입이 완료되었습니다!');
			      form.attr("action", goUrlInst).submit();
			}
		    
		}
	}  
	
	// email (https://devofroad.tistory.com/43)
	$('#checkEmail').click(function() {
		const eamil = $('#user_email').val() + '@' + $('#email_address').val(); // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
		const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
		
		$.ajax({
			type : 'get',
			url : '<c:url value ="/user/mailCheck?email="/>'+eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			success : function (data) {
				console.log("data : " +  data);
				checkInput.attr('disabled',false);
				code =data;
				alert('인증번호가 전송되었습니다.')
			}			
		}); // end ajax
	});
	</script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>