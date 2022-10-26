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
    <!-- Datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="../../base/xdminHeader.jsp"%>
		<div class="container">
			<form id="form" name="form" method="post" autocomplete="off">
				<br><br>
				<%-- <%@include file="./memberVo.jsp"%> --%>
				<div class="row">
					<div class="col mb-5">
						<h5 class="m-0 font-weight-bold text-dark">회원 관리(등록)</h5>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>번호</p>
						<input type="text" class="form-control"name="seq" id="seq" value="<c:out value="${item.seq}"/>">
					</div>
				</div>
				<div class="row">
					<div class="col mb-1">
						<p style="margin-bottom: 4px;font-weight: 900;">성별</p>
						<div class="form_radio_btn radio_male" style="float: left;">
							<input id="radio-1" type="radio" name="userGender" value="male" checked> <label for="radio-1">남자</label>
						</div>
						<div class="form_radio_btn" style="float: left;">
							<input id="radio-2" type="radio" name="userGender" value="female"> <label for="radio-2">여자</label>
						</div>
					</div>
					<div class="col mb-1">
						<p style="margin-bottom: 4px;font-weight: 900;">권한</p>
						<div class="form_radio_btn radio_male" style="float: left;">
							<input id="radio-3" type="radio" name="userA" value="male" checked> <label for="radio-3">관리자</label>
						</div>
						<div class="form_radio_btn" style="float: left;">
							<input id="radio-4" type="radio" name="userA" value="female"> <label for="radio-4">사용자</label>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>아이디</p>
						<input type="text" class="form-control"placeholder="한글,숫자"name="id" id="id" value="<c:out value="${item.id}"/>">
					</div>
					<div class="col">
						<p class="h6" color="#2E2E2E";>비밀번호</p>
						<input type="text" class="form-control"placeholder="영문(대소문자)숫자" name="pw" id="pw" value="<c:out value="${item.pw}"/>">
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
						<p class="h6" color="#2E2E2E";>휴대번호</p>
						<input type="text" class="form-control" placeholder="숫자"name="number_phone" id="number_phone" value="<c:out value="${item.number_phone}"/>">
					</div>
				</div><br>
				<div class="row">
					<div class="col">
						<p class="h6" color="#2E2E2E";>이메일</p>
						<input type="text" class="form-control" placeholder="숫자" name="email" id="email" value="<c:out value="${item.email}"/>" >
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
		</div>
			
		<form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%@include file="./memberVo.jsp"%>
			<!-- #-> -->
			<!-- *Vo.jsp e -->
		</form>
	</div>
	
	
	
	
	
	
	
	<script type="text/javascript">
				var goUrlList = "/member/memberXdminList"; /* #-> */
				var goUrlInst = "/member/memberXdminIsrt"; /* #-> */
				var goUrlUpdt = "/member/memberXdminUpdt"; /* #-> */
		//		var goUrlUele = "/codeGroup/codeGroupUele"; /* #-> */
		//		var goUrlDele = "/codeGroup/codeGroupDele"; /* #-> */

				var seq = $("input:text[name=seq]"); /* #-> */

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