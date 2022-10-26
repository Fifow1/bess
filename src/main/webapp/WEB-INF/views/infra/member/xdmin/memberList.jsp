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
    <jsp:useBean id="CodeServiceImpl" class="bess.ham.infra.modules.code.CodeServiceImpl"/>
    <!-- Datepicker -->
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
			<form method="post" id="formList" name="formList">
				<input type="hidden" name="shSeq">
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<input type="hidden" name="checkboxSeqArray">
				<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
				<c:set var="listCodeAuthority" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
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
								<select class="form-select" name="shOption">
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
													<td><a href="javascript:goForm(<c:out value="${list.seq }"/>)" class="link-dark"><c:out value="${list.id}" /></a></td>
													<%-- <td><a href="javascript:goForm(<c:out value="${list.seq }"/>)" class="link-dark"><c:out value="${list.groupName}" /></a></td> --%>
													<td><c:out value="${list.pw }"/></td>
													<td>
													<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
														<c:if test="${list.gender eq listGender.CCseq}"><c:out value="${listGender.CCname }"/></c:if>
													</c:forEach>
													</td>
													<td>
													<c:forEach items="${listCodeAuthority}" var="listAuthority" varStatus="statusAuthority">
														<c:if test="${list.authority eq listAuthority.CCseq}"><c:out value="${listAuthority.CCname }"/></c:if>
													</c:forEach>
													</td>
													<td><c:out value="${list.email }"/></td>
													<td><c:out value="${list.numPhone }"/></td>
													<td><c:out value="${list.regdate }"/></td>
													<td>
														<c:if test="${list.delYn eq 1}"><c:out value="Yes" /></c:if>
														<c:if test="${list.delYn eq 0}"><c:out value="No" /></c:if>
													</td>
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
						<div class="d-flex justify-content-end">
							<button type="button" class="btn btn-dark" id="btnForm">등록</button>	
						</div>
					</div>
				</div>	
			</form>
		</div>
	</div>

	<script type="text/javascript">
	
		var goUrlList = "/member/memberXdminList"; /* #-> */
		var goUrlForm = "/member/memberXdminForm";
		
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
    <!-- jQuery -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/moment.js"></script>
	<script src="/resources/js/bootstrap-datetimepicker.min.js"></script>
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<script src="/resources/js/jquery.stellar.min.js"></script>
	<script src="/resources/js/jquery.flexslider-min.js"></script>
	
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