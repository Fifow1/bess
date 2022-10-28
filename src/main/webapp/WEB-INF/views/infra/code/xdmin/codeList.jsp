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
    <!--  -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@include file="../../base/xdminHeader.jsp"%>
		<div class="container" style="margin-right: 400px;">
			<form  method="post" name="formList" id="formList">
				<input type="hidden" name="shSeq">
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<input type="hidden" name="checkboxSeqArray">
				<div style="height: 500px; width: 1400px">
					<div style="margin-top: 100px; margin-bottom: 30px;">
						<h5 class="m-0 font-weight-bold text-dark">코드 관리</h5>
					</div>
					<div class="row" style="width: 1400px; margin-left: 0px; height: 50px; border-top: 1px solid black;">
						<div class="col-1">
							<h5 style="padding-left: 0px; margin-top: 15px; font-size: 17px; font-weight: 700; color: black;">검색순서</h5>
						</div>
						<div class="col" style="margin-top: 10px;">
							<div class="form-check" style="float: left; margin-right: 40px; display: inline-block;">
								<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"> <label class="form-check-label" for="flexRadioDefault1" style="color: black;margin-top: 2px;">번호순</label>
							</div>
							<div class="form-check" style="float: left; margin-right: 40px; display: inline-block;">
								<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked> <label class="form-check-label" style="color: black;margin-top: 2px;" for="flexRadioDefault2">최신순</label>
							</div>
							<div style="width: 200px; float: left; display: inline-block;">
								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="height: 30px; width: 180px">
							</div>
							<div style="width: 5px; float: left;display: inline-block;">
								<p>~</p>
							</div>
							<div style="width: 200px; float: left; margin-left: 30px;display: inline-block;" >
								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="height: 30px; width: 180px">
							</div>
							<%-- <div class="dropdown" style="float: left;">
								<select class="form-select" aria-label="Default select example" id="shdate" name="shdate" style="padding-bottom: 2px; padding-top: 2px;">
									<option value="" <c:if test = "${empty vo.shdate }"> selected</c:if>>검색구분</option>
									<option value="1" <c:if test = "${ vo.shdate eq 1 }"> selected</c:if>>등록일</option>
									<option value="2" <c:if test = "${ vo.shdate eq 2}"> selected</c:if>>수정일</option>
								</select>
							</div> --%>
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
									<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 이름(코드)</option>
									<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름 (한글)</option>
									<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드 이름(코드)</option>
									<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드 이름</option>
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
								<input type="text" class="form-control bg-light border-0 small" placeholder="검색어를 입력해주세요." name="shValue" id="shValue"style="width: 250px; float: left;" value="<c:out value="${vo.shValue }"/>">
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
										<th style="color: white; border-bottom: 0px;">#</th>
										<th style="color: white; border-bottom: 0px;">코드그룹 코드</th>
										<th style="color: white; border-bottom: 0px;">코드그룹 이름(한글)</th>
										<th style="color: white; border-bottom: 0px;">코드</th>
										<th style="color: white; border-bottom: 0px;">코드 이름(한글)</th>
										<th style="color: white; border-bottom: 0px;">사용</th>
										<th style="color: white; border-bottom: 0px;">순서</th>
										<th style="color: white; border-bottom: 0px;">등록일</th>
										<th style="color: white; border-bottom: 0px;">수정일</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0 }">
											<tr>
												<td class="text-center" colspan="10">없음</td>
											</tr>
										</c:when>
										<c:otherwise>

											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
													<td><c:out value="${list.CCseq}" /></td>
													<td><c:out value="${list.CCGname_code}" /></td>
													<td><c:out value="${list.CCGname }" /></td>
													<td><c:out value="${list.CCname_code }" /></td>
													<td><a href="javascript:goForm(<c:out value="${list.CCseq }"/>)" class="link-dark"><c:out value="${list.CCname}" /></a></td>	
													<td><c:out value="${list.CCdelYn }" /></td>
													<td>1</td>
													<td><c:out value="${list.CCregdate}" /></td>
													<th>2022.08.29</th>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<%@include file="../../base/pagination.jsp"%>
						<div class="row">
							<div class="d-flex justify-content-start" style="float: left; width:50%;">
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
	
		var goUrlList = "/code/codeList"; /* #-> */
		var goUrlForm = "/code/codeForm";
		
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