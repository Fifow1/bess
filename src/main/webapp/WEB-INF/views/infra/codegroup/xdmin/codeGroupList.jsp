z<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - B	rand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> <span>Components</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.html">Buttons</a> <a class="collapse-item" href="cards.html">Cards</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> <i class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a class="collapse-item" href="utilities-border.html">Borders</a> <a class="collapse-item" href="utilities-animation.html">Animations</a> <a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="register.html">Register</a>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages2" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>회원관리</span>
			</a>
				<div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="register.html">Register</a>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages3" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>상품관리</span>
			</a>
				<div id="collapsePages3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="register.html">Register</a>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages4" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>1:1문의관리</span>
			</a>
				<div id="collapsePages4" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="register.html">Register</a>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages5" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>Q&a관리</span>
			</a>
				<div id="collapsePages5" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="register.html">Register</a>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html"> <i class="fas fa-fw fa-chart-area"></i> <span>Charts</span></a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="tables.html"> <i class="fas fa-fw fa-table"></i> <span>Tables</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>

		<div class="container" style="margin-right: 400px;">
			<form method="post"  style="float: left; width: 1150px;" name="formList" id="formList">
				<input type="hidden" name="shSeq">
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<input type="hidden" name="checkboxSeqArray">
				
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
								<input type="text" class="form-control" id="shdate_s" name="shdate_s" style="height: 30px; width: 180px" <c:if test="${vo.shdate_s }"/>>
							</div>
							<div style="width: 5px; float: left; display: inline-block;">
								<p>~</p>
							</div>
							<div style="width: 200px; float: left; margin-left: 30px; display: inline-block;">
								<input type="text" class="form-control" id="shdate_e" name="shdate_e" style="height: 30px; width: 180px" <c:if test="${vo.shdate_e }"/>>
							</div>
							<div class="dropdown" style="float: left;">
								<select class="form-select" aria-label="Default select example" id="shdate" name="shdate" style="padding-bottom: 2px; padding-top: 2px;">
									<option value="" <c:if test = "${empty vo.shdate }"> selected</c:if>>검색구분</option>
									<option value="1" <c:if test = "${ vo.shdate eq 1 }"> selected</c:if>>등록일</option>
									<option value="2" <c:if test = "${ vo.shdate eq 2}"> selected</c:if>>수정일</option>
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
									<option value="" <c:if test = "${empty vo.shOption }"> selected</c:if>>검색구분</option>
									<option value="1" <c:if test = "${ vo.shOption eq 1 }"> selected</c:if>>코드그룹 코드</option>
									<option value="2" <c:if test = "${ vo.shOption eq 2}"> selected</c:if>>코드그룹 이름 (한글)</option>
									<option value="3" <c:if test = "${ vo.shOption eq 3}"> selected</c:if>>코드그룹 이름 (영문)</option>
								</select>
							</div>
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select" id="shDelYn" name="shDelYn">
									<option value="" <c:if test = "${empty vo.shDelYn }"> selected</c:if>>삭제여부</option>
									<option value="2" <c:if test = "${ vo.shDelYn eq 2}"> selected</c:if>>All</option>
									<option value="1" <c:if test = "${ vo.shDelYn eq 1}"> selected</c:if>>Yes</option>
									<option value="0" <c:if test = "${ vo.shDelYn eq 0}"> selected</c:if>>No</option>
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
								<input type="text" class="form-control bg-light border-0 small" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어를 입력해주세요." style="width: 250px; float: left;">
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
										<th style="color: white; width: 15%; border-bottom: 0px;">코드그룹 코드</th>
										<th style="color: white; width: 16%; border-bottom: 0px;">코드그룹 이름(한글)</th>
										<th style="color: white; width: 16%; border-bottom: 0px;">코드그룹 이름(영문)</th>
										<th style="color: white; width: 10%; border-bottom: 0px;">코드갯수</th>
										<th style="color: white; width: 10%; border-bottom: 0px;">등록일</th>
										<th style="color: white; width: 10%; border-bottom: 0px;">수정일</th>
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
													<td><c:out value="${list.seq }" /></td>
													<td><c:out value="${list.groupName_code }" /></td>
													<td><a href="javascript:goForm(<c:out value="${list.seq }"/>)" class="link-dark"><c:out value="${list.groupName}" /></a></td>
													<td><c:out value="${list.groupName_en }" /></td>
													<td><c:out value="${list.CCcount }" /></td>
													<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
													<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<!-- pagination s -->
						<%@include file="../../base/pagination.jsp"%>
						<!-- pagination e -->
						<div class="row">
							<div class="d-flex justify-content-start" style="float: left; width: 50%;">
								<button type="button" class="btn btn-outline-dark">삭제</button>
							</div>
							<div class="d-flex justify-content-end" style="float: right; width: 50%">
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

