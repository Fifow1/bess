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
	<link rel="stylesheet" href="/resources/css/main.css">
  	<title>member</title>
	<style type="text/css">

</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->

<div id="wrapper" style="height: 2000px">

	
	<div style="width: 100%; height:2000px; float:right; padding-top: 200px;">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col mb-3 d-flex justify-content-center">
					<h3 style="font-weight: bold; font-size: 30px;">마이페이지</h3>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col mb-3 d-flex justify-content-center">
					<button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='./memberMypage_order.html'">주문/배송</button>
					<button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='./memberMypage_myinfo.html'">내정보</button>
					<button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;">쿠폰</button>
					<button type="button" class="btn btn-light" style="width: 120px; height: 50px;" onclick="location.href='./memberMypage_qa.html'">Q&A</button>
				</div>
			</div>
			<div class="row mb-0 ps-0"><h5 style="padding-left: 0px;font-size: 17px;">2022.6.23</h5></div>
			<div class="row" style="border-top:1px solid black;">
				<div class="col-2 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 20px; font-weight: 700;">logo</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">상품정보</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">주문금액</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">진행상황</h5></div>
			</div>
			<div class="row border-top border-bottom">
				<div class="col-2 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px;  font-size: 17px; ">
					<div class="black_mat2" style="width: 170px; height: 100px;"></div></h5>
				</div>
				<div class="col">
					<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; text-align: center;">CAT’S EYE DESK MAT</h5>
					<h5 style="padding-left: 0px; margin-top: 10px; font-size: 17px; color: gray;text-align: center;">black</h5>
					<h5 style="padding-left: 0px; margin-top: 10px; font-size: 17px; color: gray; text-align: center;">30000원</h5>
				</div>
				<div class="col d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 13px; font-size: 17px; font-weight: 900 ">30000원</h5></div>
				<div class="col d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 13px; font-size: 17px; font-weight: 900">배송완료</h5></div>
			</div>
			<div class="row" style="border-bottom:1px solid black;">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" style="margin-right: 10px;">배송조회</button>
					<button type="button" class="btn btn-dark" style="margin-right: 10px;">환불요청</button>
					<button type="button" class="btn btn-warning">구매확정</button>
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



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>