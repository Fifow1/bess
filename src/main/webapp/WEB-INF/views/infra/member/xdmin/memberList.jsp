<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <link href="/resources/	vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <link href="/resources/css/1.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
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
			<form action="/member/memberList" method="GET">
				<div style="height: 500px; width: 1400px">
					<div style="margin-top: 100px; margin-bottom: 30px;">
						<h5 class="m-0 font-weight-bold text-dark">회원관리</h5>
					</div>
					<div class="row" style="border-top: 1px solid black; width: 1400px; margin-left: 0px; height: 50px;">
						<div class="col-1">
							<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">회원등급</h5>
						</div>
						<div class="col" >
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">전체 </label>
							</div>
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">회원</label>
							</div>
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">관리자</label>
							</div>
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">탈퇴대기자</label>
							</div>
						</div>
					</div>
					<div class="row border-top" style=" width: 1400px; margin-left: 0px; height: 50px;">
						<div class="col-1">
							<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">검색순서</h5>
						</div>
						<div class="col" >
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 33px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">번호순</label>
							</div>
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 33px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">최신순</label>
							</div>
							<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
								<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">이름순</label>
							</div>
						</div>
					</div>
					<div class="row border-top" style=" width: 1400px; margin-left: 0px; height: 80px; border-bottom: 1px solid black; margin-bottom: 30px;">
						<div class="col-1">
							<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 700; color: black;">검색조건</h5>
						</div>
						<div class="col">
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select" name="shOption" id="shOption">
									<option value=""  <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
									<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>아이디</option>
									<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>이메일</option>
									<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>전화번호</option>
								</select>
							</div>
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select" name="shDelYn" id="shDelYn" >
									<option value="" <c:if test="${empty vo.shDelYn}">selected</c:if>>삭제여부</option>
									<option value="2" <c:if test="${vo.shDelYn eq 2}">selected</c:if>>all</option>
									<option value="1" <c:if test="${vo.shDelYn eq 1}">selected</c:if>>Yes</option>
									<option value="0" <c:if test="${vo.shDelYn eq 0}">selected</c:if>>No</option>
								</select>
							</div>	
							<div class="dropdown" style="float: left; margin-right: 10px; margin-top: 20px;">
								<select class="form-select">
									<option>검색구분</option>
									<option>코드그룹 코드</option>
									<option>코드그룹 이름 (한글)</option>
									<option>코드그룹 이름 (영문)</option>
								</select>
							</div>
							<div style="width: 300px; float: left; margin-top: 20px; margin-left: 20px;">
								<input type="text" class="form-control bg-light border-0 small" placeholder="검색어를 입력해주세요." name="shValue" id="shValue"style="width: 250px; float: left;">
								<button class="btn btn-dark" type="submit">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="">
						<div class="table-responsive">
							<table class="table border-top" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr style="color: black; font-weight: 600; background-color: #2E2E2E;">
										<td style="text-align: center; width: 5%;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
										<th style="color: white; border-bottom: 0;">번호</th>
										<th style="color: white; border-bottom: 0;">아이디</th>
										<th style="color: white; border-bottom: 0;">비밀번호</th>
										<th style="color: white; border-bottom: 0;">성별</th>
										<th style="color: white; border-bottom: 0;">권한</th>
										<th style="color: white; border-bottom: 0;">이메일</th>
										<th style="color: white; border-bottom: 0;">전화번호</th>
										<th style="color: white; border-bottom: 0;">등록일자</th>
										<th style="color: white; border-bottom: 0;">탈퇴여부</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0 }">
											<tr>
												<td class = "text-center" colspan="10">없음</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
													<td><c:out value="${list.seq }" /></td>
													<td><c:out value="${list.id }"/></td>
													<td><c:out value="${list.pw }"/></td>
													<td><c:out value="${list.gender }"/></td>
													<td><c:out value="${list.authority }"/></td>
													<td><c:out value="${list.email }"/></td>
													<td><c:out value="${list.number_phone }"/></td>
													<td><c:out value="${list.regdate }"/></td>
													<td>N</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<div class="d-flex justify-content-center">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav>
						</div>
						<div class="d-flex justify-content-end">
							<button type="button" class="btn btn-dark">삭제</button>
						</div>
					</div>
				</div>	
			</form>
		</div>
	</div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/js/demo/chart-area-demo.js"></script>
    <script src="/resources/js/demo/chart-pie-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>