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
	<link rel="stylesheet" href="/resources/css/main2.css">
  	<title>member</title>
	<style type="text/css">

</style>
</head>

<body>
<!-------------------------------------------------------------------header -------------------------------------------------------------------->
<%@include file="../../base/header.jsp"%>
<!------------------------------------------------------------------------------------------------------------------------------------------------->

<div id="wrapper" style="height: 2000px">
	<div style="width: 100%; height:2000px; float:right;">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="col mb-3 d-flex justify-content-center">
						<h3 style="font-weight: bold; font-size: 30px; margin-top: 100px;">마이페이지</h3>
					</div>
				</div>
				<div class="row d-flex justify-content-center">
					<div class="col mb-3 d-flex justify-content-center">
						<!-- <button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='./memberMypage_order.html'">주문/배송</button> -->
						<button type="submit" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;" onclick="location.href='/member/memberMypage_myinfo?shSeq=<c:out value="${sessSeq}"/>'">내정보</button>
						<!-- <button type="button" class="btn btn-light" style="width: 120px; height: 50px; margin-right: 10px;">쿠폰</button> -->
						<button type="submit" class="btn btn-light" style="width: 120px; height: 50px;" onclick="location.href='/member/memberMypage_qa?shSeq=<c:out value="${sessSeq}"/>'">Q&A</button>
					</div>
				</div>
				<div style="margin-top: 10px;">
			<form name="formQa">
					<div style="float: left;">
						<h5>Q&A</h5>
					</div>
					<div class="d-flex justify-content-end mb-0" style="float: right; width: 400px; height: 40px;">
						<div class="form-check">
							<input type="radio" id="flexRadioDefault1" onclick="submit()" name="shQaOption" value="2" style="accent-color: black;margin-right: 20px; margin-bottom:10px;">
							<label class="form-check-label" for="flexRadioDefault1">전체</label>
						</div>
						<div class="form-check ms-0">
							<input type="radio" id="flexRadioDefault2" onclick="submit()" name="shQaOption" value="1" style="accent-color: black;margin-right: 20px; margin-bottom:10px;">
							<label class="form-check-label" for="flexRadioDefault2">답변</label>
						</div>
						<div class="form-check ms-0">
							<input type="radio" id="flexRadioDefault3" onclick="submit()" name="shQaOption" value="0"style="accent-color: black;margin-right: 20px; margin-bottom:10px;">
							<label class="form-check-label" for="flexRadioDefault3">미답변</label>
						</div>
					</div>
					<table class="" style="width: 100%; margin-top: 20px; border-top: 1px solid black;">
						<thead>
							<tr>
								<th class="table_head" style="width: 120px;"><p style="font-weight: bolder;">답변상태</p></th>
								<th class="table_head" style="width: 400px;"><p>상품이름</p></th>
								<th class="table_head" style="width: 100px;"><p>내용</p></th>
								<th class="table_head" style="width: 150px;"><p>작성일</p></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listQa}" var="listQa" varStatus="status">
								<tr>
									<th class="table_body"><p class="text-center mb-0">
											<c:out value="${listQa.answerYn}" />
										</p></th>
									<td class="table_body"><p class="mb-2 mt-2">
											<c:out value="${listQa.title}" />
										</p></td>
									<td class="table_body"><p class="text-center mb-0">
											<c:out value="${listQa.ifprQaTitle}" />
										</p></td>
									<td class="table_body"><p class="text-center mb-0">
											<c:out value="${listQa.ifprQaRegDate}" />
										</p></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	var goUrlMyQaList = "member/memberMypage_qa"
	var form="form[name=formQa]"
	function submit() {
		var val = $('input[name=shQaOption]').val();
		alert(val)
		form.attr("action", goUrlMyQaList).submit();
	}


</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>
</body>

</html>