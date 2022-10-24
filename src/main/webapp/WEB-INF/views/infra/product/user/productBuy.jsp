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
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/resources/css/main.css">
  	<title>productList</title>
	<style type="text/css">
	h5,h6,p{
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
<div id="wrapper"style=" height: 3400px;">
		<div class="container" style="margin-top: 150px; width: 1000px;">
			<div class="row mb-2 ps-0"><h5 style="padding-left: 0px;font-size: 17px;">주문 상품 정보</h5></div>
			<div class="row border-bottom pb-2" style="border-top:1px solid black;">
				<div class="col-2 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">사진</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">상품정보</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">옵션</h5></div>
				<div class="col d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 0px; font-size: 17px; font-weight: 700;">주문금액</h5></div>
			</div>
			<div class="row border-bottom">
				<div class="col-2 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px;  font-size: 17px; ">
					<div class="black_mat2" style="width: 170px; height: 100px;"></div></h5>
				</div>
				<div class="col d-flex justify-content-center d-flex align-items-center">
					<h5 style="padding-left: 0px;font-size: 17px; text-align: center; font-weight: 600;">CAT’S EYE DESK MAT</h5>
				</div>
				<!-- <div class="col d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 13px; font-size: 17px; ">적용 가능한 쿠폰이 없습니다</h5></div> -->
				<div class="col d-flex justify-content-center d-flex align-items-center">
					<h5 style="padding-left: 0px; font-size: 17px; text-align: center; font-weight: 600;">black</h5>
				</div>
				<div class="col d-flex justify-content-center d-flex align-items-center">
					<h5 style="padding-left: 0px; margin-bottom: 13px; font-size: 17px; font-weight: 600;">30000원</h5>
				</div>
			</div>
			
			
			<div class="row" style="border-bottom:1px solid black;">
				<div class="col d-flex justify-content-end pt-2">
					<h6>상품</h6>&nbsp;
					<h6 style="color: black; font-weight: 600;">30000</h6>
					<h6>원</h6>&nbsp;
					<h6 style="color: black;">+</h6>&nbsp;
					<h6>배송</h6>&nbsp;
					<h6 style="color: black; font-weight: 600;">0</h6>
					<h6>원</h6>
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-end">
					<h6 style="font-size: 17px; font-weight: 700; color: black;">총 주문금액</h6>
					<h6 style="color: #FFBF00; margin-left: 30px; font-weight: 600;">30000</h6>
					<h6 style="font-size: 17px; font-weight: 700; color: black;">원</h6>
				</div>
			</div>
<!-------------------------------------------------------주문자 정보 ------------------------------------------------>
			<br><br><br>
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
				<h5 style="font-size: 17px;padding-left: 0px;">주문자 정보</h5>
				</div>
				<div class="col  d-flex justify-content-end">
				</div>
			</div>
			<div class="row mb-0" style="border-top:1px solid black;">
				<div class="col-2 mb-0 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">이름</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="함승윤">
				</div>
			</div>
			<div class="row border-top border-bottom mb-0">
				<div class="col-2 mb-0 d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">휴대폰</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="010" style="width: 200px;">&nbsp;&nbsp;&nbsp;<hr style="width: 10px; "class="border border-dark opacity-100"";>&nbsp;&nbsp;&nbsp;
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="6477" style="width: 200px;">&nbsp;&nbsp;&nbsp;<hr style="width: 10px; "class="border border-dark opacity-100"";>&nbsp;&nbsp;&nbsp;
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="5721" style="width: 200px;">
				</div>
			</div>
			<div class="row mb-0" style="border-bottom:1px solid black;">
				<div class="col-2  mb-0d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">이메일</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="lasldjf123" style="width: 220px;"> &nbsp;&nbsp;&nbsp;@&nbsp;&nbsp;&nbsp;
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="naver.com" style="width: 220px;">&nbsp;&nbsp;&nbsp;
					<select class="form-select" id="inputGroupSelect01" style="width: 220px;">
						<option selected>Choose...</option>
						<option value="1">naver.com</option>
						<option value="2">daum.net</option>
						<option value="3">gmail.com</option>
						<option value="3">직접입력</option>
					</select>
				</div>
			</div>
<!-------------------------------------------------------배송지 정보 ------------------------------------------------>
			<br><br><br>
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 17px;padding-left: 0px; margin-bottom: 0px;">배송지 정보</h5>
				</div>
				<div class="col d-flex justify-content-end">
				<a href="#" class="link-warnning ps-5" style="text-decoration: none;"><h6 style="color: #FFBF00; font-weight: 600;">변경하기</h6></a>
				</div>
			</div>
			<div class="row mb-0" style="border-top:1px solid black;">
				<div class="col-2 mb-0 d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">수령인</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="함승윤">
				</div>
			</div>
			<div class="row border-top border-bottom mb-0">
				<div class="col-2 mb-0 d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">휴대폰</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="010" style="width: 200px;">&nbsp;&nbsp;&nbsp;<hr style="width: 10px; "class="border border-dark opacity-100"";>&nbsp;&nbsp;&nbsp;
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="6477" style="width: 200px;">&nbsp;&nbsp;&nbsp;<hr style="width: 10px; "class="border border-dark opacity-100"";>&nbsp;&nbsp;&nbsp;
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="5721" style="width: 200px;">
				</div>
			</div>
			<div class="row border-bottom border-bottom mb-0">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 45px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">배송주소</h5></div>
				<div class="col" style="margin-top: 10px;">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="02850" style="width: 200px; margin-bottom: 10px;">
					<div style="float: left;" >
						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="서울 성북구 " style="width: 500px; margin-right: 20px;">
					</div>
					<div>
						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="101호" style="width: 200px;">
					</div>
				</div>
			</div>
			<div class="row mb-0" style="border-bottom:1px solid black;">
				<div class="col-2  mb-0d-flex justify-content-center d-flex align-items-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700;">배송메모</h5></div>
				<div class="col mb-0 d-flex align-items-center">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="문 앞에 놓아주세요">
				</div>
			</div>
<!------------------------------------------------------------------- 쿠폰 -------------------------------------------------------------------->
			<br><br><br><br>
			<!-- <div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 17px;padding-left: 0px;">쿠폰</h5>
				</div>
			</div>
			<div class="row" style="border-bottom: 1px solid black;border-top: 1px solid black;">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">쿠폰</h5></div>
				<div class="col d-flex align-items-center">
					<select class="form-select" id="inputGroupSelect01" style="width: 300px;">
						<option selected>선택해주세요</option>
						<option value="1">naver.com</option>
						<option value="2">daum.net</option>
						<option value="3">gmail.com</option>
						<option value="3">직접입력</option>
					</select>
					<button type="button" class="btn btn-dark" style="margin-left: 10px;width: 100px;">사용</button>
				</div>
			</div>
			<br><br><br><br> -->
<!------------------------------------------------------------------- 최종 금액 -------------------------------------------------------------------->
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 17px;padding-left: 0px;">최종 결제 금액</h5>
				</div>
			</div>
			<div class="row" style="border-top: 1px solid black;">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">총 상품금액</h5></div>
				<div class="col d-flex justify-content-end"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">30000원</h5></div>
			</div>
			<div class="row">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">배송비</h5></div>
				<div class="col d-flex justify-content-end"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">0원</h5></div>
			</div>
			<div class="row" style="border-bottom: 1px solid black;">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">총 결제금액</h5></div>
				<div class="col d-flex justify-content-end"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center; color:#FFBF00 ">30000원</h5></div>
			</div>
			
<!------------------------------------------------------------------- 결제수단 -------------------------------------------------------------------->	
			
			<br><br><br>
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 17px;padding-left: 0px;">결제수단</h5>
				</div>
			</div>
			<div class="row border-bottom" style="border-top: 1px solid black;">
				<div class="col-2 d-flex align-items-center d-flex justify-content-center"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">카드 간편결제</h5></div>
				<div class="col d-flex align-items-center">
					<button type="button" class="btn btn-light" style="width: 200px; height: 100px; margin-top: 10px;"><h5 style="font-weight: 700; font-size: 13px;">카드 등록하기</h5></button>
				</div>
			</div>
			<div class="row mb-5" style="border-bottom: 1px solid black;">
				<div class="col-2"><h5 style="padding-left: 0px; margin-top: 20px; margin-bottom: 20px; font-size: 17px; font-weight: 700; text-align: center;">일반결제</h5></div>
				<div class="col d-flex align-items-center">
					<a href="#" class="link ps-5 pt-3" style="text-decoration: none;"><p style="color:#04B404">naver pay</p></a>
					<a href="#" class="link-warning ps-5 pt-3" style="text-decoration: none;"><p>kakao pay</p></a>
					<a href="#" class="link ps-5 pt-3" style="text-decoration: none;"><p>toss pay</p></a>
					<a href="#" class="link-dark ps-5 pt-4" style="text-decoration: none;"><p>신용/체크카드</p></a>
				
				</div>
			</div><br><br>
<!------------------------------------------------------------------- 이용동의 -------------------------------------------------------------------->
			<!-- <br><br><br>
			<div class="row mb-0 ps-0">
				<div class="col" style="padding-left: 0px;">
					<h5 style="font-size: 17px; padding-left: 0px;">구매조건/약관 및 개인정보 이용 동의	</h5>
				</div>
			</div>
			<div class="row" style="border-bottom: 1px solid black; border-top: 1px solid black;">
				<div class="col">
					<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
					<h5 style="font-size: 16px; font-weight: bold; margin-top: 20px;margin-bottom: 20px;">Ham 약관 동의</h5>
					<h5 style="font-size: 16px; font-weight: bold; margin-top: 20px;margin-bottom: 20px;">개인정보수집 밒 이용에 대한 안내</h5>
					<h5 style="font-size: 16px; font-weight: bold; margin-top: 20px;margin-bottom: 20px;">구매조건 및 개인정보 제3자 제공</h5>
				</div>
			</div>
			<div class="row" >
				<div class="col">
					<h5 style="font-size: 16px;">위 상품의 구매조건읠 확인하였으며, 경제 및 개인정보 제 3자 제공에 모두 동의합니다.</h5>
				</div>
			</div>
			<br><br><br><br><br><br> -->
			<div class="row" >
				<div class="col d-flex justify-content-center mt-5">
					<button type="button" class="btn btn-dark" style="width: 300px;" onclick="location.href='./productbuy_result.html'">결제하기</button>
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