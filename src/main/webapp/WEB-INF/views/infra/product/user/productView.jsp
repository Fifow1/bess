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
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/resources/css/main2.css" type="text/css">
  	<title>productList</title>
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
				<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="./productList_deskmat.html">shop</a></li>
				<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="#">community</a></li>
			</ul>
		</div>
		<div id="headerR" class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button class="btn btn-outline" type="button" onclick="location.href='../member/memberLogin.html'" style="color: #FFFFFF">
				<i class="fa-solid fa-user"></i>
			</button>
			<button class="btn btn-outline me-md-2" type="button" style="color: #FFFFFF">
				<i class="fa-solid fa-cart-shopping"></i>
			</button>
		</div>
	</div>
</nav>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
<div id="wrapper"style=" height: 4300px;">

	<div style="height: 900px;">
		<div style="width: 50%; height:900px; float: left;">
			<div style="margin-left: 400px; margin-top: 200px;">
				<div class="black_mat2" style="width: 550px; height: 320px;"></div>
				<div>
					<div class="black_mat2" style="width: 175px; height: 110px; margin-right:13px;"></div>
					<div class="green_mat2" style="width: 175px; height: 110px; margin-right:13px;"></div>
				</div>
			</div>
		</div>
		<div style="width: 45%; height:900px; float: right; margin-left: 50px;">
			<div style="margin-right: 300px; margin-top: 200px;">
				<div style="margin-bottom: 30px;">
					<h2><c:out value="${item.title }"/></h2>
				</div>
				<div style="margin-bottom: 30px;">
					<div style="float: left;">
						<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
					</div>
					<p style="color: gray; padding-top: 2px; padding-left: 100px;" class="h6">(7 review)</p>
				</div>
				<div style="display: inline-block;">
					<h5 style="color: gray;"><c:out value="${item.price }"/></h5>
				</div>
				<div style="padding-left: 10px; display: inline-block;">
					<h6 style="text-align: left;">(7.4sold)</h6>
				</div>
				<div style=" margin-top: 40px;">
					<div class="form_radio_btn radio_male" style="height:30px; width:100px; display: inline-block;">
						<input id="radio-1" type="radio" name="gender" value="4" checked><label for="radio-1" style="line-height: 30px;">green</label>
					</div>
					<div class="form_radio_btn" style="height:30px; width:100px; display:inline-block;">
						<input id="radio-2" type="radio" name="gender" value="5"><label for="radio-2" style="line-height: 30px;">black</label>
					</div>
				</div>
				<div>
					<hr style="width: 400px;"> 
					<div style="margin-bottom: 50px;margin-top: 50px;">
						<div style="padding-bottom: 1px;">
							<div style="float: left;"><p>주문수량</p></div>
							<div style="margin-left: 370px;"><p>0개</p></div>
						</div>
						
						<div>
							<div style="float: left;"><p>총 상품 금액</p></div>
							<div style="margin-left: 370px;" ><p>0개</p></div>
						</div>
					</div>
					<hr style="width: 400px;"> 
				</div>
				<div>
					<div style="float: left; margin-right: 20px;"><button style="width: 190px;" type="button" class="btn btn-primary"onclick="location.href='productbuy.html';">구입하기</button></div>
					<div><button style="width: 190px;"  type="button" class="btn btn-outline-primary">장바구니</button></div>
					<div><button style="width: 400px;"  type="button" class="btn btn-success">네이버 페이</button></div>
				</div>
			</div>	
		</div>
	</div>
	<div class="main" style="margin-right: 450px;">
		<input id="tab1" type="radio" name="tabs" checked><label for="tab1"class="label_tab" style="padding-left:95px;padding-right: 95px;">상품정보</label> 
		<input id="tab2" type="radio" name="tabs"><label for="tab2"class="label_tab" style="padding-left:95px;padding-right: 95px;">리뷰</label>
		<input id="tab3" type="radio" name="tabs"><label for="tab3"class="label_tab" style="padding-left:95px;padding-right: 95px;">Q & A</label>
		<input id="tab4" type="radio" name="tabs"><label for="tab4"class="label_tab" style="padding-left:95px;padding-right: 95px;">주문정보</label> 
