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
	
	<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  	<title>member</title>
	<style type="text/css">

</style>

</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->

<div id="wrapper" style="height: 1500px">

	<div style="width: 40%; height:600px; float:left; margin-top: 290px;">
		<div class="row" style="padding-right: 100px;">
			<div class="col d-flex justify-content-center">
				<p style="font-size: 80px;" class="h1">Create<br> Account</p>
			</div>
		</div>
		<div class="row">
			<div class="col d-flex justify-content-center">
				<hr style="border: solid 4px #2E2E2E; width: 380px; opacity: .9; "class="h1">
			</div>
		</div>
	</div>




<div class="line"></div>

	
	
	<div style="width: 60%; height:600px; float:right; padding-top: 250px;">
		<div class="container">
			<div class="row mb-0">
				<div class="col">
					<div class="form-floating d-flex justify-content-center mb-0">
						<div class="border mb-0 border-bottom-0" style="width: 430px; height: 80px;">
							<div style="margin-left: 20px; margin-top: 20px;">
								<input class="form-check-input float-start" type="checkbox" value="" id="cbx_chkAll">
								<label class="form-check-label ms-4" for="cbx_chkAll">모두 동의합니다</label>
								<p class="ms-4" style="font-size: 12px;">이용약관, 개인정보 수집 및 이용, 처리 위탁에 모두 동의합니다.</p>
								<!-- <p style="font-size: 15px;">모두 동의합니다</p>
								<p style="font-size: 12px;">이용약관, 개인정보 수집 및 이용, 처리 위탁에 모두 동의합니다.</p> -->
							</div>
						</div>
					</div>
					<div class="form-floating d-flex justify-content-center mb-0">
						<div class="border mb-0 border-bottom-0" style="width: 430px; height: 60px;">
							<div style="margin-left: 20px; margin-top: 15px; float: left;">
								<input class="form-check-input float-start" type="checkbox" value="1" id="ch1" name="essentialChk">
								<label class="form-check-label ms-4" for="ch1">이용 약관 동의(필수)</label>
							</div>
							<div style="float: right; margin-top: 10px; margin-right: 15px;">
								<button type="button" class="btn btn-primary">보기</button>
							</div>
						</div>
					</div>
					<div class="form-floating d-flex justify-content-center mb-0">
						<div class="border mb-0 border-bottom-0" style="width: 430px; height: 60px;">
							<div style="margin-left: 20px; margin-top: 15px; float: left;">
								<input class="form-check-input float-start" type="checkbox" value="1" id="ch2" name="essentialChk">
								<label class="form-check-label ms-4" for="ch2">개인정보 수집 및 이용 동의(필수)</label>
							</div>
								<div style="float: right; margin-top: 10px;margin-right: 15px;">
								<button type="button" class="btn btn-primary">보기</button>
							</div>
						</div>
					</div>
					<div class="form-floating d-flex justify-content-center mb-0">
						<div class="border mb-0" style="width: 430px; height: 60px;">
							<div style="margin-left: 20px; margin-top: 15px; float: left;">
								<input class="form-check-input float-start" type="checkbox" value="1" id="ch3" name="essentialChk">
								<label class="form-check-label ms-4" for="ch3">개인정보 처리 위탁 동의(필수)</label>
							</div>
								<div style="float: right; margin-top: 10px;margin-right: 15px;">
								<button type="button" class="btn btn-primary">보기</button>
							</div>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col mb-0 d-flex justify-content-center">
							<button type="button" class="btn btn-outline-primary textbox" style="width: 220px;">취소</button>		
							<button type="button" class="btn btn-primary textbox" onclick="isAllCheck()" style="width: 220px;">다음</button>
						</div>
					</div>
					
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
<script type="text/javascript">
$(document).ready(function() {
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=essentialChk]").prop("checked", true);
		else $("input[name=essentialChk]").prop("checked", false);
	});

	$("input[name=essentialChk]").click(function() {
		var total = $("input[name=essentialChk]").length;
		var checked = $("input[name=essentialChk]:checked").length;

		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
});
	
	
	var goUrlRegForm = "/member/userRegForm";
	
	/*  function isAllCheck() {  
		
		if ($("input:checked[Name='essentialChk']").is(":checked")){ 
			alert('x');
			attr("action", goUrlRegForm).submit();
		}else{
			alert('o');
		}
	}  */
	
	
	
	 function isAllCheck() {  
		 /* while(checkbtn) { */	 
			if($("input:checked[id='ch1']").is(":checked")
				&& $("input:checked[id='ch2']").is(":checked") 
				&& $("input:checked[id='ch3']").is(":checked")){
				alert('hi');
				location.href = goUrlRegForm
				/* checkbtn = false; */
			} else{
				alert("필수항목을 체크해주세요");
				/* break;
				checkbtn = true; */
			}
	/* 	}  */
	}
	
	
		/* if(document.getElementsByName("essentialChk").checked) {
			alert('0')
		    attr("action", goUrlRegForm).submit();
		} */
		    
		
</script>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>