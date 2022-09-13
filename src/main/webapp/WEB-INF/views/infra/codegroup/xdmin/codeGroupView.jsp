
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
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
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
		<div class="container">
			<form method="post" action="/codeGroup/codeGroupUpdt">
				<br><br>
				<div class="row">
					<div class="col">
						<h5 class="m-0 font-weight-bold text-dark">코드그룹 관리</h5>
					</div>
				</div><br><br>
				<div class="row">
					<div class="col">
						<label>코드그룹 코드</label>
						<input type="text" class="form-control" name="seq" readonly value="<c:out value="${item.seq}"/>">
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드그룹 이름(Another)</p>
						<input type="text" class="form-control" placeholder="영문(대소문자)숫자" name="groupName_code" id="groupName_code" value="<c:out value="${item.groupName_code }"/>">
						<p class="h6 text-danger pt-3";>다시 작성해 주세요</p>
					</div>
				</div><br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드그룹 이름(한글)</p>
						<input type="text" class="form-control" placeholder="한글,숫자" name="groupName" id="groupName" value="<c:out value="${item.groupName }"/>">
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드그룸 이름(영문)</p>
						<input type="text" class="form-control" placeholder="영문(대소문자)숫자" name="groupName_en" id="groupName_en" value="<c:out value="${item.groupName_en }"/>">
					</div>
				</div><br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>사용여부</p>
						<select class="form-select" name="useYn" id="useYn">
							<option value="1" <c:if test="${item.useYn eq 1}">selected</c:if>>Y</option>
							<option value="0" <c:if test="${item.useYn eq 0}">selected</c:if>>N</option>
						</select>
					</div>	
					<div class="col">
						<p class="h6" color="#2E2E2E";>순서</p>
						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="숫자">
					</div>
				</div><br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>설명</p>
						<textarea class="form-control" placeholder="입력해 주세요." id="floatingTextarea2" style="height: 100px"></textarea>
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>삭제여부</p>
						<select class="form-select" name="delYn" id="delYn">
							<option value="1" <c:if test="${item.delYn eq 1}">selected</c:if>>Y</option>
							<option value="0" <c:if test="${item.delYn eq 0}">selected</c:if>>N</option>
						</select>
					</div>
				</div><br>
				<div class="row">
					<div class="col d-flex justify-content-center">
						<button type="button" class="btn btn-outline-dark" style="width: 200px;" id="btnUelete">삭제</button>
						<button type="submit" class="btn btn-dark" style="width: 200px;">등록하기</button>
					</div>
				</div>
			</form>
			<br><br><br><br><br>
			
			
			
			
			
			
			
			
			<script type="text/javascript">
				function test() {
			 		if(document.getElementById('groupName').value == "" || document.getElementById('groupName').value == null){
						alert("코드그룹이름(한글) 입력해 주세요.");
						document.getElementById("groupName").value = "";
						document.getElementById("groupName").value = "";
						return false;
					} else if (document.getElementById('groupName_code').value == "" || document.getElementById('groupName_code').value == null){
						alert("코드그룹이름(코드)을 입력해 주세요.");
						document.getElementById("groupName_code").value = "";
						document.getElementById("groupName_code").value = "";
						return false;
					} else if (document.getElementById('groupName_en').value == "" || document.getElementById('groupName_en').value == null){
						alert("코드그룹이름(영어)을 입력해 주세요.");
						document.getElementById("groupName_en").value = "";
						document.getElementById("groupName_en").value = "";
						return false;
					} 
					
					
					
					document.getElementById("myForm").submit();
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
		</div>
	</div>
</body>
</html>