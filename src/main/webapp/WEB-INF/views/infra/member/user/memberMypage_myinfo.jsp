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
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/resources/css/main2.css">
  	<title>member</title>
	<style type="text/css">
	
	/* p{
	 font-family: 'Jua', sans-serif;
	 font-weight: 100;
	} */
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
					<p style="font-weight: bold; font-size: 30px;">???????????????</p>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col mb-3 d-flex justify-content-center">
					<!-- <button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='./memberMypage_order.html'">??????/??????</button> -->
					<button type="submit" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='/member/memberMypage_myinfo?shSeq=<c:out value="${sessSeq}"/>'">?????????</button>
					<!-- <button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;">??????</button> -->
					<button type="submit" class="btn btn-light" style="width: 120px; height: 50px;" onclick="location.href='/member/memberMypage_qa?shSeq=<c:out value="${sessSeq}"/>'">Q&A</button>
				</div>
			</div>
			<div style="width: 48%; height: 100%;display: inline-block;">
				<div class="row d-flex justify-content-center">
					<div class="border" style="width: 80%;">
						<p style="text-align: center; margin-top: 15px;">??? ??????</p>
					</div>
					<div style="margin-left: 300px">
						<input type="text" style="width: 50%; height:40px;" name="id" value="${sessSeq}"></input>
						<div>
							<p style="margin-bottom: 10px;">?????????</p>
							<input type="text" style="width: 50%; height:40px;" name="id" value="${item.id}"></input>
							<button type="button" class="btn btn-primary">??????</button>
						</div>
						<div>
							<p style="margin-bottom: 10px;">????????????</p>
							<input type="text" style="width: 50%; height:40px;" name="pw" value="${item.pw}"></input>
						</div>
						<div>
							<p style="margin-bottom: 10px;">?????????</p>
							<input type="text" style="width: 50%; height:40px;" name="email" value="${item.email}"></input>
							<button type="button" class="btn btn-primary">??????</button>
						</div>
						<div>
							<p style="margin-bottom: 10px;">????????????</p>
							<input type="text" style="width: 50%; height:40px;" value="${item.numPhone}"></input>
							<button type="button" class="btn btn-primary">??????</button>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 48%; height: 100%;display: inline-block;">
				<div class="row d-flex justify-content-center">
					<div class="border" style="width: 80%;">
						<p style="text-align: center; margin-top: 15px;">??? ?????????</p>
					</div>
					<div class="row loginbtn d-flex justify-content-center mb-1" style="overflow:scroll; height: 350px;">
						<div class="col">
							<c:forEach items="${list}" var="list" varStatus="status">
								<div class="form-floating d-flex justify-content-center">
									<button type="button" class="btn btn-outline-primary textbox" style="height: 100px;">
									<p><c:out value="${list.memo}" /></p>
									<p style="color: #6A737B; display: inline-block;"><c:out value="${list.adressZip}" /></p>
									<p style="color: #6A737B; display: inline-block;"><c:out value="${list.adressZipDetail}" /></p>
									</button>
								</div>
							</c:forEach>
						</div>
					</div>			
				</div>
			</div>
			<div class="row">
				<div class="col mb-0 d-flex justify-content-center">
					<button type="button" class="btn btn-dark textbox">????????????</button>		
				</div>
			</div>
		</div>
	</div>
<!------------------------------------------------------------------- footer -------------------------------------------------------------------->

	<div class="container-fluid footer">	
		<div class="row" style="padding-top: 40px;">
			<div class="col d-flex justify-content-center" style="padding-left: 90px; padding-bottom: 10px; padding-right:0px; ">
				<div>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">Ham??????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">??????????????????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">????????????</a>
					<a href="#" class="link-light ps-5"  style="text-decoration: none;">????????????????????????</a>	
					<a href="#" class="link-light ps-5" style="text-decoration: none;">?????????????????????</a>
				</div>
			</div>
			<div class="col d-flex justify-content-center" style="padding-right: 137px; padding-left: 0px;">
				<div class="">
					<a href="#" class="link-light ps-5 instagram" style="text-decoration: none;">???????????????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">????????????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">????????????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">????????????????????????</a>
					<a href="#" class="link-light ps-5" style="text-decoration: none;">?????????????????????</a>
				</div>
			</div>
		</div>
		<hr style="color: white; margin-top: 0px;">
		<div class="row" style="padding-left: 40px;">
			<div class="col" style="padding-left: 145px;">
				<h1 style="color: white; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1>
			</div>
			<div class="col"style="padding-right:20px;">
				<h1 style="color: white;">????????????</h1>
			</div>
		</div>
		<div class="row" style="padding-left: 40px;">
			<div class="col" style="padding-left: 145px;">
				<p style="color: white; text-align: left;">???????????? : ????????? ????????????????????? : 220-88-93187 ????????????????????? : 2016-????????????-00359<br><br>
					?????????????????? : (???)HAM ?????? : ?????? ????????? ????????????38??? 12 (?????????)<br><br>
					??????????????????????????? : ?????????(privacy@brandi.co.kr)<br><br>
					(???)???????????? ???????????? ????????? ???????????? ??????????????????????????? ???????????? ???????????? ?????????,<br><br>
					???????????? ????????? ???????????? ??? ????????? Ham??? ???????????? ????????????.<br><br>
					100% ??????<br><br>
					??????????????? ???????????? ?????? ????????? ????????? ????????????, ?????????????????? ?????? ???????????? 100% ???????????????.<br><br>
					??????????????????????????????</p>
			</div>
			<div class="col">
				<p style="color: white; text-align: left;">???????????? AM 10:00 ~ PM 17:00 (?????? ??? ????????? ?????????)<br><br>
	
					???????????? AM 12:00 ~ PM 13:30</p>
			</div>
		</div>
	</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>