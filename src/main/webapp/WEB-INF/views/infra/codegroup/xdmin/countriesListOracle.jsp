<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>회원관리</title>

<!-- Custom fonts for this template-->
<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- Custom styles for this template-->
<link href="/resources/css/1.css" rel="stylesheet">
<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#shdate_s")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									/* maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
										$("#shdate_e").datepicker("option",
												"minDate", selectedDate);
									}
								});
				$("#shdate_e")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',

												'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									/* maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
									onClose : function(selectedDate) {
										// 종료일(endDate) datepicker가 닫힐때
										// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
										$("#shdate_s").datepicker("option",
												"maxDate", selectedDate);
									}
								});
			});
</script>


</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
<%@include file="../../base/xdminHeader.jsp"%>

		<div class="container" style="margin-right: 400px;">
			<form method="post"  style="float: left; width: 1150px;" name="formList" id="formList">
				<div style="height: 500px; width: 1400px">
					<div style="margin-top: 100px; margin-bottom: 30px;">
						<h5 class="m-0 font-weight-bold text-dark">코드그룹 관리</h5>
					</div>
					<div class="row" style="width: 1400px; margin-left: 0px; height: 50px; border-top: 1px solid black;">
						<div class="col-1">
							<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">검색순서</h5>
						</div>
						<div class="col" style="margin-top: 10px;">
							<div class="form-check" style="float: left; display: inline-block; margin-right: 40px;">
								<input type="radio" class="form-check-input" name="flexRadioDefault" id="flexRadioDefault1"> <label class="form-check-label" for="flexRadioDefault1" style="color: black; margin-top: 2px;">번호순</label>
							</div>
							<div class="form-check" style="float: left; display: inline-block;">
								<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked> <label class="form-check-label" style="color: black; margin-top: 2px;" for="flexRadioDefault2">최신순</label>
							</div>
							<div style="width: 200px; float: left; margin-left: 50px; display: inline-block;">
							</div>
							<div style="width: 5px; float: left; display: inline-block;">
								<p>~</p>
							</div>
							<div style="width: 200px; float: left; margin-left: 30px; display: inline-block;">
							</div>
							<div class="dropdown" style="float: left;">
								<select class="form-select" aria-label="Default select example" id="shdate" name="shdate" style="padding-bottom: 2px; padding-top: 2px;">
								</select>
							</div>
						</div>
					</div>
					<div class="row border-top" style="width: 1400px; margin-left: 0px; height: 80px; border-bottom: 1px solid black; margin-bottom: 30px;">
						<div class="col-1" style="float: left;">
							<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 700; color: black;">검색조건</h5>
						</div>
						<div class="col">
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select" name="shOption">
								</select>
							</div>
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select" id="shDelYn" name="shDelYn">
								</select>
							</div>
							<div class="dropdown" style="float: left; margin-top: 20px;">
								<select class="form-select" aria-label="Default select example">
									<option selected>검색조건3</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
								</select>
							</div>
							<div style="width: 300px; float: left; margin-top: 20px; margin-left: 20px;">
								<button class="btn btn-dark" type="submit" style="background-color: #2E2E2E;">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="">
						<div class="table-responsive">
							<table class="table border-top table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr style="color: black; font-weight: 600; background-color: #2E2E2E;">
										<td style="text-align: center; width: 5%;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
										<th style="color: white; width: 10%; border-bottom: 0px;">#</th>
										<th style="color: white; width: 15%; border-bottom: 0px;">ID</th>
										<th style="color: white; width: 16%; border-bottom: 0px;">NAME</th>
										<th style="color: white; width: 16%; border-bottom: 0px;">REGION_ID</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0 }">
											<tr>
												<td class="text-center" colspan="8">없음</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" varStatus="status">
												<!-- 모든 목록에 다 들어감 -->
												<tr>
													<td style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
													<td><c:out value="${list.COUNTRY_ID }" /></td>
													<td><c:out value="${list.COUNTRY_NAME }" /></td>
													<td><c:out value="${list.REGION_ID }" /></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<!-- pagination s -->
						<!-- pagination e -->
						<div class="row">
							<div class="d-flex justify-content-start" style="float: left; width: 50%;">
								<button type="button" class="btn btn-outline-dark">삭제</button>
							</div>
							<div class="d-flex justify-content-end" style="float: right; width: 50%">
								<button type="button" class="btn btn-success" id="btnExcel">엑셀</button>
								<button type="button" class="btn btn-dark" style="background-color: #2E2E2E;" id="btnForm">등록</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>



	
	<script type="text/javascript">
	
		var goUrlList = "/codeGroup/codeGroupList"; /* #-> */
		var goUrlForm = "/codeGroup/codeGroupForm";
		var excelUri='/codeGroup/excelDownload'
		var seq = $("input:hidden[name=shSeq]");
		var form = $("form[name=formList]");
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		$('#btnForm').on("click", function() {
			goForm(0);                
		});
	
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
	</script>

	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="/resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/resources/js/demo/chart-area-demo.js"></script>
	<script src="/resources/js/demo/chart-pie-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>

<br>

