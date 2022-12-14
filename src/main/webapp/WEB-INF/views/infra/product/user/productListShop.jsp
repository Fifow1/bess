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
	<!-- Datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<!-- 공통코드 -->
	<jsp:useBean id="CodeServiceImpl" class="bess.ham.infra.modules.code.CodeServiceImpl"/>
  	<title>productList</title>
	<style type="text/css">
	
</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
<div id="wrapper"style=" height: 2000px;">
	<form method="get" name="formList" id="formList">
	<c:set var="listCodeCategory" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
	<c:set var="listCodeColor" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
	<div style="width: 13%; float: left; margin-top: 200px; margin-left: 10%;">
		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="accordion-item border-0 border-bottom mb-1">
				<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					<button class="accordion-button collapsed ps-1" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapse1" aria-expanded="false" aria-controls="panelsStayOpen-collapse1" style="background-color: white; color: black;">
						<h2 style="font-size: 20px; font-weight: bold;">상품목록</h2>
					</button>
				</h2>
				<div id="panelsStayOpen-collapse1" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-heading1">
					<div class="accordion-body ps-1">
						<ul name="category" id="trendGroupList">
						<c:forEach items="${listCodeCategory}" var="listCategory" varStatus="statusCategory">
								<li id="<c:out value="${listCategory.CCseq }"/>" value="<c:out value="${listCategory.CCseq }"/>" 
									onclick="submit(<c:out value="${listCategory.CCseq }"/>)">
									<input id="valueC" type="hidden" class="inputbox" name="category" size="100" />
									<c:out value="${listCategory.CCname }"/>
								</li>
						</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="accordion-item border-0 border-bottom mb-1">
				<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					<button class="accordion-button collapsed ps-1" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo" style="background-color: white; color: black;">
						<h2 style="font-size: 20px; font-weight: bold;">가격</h2>
					</button>
				</h2>
				<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingTwo">
					<div class="accordion-body ps-1">
						<div>
							<div>
								<input id="default1" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default1"><p style="font-size: 16px; margin-bottom: 0px;">10,000원 미만</p></label>
							</div>
							<div>
								<input id="default2" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default2"><p style="font-size: 16px; margin-bottom: 0px;">10,000원 ~ 50,000원</p></label>
							</div>
							<div>
								<input id="default3" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default3"><p style="font-size: 16px; margin-bottom: 0px;">50,000원 ~ 100,000원</p></label>
							</div>
							<div>
								<input id="default4" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default4"><p style="font-size: 16px; margin-bottom: 0px;">100,000원 이상</p></label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-item border-0 border-bottom mb-1">
				<h2 class="accordion-header" id="panelsStayOpen-headingThree">
					<button class="accordion-button collapsed ps-1" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree" style="background-color: white; color: black;">
						<h2 style="font-size: 20px; font-weight: bold;">사이즈</h2>
					</button>
				</h2>
				<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingThree">
					<div class="accordion-body ps-1">
						<div>
							<input id="default5" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default5"><p style="font-size: 16px; margin-bottom: 0px;">소형(Small)</p></label>
						</div>	
						<div>
							<input id="default6" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default6"><p style="font-size: 16px; margin-bottom: 0px;">중형(Medium)</p></label>
						</div>
						<div>
							<input id="default7" type="checkbox" style="accent-color: black; margin-right: 5px; zoom: 1.3;"><label for="default7"><p style="font-size: 16px; margin-bottom: 0px;">대형(Big)</p></label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-item border-0 border-bottom mb-1">
				<h2 class="accordion-header" id="panelsStayOpen-heading4">
					<button class="accordion-button collapsed ps-1" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapse4" aria-expanded="false" aria-controls="panelsStayOpen-collapse4" style="background-color: white; color: black;">
						<h2 style="font-size: 20px; font-weight: bold;">컬러</h2>
					</button>
				</h2>
				<div id="panelsStayOpen-collapse4" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-heading4">
					<div class="accordion-body ps-1">
						<button type="button" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: black;"></button>
						<button type="button" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: #889F47;"></button>
						<button type="button" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: #2C63AF"></button>
						<button type="button" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: #FE2E2E;"></button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 77%; float: right; margin-top: 200px;">
		<div style="width: 100%; height: 300px; padding-left:100px; padding-right:100px;">
		<input type="hidden" name="ifprSeq"/>
		<c:forEach items="${list}" var="list" varStatus="status">
			<div style="width:350px; float:left; height: 100%; margin-right: 30px;">
				<div class="black_mat2" style="width: 350px;height: 200px;" onclick="location.href='/product/productView?ifprSeq=<c:out value="${list.ifprSeq}"/>'"></div>
				<div>
				<%-- 	<p class="h5" style="float: left; margin-bottom: 5px; margin-right: 40px;">
						<c:out value="${list.title}" />
					</p> --%>
					<%-- <a onclick="location.href='/product/productView?ifprSeq=<c:out value="${list.ifprSeq}"/>'"class="link-dark">
						<c:out value="${list.title}" /> 
					</a> --%>
					<a href="javascript:goForm(<c:out value="${list.ifprSeq}"/>)" class="link-dark"><c:out value="${list.title}" /></a>
					<div style="float: right; margin-bottom: 0px;">
						<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
					</div>
					<div style="float: left; margin-right: 100px;">
						<p style="margin-top: 5px;"><c:out value="${list.price}" /></p>
					</div>
					<div style="float: right;">
						<c:set var="data" value="${list.optionSub}" />
						<c:set var="colorArray" value="${fn:split(data, ',') }" />
						<c:forEach var="color" items="${colorArray }">
								<c:forEach items="${listCodeColor}" var="listColor" varStatus="statusColor">
									<c:if test="${color eq listColor.CCseq}">
										<input type="text" value="${listColor.CCname}"/>
										<button type="button" value="${listColor.CCname}" name="${listColor.CCname}"class="btn btn" onchange="colorCh(<c:out value="${listColor.CCname}"/>)"
												style="height: 25px; width: 20px; border-radius: 100%; ">
										</button>
									</c:if>
								</c:forEach>
						</c:forEach>
					</div>
				</div>	
			</div>
		</c:forEach>
		</div>
	</div>
</form>
<form name="formVo">
	<%@include file="productVo.jsp"%>
</form>


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
<script type="text/javascript">
	var goUrlPrList = "productListShop"
	var form = $("form[name=formList]");
	var seq = $("input:hidden[name=ifprSeq]");
	var goUrlPrView="productView";
	
	 function submit(num) {
	 	var li_val = $('#' + num).attr("value"); 
		alert(li_val);
		$('#valueC').val(li_val);
		form.attr("action", goUrlPrList).submit();
	}  
	 
 goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
		form.attr("action", goUrlPrView).submit();
	}
	 
	 
		/*  var colorBtn = <c:out value="${color}"/>
			 document.getElementById('(optionColor)').style.backgroundColor = "(colorBtn)"; */
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>