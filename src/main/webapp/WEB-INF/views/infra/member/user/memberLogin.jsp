<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true" %>

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
	
	 <!-- Datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
	<link rel="stylesheet" href="/resources/css/main2.css">
  	<title>memberLogin</title>
	<style type="text/css">

</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->

<div id="wrapper"style=" height: 1600px;">

	<div style="width: 40%; height:1000px; float:left; margin-top: 350px;">
		<div class="row">
			<div class="col d-flex justify-content-center">
				<p style="font-size: 80px; margin-right: 50px;" class="h1">Login(user)</p>
			</div>
		</div>
		<!-- <div class="row">
			<div class="col d-flex justify-content-center">
				<hr style="border: solid 4px #2E2E2E; width:340px; opacity: .9; margin-right: 50px;">
			</div>
		</div> -->
	</div>




	<div class="line"></div>


	<div style="width: 60%; height: 800px; float: right; padding-top: 210px;">
		<div class="container">
			<p style ="margin-bottom: 50px; margin-left: 510px; font-weight: 900;font-size: 20px;">로그인</p>
			<p style ="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">아이디</p>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col d-flex justify-content-center">
					<input type="text" class="form-control" id="id" value="lasldjf" style="width: 500px; height: 50px;">
				</div>
			</div>
			<p style ="margin-bottom: 4px; margin-left: 310px; font-weight: 900;">비밀번호</p>
			<div class="row loginbtn d-flex justify-content-center">
				<div class="col mb-3 d-flex justify-content-center">
					<input type="password" class="form-control" id="pw" value="la381" style="width: 500px; height: 50px;">
				</div>
			</div>
			
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center">
					<button type="button" class="btn btn-primary border" id="btnLogin" style="width: 500px; height: 50px;">로그인</button>	
				</div>
			</div>
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center">
					<button type="button" class="btn btn-secondary border" style="width: 500px; height: 50px;" id="btnLogin" onclick="location.href='/member/userRegFormSub'">회원가입</button>
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center" style="margin-bottom: 0px; margin-top: 10px;">
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
					<button type="button" class="btn btn-warning border ms-2" style="width: 120px;">
						<i class="fa-sharp fa-solid fa-comment"></i>
					</button>
					<button type="button" class="btn btn-danger border ms-2" style="width: 120px;">
						<i class="fa-brands fa-google"></i>
					</button>
					<button type="button" class="btn btn-info border ms-2" style="width: 120px;">
						<i class="fa-brands fa-facebook"></i>
					</button>
				</div>
			</div>
			
			<!-- <button type="button" class="btn btn-danger border ms-2" id="btnLogout" style="width: 120px;">나가기</button> -->
			
			<div class="row">
				<div class="col mb-2 mt-2 d-flex justify-content-center" style="padding-right: 370px;" onclick="location.href='./memberFindid_phone.html'">
					<a href="#" class="link-dark ps-5">아이디를 잊어버리셨나요?</a>
				</div>
			</div>
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center" style="padding-right: 355px;" onclick="location.href='./memberFindpwd_phone.html'">
					<a href="#" class="link-dark ps-5">비밀번호를 잊어버리셨나요?</a>
				</div>
			</div>
		</div>
	</div>
<%-- sessSeq: <c:out value="${sessSeq }"/><br>
sessName: <c:out value="${sessName }"/><br>
sessId: <c:out value="${sessId }"/><br> --%>


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
<script>
var goUrlMain = "/a";
var form = $("form[name=form]");

$("#btnLogin").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "pw" : $("#pw").val()
				/* , "autoLogin" : $("#autoLogin").is(":checked") */
				}
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_INDEX_ADMIN;
					} */
					alert("로그인 성공");
					location.href = '/main';	
					
					
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
$("#btnLogout").on("click", function(){
	/* if(validation() == false) return false; */
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/member/logoutProc"
		/* ,data : $("#formLogin").serialize() */
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/member/userLogin";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});




</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>