<!-------------------------------------------------------------------상품정보------------------------------------------------------------------------------>
		<section id="content1">
			<div class="detail_img1"></div>
			<div class="detail_img2"></div>
			<div class="detail_img3"></div>
			<div class="detail_img4"></div>
			<div class="detail_img5"></div>
			<div style="margin-left: 100px; margin-top: 30px;"><p>*모니터의 환경에 따라 실제 색상과 차이가 있을 수 있습니다.<br>*CAT’S EYE Desk mat는 택배박스에 포장 되어 발송됩니다.<br>*제품 포장은 별도의 안내 없이 변경될 수 있습니다.</p></div>
		</section>
<!---------------------------------------------------------------------리뷰---------------------------------------------------------------------------->
		<section id="content2">
			<div style="margin-bottom: 60px; margin-top: 10px;">
				<div style="float: left;">상품리뷰</div>
				<div  class="d-flex justify-content-end" style="float: right; width: 400px; height: 40px;"><button type="button" class="btn btn-dark">리뷰 작성하기</button></div>
			</div>
			<div style="border-bottom: 1px solid black; border-top:1px solid black; margin-top:20px; width: 100%;height: 300px;">
				<div style="width: 400px;">
					<div style="margin-top: 20px; padding-bottom: 1px;">
						<div style="float: left;"><i class="fa-solid fa-circle-user fa-4x"></i></div>
						<div style="padding-top: 5px; padding-left: 80px;">
							<div><h6 style="color: black; text-align: left; font-weight: bold; margin-bottom: 0px;">lasldjf</h6></div>
							<div><h6 style="color: black; text-align: left; font-weight: bold;">2022.06.23</h6></div>
						</div>
					</div>
				</div>
				<div><h6 style="text-align: left; font-size: 13px;">CAT’S EYE DESK MAT(green)</h6></div>				
				<div><p>너무 좋습니다.</p></div>
				<div class="black_mat2" style="width: 170px; height: 100px;"></div>				
			</div>
		</section>
<!------------------------------------------------------------------------Q&A------------------------------------------------------------------------>
		<section id="content3">
			<div style="margin-bottom: 10px; margin-top: 10px;">
				<div style="float: left;"><h5>Q&A</h5></div>
				<div class="d-flex justify-content-end" style="float: right; width: 400px; height: 40px;"><button type="button" class="btn btn-dark">Q%A 작성하기</button></div>
			</div>
			<table class=""style="width: 100%; margin-top: 20px; border-top: 1px solid black;">
				<thead>
					<tr>
						<th class="table_head" style="width: 120px;"><p style="font-weight: bolder;">답변상태</p></th>
						<th class="table_head" style="width: 400px;"><p>내용</p></th>
						<th class="table_head" style="width: 100px;"><p>작성자</p></th>
						<th class="table_head" style="width: 150px;"><p>작성일</p></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="table_body">답변완료</th>
						<td class="table_body">비밀글입니다.</td>
						<td class="table_body">함승윤</td>
						<td class="table_body">2022.06.23</td>
					</tr>
					<tr>
						<th class="table_body">답변완료</th>
						<td class="table_body">비밀글입니다.</td>
						<td class="table_body">함승윤</td>
						<td class="table_body">2022.06.23</td>
					</tr>
					<tr>
						<th class="table_body">답변대기</th>
						<td class="table_body">비밀글입니다.</td>
						<td class="table_body">승윤</td>
						<td class="table_body">2022.06.23</td>
					</tr>
				</tbody>
			</table>
		</section>
