
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
    
    <!-- Jquery CDN -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="../../base/xdminHeader.jsp"%>
		<div class="container">
			<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
			<%@include file="./codeGroupVo.jsp"%>	
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
						<button type="button" id="btnSave" name="btnSave" class="btn btn-dark" style="width: 200px;">등록하기</button>
						<button type="button" id="btnList" name="btnList" class="btn btn-dark" style="width: 200px;">목록으로</button>
					</div>
				</div>
			</form>
			<form name="formVo" id="formVo" method="post">
				<!-- *Vo.jsp s -->
				<%@include file="./codeGroupVo.jsp"%>
				<!-- #-> -->
				<!-- *Vo.jsp e -->
			</form>
			<br><br><br><br><br>
			
			
			
			
			
			
			
			
			<!-- <script type="text/javascript">
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
				
			</script> -->

			<script type="text/javascript">
				var goUrlList = "/codeGroup/codeGroupList"; /* #-> */
				var goUrlInst = "/codeGroup/codeGroupIsrt"; /* #-> */
				var goUrlUpdt = "/codeGroup/codeGroupUpdt"; /* #-> */
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
		</div>
	</div>
</body>
</html>