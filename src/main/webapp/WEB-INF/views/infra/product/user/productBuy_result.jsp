<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
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
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../css/main.css">
  	<title>productList</title>
	<style type="text/css">

</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------- 쿠폰 -------------------------------------------------------------------->
<br><br><br><br><br><br><br>	
<div id="wrapper"style=" height: 1500px;">
		<div class="container" style="width: 40%">
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 23px; padding-left: 0px; text-align: center;">결제가 완료되었습니다.</h5>
					<br>
					<h5 style="font-size: 23px; padding-left: 0px; text-align: center;">주문배송은 마이페이지에서 조회 가능합니다.</h5>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div class="row">
				<div class="col-2">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">주문번호</h5>
				</div>
				<div class="col d-flex align-items-center">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">202112093801</h5>
				</div>
			</div>
			<div class="row" style="border-top: 1px solid black;">
				<div class="col-2">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">결제정보</h5>
				</div>
				<div class="col d-flex align-items-center">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">무료결제</h5>
				</div>
			</div>
			<div class="row" style="border-top: 1px solid black;">
				<div class="col-2">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">결제금액</h5>
				</div>
				<div class="col d-flex align-items-center">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 500; text-align: center;">30000원</h5>
				</div>
			</div>
			<div class="row" style="border-top: 1px solid black;">
				<div class="col-2">
					<h5 style="padding-left: 0px; margin-top: 30px; margin-bottom: 20px; font-size: 17px; font-weight: 500; text-align: center;">다운로드</h5>
				</div>
				<div class="col d-flex align-items-center">
					<h5 style="padding-left: 0px; margin-top: 30px; margin-bottom: 20px; font-size: 17px; font-weight: 500; text-align: center;">컨텐츠 상품은 주문배송 조회에서 다운로드 해주세요</h5>
				</div>
			</div>
			<div class="row">
				<div class="col ps-0">
					<button type="button" class="btn btn-dark" style="width: 365px;"onclick="location.href='../member/memberMypage_order.html'">마이페이지</button>
				</div>
				<div class="col d-flex align-items-center ps-1">
					<button type="button" class="btn btn-outline-dark" style="width: 365px;">주문서로 이동</button>
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
				<p style="color: white; text-align: left;">대표이사 : 서정민 사업자등록번호 : 220-88-93187 통신판매업신고 : 2016-서울강남-00359<br><br>
					호스팅사업자 : (주)브랜디 주소 : 서울 강남구 테헤란로38길 12 (역삼동)<br><br>
					개인정보관리책임자 : 주현주(privacy@brandi.co.kr)<br><br>
					(주)브랜디가 제공하는 하이버 서비스는 통신판매중개자로서 통신판매 당사자가 아니며,<br><br>
					판매자가 등록한 상품정보 및 거래에 하이버는 책임지지 않습니다.<br><br>
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



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>
</html>