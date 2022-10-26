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
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <link href="css/1.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper" style="height:1500px;">
	<%@include file="../../base/xdminHeader.jsp"%>

		<div class="container" style="margin-right: 400px;">
			<div style="height: 500px; width: 1400px">
				<div style="margin-top: 100px; margin-bottom: 30px;">
					<h5 class="m-0 font-weight-bold text-dark">1:1문의관리</h5>
				</div>
				<div class="row" style="border-top: 1px solid black; width: 1400px; margin-left: 0px; height: 50px;">
					<div class="col-1">
						<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">작성일</h5>
					</div>
					<div class="col" >
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">1일</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">3일</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">7일</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">1개월</label>
						</div>
					</div>
				</div>
				<div class="row border-top" style="width: 1400px; margin-left: 0px; height: 50px;">
					<div class="col-1">
						<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">답변상태</h5>
					</div>
					<div class="col" >
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">전체</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">답변전</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">답변완료</label>
						</div>
						<div class="form-check" style="margin-top: 10px; float: left; margin-right: 50px;">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style="accent-color: black;"> 
							<label class="form-check-label" for="flexCheckDefault" style="color: black; margin-top: 2px;">처리중</label>
						</div>
					</div>
				</div>
				<div class="row border-top" style=" width: 1400px; margin-left: 0px; height: 80px; border-bottom: 1px solid black; margin-bottom: 30px;">
					<div class="col-1">
						<h5 style="padding-left: 0px; margin-top: 30px; font-size: 17px; font-weight: 700; color: black;">검색조건</h5>
					</div>
					<div class="col">
						<div class="dropdown" style="float: left; margin-right:10px; margin-top: 20px;">
							<button class="btn btn-outline-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">검색조건1</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul>
						</div>
						<div class="dropdown" style="float: left; margin-right:10px; margin-top: 20px;">
							<button class="btn btn-outline-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">검색조건2</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul>
						</div>
						<div class="dropdown" style="float: left; margin-top: 20px;">
							<button class="btn btn-outline-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">검색조건2</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul>
						</div>
						<div style="width: 300px; float: left; margin-top: 20px; margin-left: 20px;">
							<input type="text" class="form-control bg-light border-0 small" placeholder="검색어를 입력해주세요." aria-label="Search" aria-describedby="basic-addon2" style="width: 250px; float: left;">
							<button class="btn btn-dark" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="">
					<div class="table-responsive">
						<table class="table border-top" id="dataTable" width="100%" cellspacing="0">
							<thead class="border-bottom">
								<tr style="color: black; font-weight: 600; ">
									<td style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
									<th style="border-bottom: 0px; text-align: center;">답변상태</th>
									<th style="border-bottom: 0px; text-align: center;">문의유형</th>
									<th style="border-bottom: 0px; text-align: center; width:600px;">내용</th>
									<th style="border-bottom: 0px; text-align: center;">작성자</th>
									<th style="border-bottom: 0px; text-align: center;">작성일</th>
									<th style="border-bottom: 0px; text-align: center;">기능</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="padding-top: 20px; text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
									<td style="padding-top: 20px; text-align: center;">답변전</td>
									<td style="padding-top: 20px; text-align: center;">상품문의</td>
									<td style="padding-top: 20px; text-align: center;">환불요청</td>
									<td style="padding-top: 20px; text-align: center;">작성자</td>
									<td style="padding-top: 20px; text-align: center;">작성일</td>
									<td style="padding-top: 15px; text-align: center;">
										<button type="button" class="btn btn-dark">답변하기</button>
										<button type="button" class="btn btn-outline-dark">자세히보기</button>
									</td>
								</tr>
								<tr>
									<td style="padding-top: 20px; text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
									<td style="padding-top: 20px; text-align: center;">답변전</td>
									<td style="padding-top: 20px; text-align: center;">상품문의</td>
									<td style="padding-top: 20px; text-align: center;">환불요청</td>
									<td style="padding-top: 20px; text-align: center;">작성자</td>
									<td style="padding-top: 20px; text-align: center;">작성일</td>
									<td style="padding-top: 15px; text-align: center;">
										<button type="button" class="btn btn-dark">답변하기</button>
										<button type="button" class="btn btn-outline-dark">자세히보기</button>
									</td>
								</tr>
								<tr>
									<td style="padding-top: 20px; text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
									<td style="padding-top: 20px; text-align: center;">답변전</td>
									<td style="padding-top: 20px; text-align: center;">상품문의</td>
									<td style="padding-top: 20px; text-align: center;">환불요청</td>
									<td style="padding-top: 20px; text-align: center;">작성자</td>
									<td style="padding-top: 20px; text-align: center;">작성일</td>
									<td style="padding-top: 15px; text-align: center;">
										<button type="button" class="btn btn-dark">답변하기</button>
										<button type="button" class="btn btn-outline-dark">자세히보기</button>
									</td>
								</tr>
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
		</div>
	</div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>