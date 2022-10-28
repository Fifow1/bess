
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
    
    <!-- Jquery CDN -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->	
		<%@include file="../../base/xdminHeader.jsp"%>
		<div class="container">
			<form method="post" id="form" name="form">
				<%@include file="codeVo.jsp"%>
				<br><br>
				<div class="row">
					<div class="col">
						<h5 class="m-0 font-weight-bold text-dark">코드 관리</h5>
					</div>
				</div>
				<br> <br>
				<div class="row">
					<div class="col">
						<select class="form-select" aria-label="Default select example" name="group_seq" id="group_seq">
							<option selected>Open this select menu</option>
							<c:forEach items="${list}" var="list" varStatus="status">
								<option value="<c:out value="${list.CCGseq}"></c:out>"><c:out value="${list.CCGname}"/></option>
							</c:forEach>
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col">
						<label>코드그룹 코드</label>
						<input type="text" class="form-control" name="CCseq" readonly value="<c:out value="${item.CCseq}"/>">
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드(Another)</p>
						<input type="email" class="form-control" placeholder="영문(대소문자)숫자" name="CCname_code" id="CCname_code" value="<c:out value="${item.CCname_code}"/>">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드 이름(한글)</p>
						<input type="text" class="form-control"placeholder="한글,숫자" name="CCname" id="CCname" value="<c:out value="${item.CCname}"/>">
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>코드 이름(영문)</p>
						<input type="email" class="form-control"placeholder="영문(대소문자)숫자">
					</div>
				</div><br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>사용여부</p>
						<select class="form-select" aria-label="Default select example">
							<option selected>선택해주세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
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
						<select class="form-select" aria-label="Default select example">
							<option selected>선택해주세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
						</select>
					</div>
				</div><br>
				<div class="row">
					<div class="col d-flex justify-content-center">
						<button type="button" class="btn btn-outline-dark" style="width: 200px;" id="btnUelete">삭제</button>
						<button type="button" id="btnSave" name="btnSave" class="btn btn-dark" style="width: 200px;">등록하기</button>
						<button type="button" id="btnList" name="btnList" class="btn btn-dark" style="width: 200px;">목록으로</button>
					</div>
				</div>
				<br><br><br><br><br><br>
			</form>
			<form name="formVo" id="formVo" method="post">
				<!-- *Vo.jsp s -->
				<%@include file="./codeVo.jsp"%>
				<!-- #-> -->
				<!-- *Vo.jsp e -->
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
				var goUrlList = "/code/codeList"; /* #-> */
				var goUrlInst = "/code/codeIsrt"; /* #-> */
				var goUrlUpdt = "/code/codeUpdt"; /* #-> */
		//		var goUrlUele = "/codeGroup/codeGroupUele"; /* #-> */
		//		var goUrlDele = "/codeGroup/codeGroupDele"; /* #-> */

				var seq = $("input:text[name=CCseq]"); /* #-> */

				var form = $("form[name=form]");
				var formVo = $("form[name=formVo]");

				$("#btnSave").on("click", function() {
					if (seq.val() == "0" || seq.val() == "") {
						// insert
						//if (validationInst() == false)
						//	return false;
						form.attr("action", goUrlInst).submit();
					} else {
						// update
						/* keyName.val(atob(keyName.val())); */
						//if (validationUpdt() == false)
						//	return false;
						form.attr("action", goUrlUpdt).submit();
					}
				});
				
				
				$("#btnList").on("click", function(){
					formVo.attr("action", goUrlList).submit();
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