<!-------------------------------------------------------------------주문정보------------------------------------------------------------------------------>
		<section id="content4">
			<div style="width: 100%">
				<div class="mb-0 d-flex justify-content-start" style="height: 150px; width: 100%; border-top: 1px solid gray;">
					<div class="box_QA d-flex justify-content-center" style="float: left; "><p style="margin-bottom: 0px;">스토어 고객센터</p></div>
					<div style="width: 800px;margin-top: 15px;">
						<p style="margin-left:20px;">주중 11:00 AM ~ 6:00 PM, 주말 및 공휴일 휴무 <br><br> 이메일 : anotherarchive@naver.com <br><br> 전화번호 : 070-4048-5800</p>
					</div>
				</div>
				<div class="mb-0 d-flex justify-content-start" style="height: 70px;width: 100%; border-top: 1px solid gray;">
					<div class="box_QA d-flex justify-content-center" style="float: left;"><p style="margin-bottom: 0px;">배송정보</p></div>
					<div style="width: 800px;"><p style=" margin-left: 20px; margin-top: 20px;">도서산간 지역 추가 배송비 없음 / 결제 완료 후 2~5일 후 출고</p></div>
				</div>
				<div class="mb-0 d-flex justify-content-start" style="height: 1150px;width: 100%; border-top: 1px solid gray;">
					<div class="box_QA d-flex justify-content-center" style="float: left;"><p style="margin-bottom: 0px;">교환/환불정보</p></div>
						<div style="width: 800px;">
							<p style="margin-left: 20px; margin-top: 30px;">반품 및 교환은 상품 수령 후 7일 이내에 신청하실 수 있습니다.<br><br> 재화 등의 내용이 표시, 광고의 내용과 다르거나 계약내용과 <br><br>다르게 이행된 경우에는 전자상거래법 제>17조3항에 따라 청약철회 를 할 수 있습니다.<br><br> 교환/환불이 발생하는 경우 그 원인을 제공한 자가 배송비를 부담합니다. <br><br>- 고객변심 : 최초 배송비 + 반품 배송비 + (교환의 경우) 교환 배송비는 고객이 부담<br><br> - 판매자귀책 : 최초 배송비 + 반품 배송비 + (교환의 경우) 교환 배송비는 <br><br>판매자가 부담 다음의 경우는 교환 및 환불이 불가능합니다.<br><br>
								- 반품/교환 가능 기간을 초과한 경우<br><br> - 상품 및 구성품을 분실하였거나 취급부주의로 인한 오염/파손/고장된 경우 <br><br>- 상품을 착용하였거나 세탁, 수선한 경우<br><br> - 소비자 과실로 인한 옷의 변색(예 : 착생, 화장품 오염 등) <br><br>- 착용으로 인한 니트류 상품의 늘어남 발생 및 가죽 제품의 주름 발생<br><br> - 명품은 택 제거 후 반품 불가 <br><br>- 상품의 가치가 현저히 감소하여 재판매가 불가할 경우<br><br> - 구매확정된 주문의 경우 <br><br>- 귀금속류의 경우는 소비자분쟁해결 기준에 의거 교환만 가능합니다. <br><br>(단, 함량미달의 경우에는 환불이 가능함)
								교환 환불 정보 단순변심 교환 배송비 5.000원<br><br> 단순변심 전체 반품 배송비 5.000원<br><br> 단순변심 부분 반품 배송비 2.500원 <br><br>불량,오배송 교환/반품 배송비 무상<br><br> 상품 착용 / 상품 세탁 / 택 제거 교환,반품 불가 <br><br>수령 후 7일이내 처리 가능하며 7일 이상 경과시 처리 불가 <br><br>교환,반품 택배사 한진택배(1588-0011) 교환,반품 반송 주소지</p>
						</div>
					</div>
				<div class="mb-0 d-flex justify-content-start" style="height: 70px;width: 100%; border-top: 1px solid gray;">
					<div class="box_QA d-flex justify-content-center" style="float: left;"><p style="margin-bottom: 0px;">상품정보 고시</p></div>
					<div style="width: 800px;"><p style="margin-left: 20px; margin-top: 20px;">상품상세 참조</p></div>
				</div>
				<div class="mb-0 d-flex justify-content-center" style="height: 100px;width: 100%; border-top: 1px solid gray; border-bottom: 1px solid gray;">
					<div class="box_QA d-flex justify-content-center" style="float: left;"><p style="margin-bottom: 0px;">미성년자 주문취소 안내</p></div>
					<div style="width: 800px;"><p style="margin-left: 20px;margin-top: 10px;">미성년자가 법정대리인의 동의 없이 구매계약을 체결한 경우 <br><br>미성년자와 법정대리인은 구매계약을 취소할 수 있습니다</p></div>
				</div>
			</div>
		</section>
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