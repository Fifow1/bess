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
    <!-- Custom styles for this template-->
    <link href="/resources/css/1.css" rel="stylesheet">
    
    <!-- Jquery CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- test -->
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style type="text/css">
    	.addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#E9ECEF;
		padding-top:5px; 
		padding-left:5px;
	}
 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#2E2E2E;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="../../base/xdminHeader.jsp"%>
		<div class="container">
			<form method="post" name=form autocomplete="off" enctype="multipart/form-data">
			<br><br>
			<div class="row">
				<div class="col mb-5">
					<h3 class="m-0 font-weight-bold text-dark mb-5 mt-5">상품 관리(등록)</h3>
				</div>
			</div>
			<input type="hidden" name="ifprSeq" value="<c:out value="${item.ifprSeq}"/>" >
			
		<!-- <div class="filebox clearfix">
			<button type="button" id="reset" calss="btn">리셋</button>
			<div class="inputFile">
				<label for="AddImgs" class="addImgBtn">+</label> <input type="file" id="AddImgs" class="upload-hidden" accept=".jpg, .png, .gif" multiple style="visibility: hidden; width: 10px;" >
			</div>
			<ul id="Preview" class="sortable ps-0"></ul>
		</div>
	
		<div class="insert">
   	<form method="POST" onsubmit="return false;" enctype="multipart/form-data">
       		<input type="file" onchange="addFile(this);" multiple />
        	<div class="file-list"></div>
    </form>
		</div>

  			<button type="button" onclick="validation()">^ㅡ^</button>
  			<label for="img1" class="form-label fa-solid fa-file fa-5x"></label>
  			<input class="form-control" type="file" multiple="multiple" id="img1" name="img1">
  			
  			<label for="img2" class="form-label fa-solid fa-file fa-5x"></label>
  			<input class="form-control" type="file" multiple="multiple" id="img2" name="img2">
			<br>
			 -->
			<div class="row">	
				<div class="col">
					<p class="h6" color="#2E2E2E";>상품번호</p>
					<input type="text" id="disabledTextInput" class="form-control" name="title" placeholder="한글,숫자" readonly>
				</div>
				<div class="col">
					<p class="h6" color="#2E2E2E";>상품이름</p>
					<input type="text" class="form-control" id="title" name="title">
				</div>
			</div><br>
			<div class="row">	
				<div class="col">
					<p class="h6" color="#2E2E2E";>상품가격</p>
					<input type="text" class="form-control" id="title" name="title" placeholder="한글,숫자">
				</div>
				<div class="col">
					<p class="h6" color="#2E2E2E";>재고</p>
					<input type="text" class="form-control" id="title" name="title">
				</div>
			</div><br>
			<div class="row">
				<div class="col">
					<p class="h6" color="#2E2E2E";>카테고리</p>
					<select class="form-select" aria-label="Default select example">
						<option selected>선택해주세요</option>
						<option value="">키보드</option>
						<option value="">마우스패드</option>
					</select>
				</div>
				<div class="col">
					<p class="h6" color="#2E2E2E";>옵션</p>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="숫자">
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
					<p class="h6" color="#2E2E2E";>삭제여부</p>
					<select class="form-select" aria-label="Default select example">
						<option selected>선택해주세요</option>
						<option value="1">Y</option>
						<option value="2">N</option>
					</select>
				</div>
			</div><br>
			<div class="row">
				<div class="col-sm-6 mt-3 mt-sm-0">
		        	<c:set var="type" value="2"/>		<!-- #-> -->
		        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
		        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
		        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
		        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
		            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
		 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
					<div id="<c:out value="${name }"/>Preview" class="addScroll">
						<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							<c:if test="${listUploaded.type eq type }">
								<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
									<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
									<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
								</div>
							</c:if>
						</c:forEach>
					</div>
		        </div>
			</div>
			<br><br><br>
			<div class="row">
				<div class="col d-flex justify-content-center">
					<button type="button" class="btn btn-dark" style="width: 200px;" id="btnSave">등록하기</button>
				</div>
			</div>
			<br><br><br><br><br><br>
			</form>
		</div>
	</div>
	<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="../user/productVo.jsp"%>
<!-- *Vo.jsp e -->
</form>
	
<script type="text/javascript">
	var goUrlList = "/product/productList";
	var goUrlInst = "/product/productIsrt";
	var seq = $("input:hidden[name=ifprSeq]");
	var formVo = $("form[name=formVo]");
	var form = $("form[name=form]");
	
$("#btnSave").on("click", function(){
		
		if (seq.val() == "0" || seq.val() == ""){
			alert('hi1');
	   		// insert
	   		/* if (validationInst() == false) return false; */
 			/* setCheckboxValue($("#ifmmEmailConsent"), $("#ifmmEmailConsentNy"));
			setCheckboxValue($("#ifmmSmsConsent"), $("#ifmmSmsConsentNy")); */
	   		form.attr("action",goUrlInst).submit();
	   	} else {
	   		alert('hi');
	   	}
	});
	
	
const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
const MAX_TOTAL_FILE_NUMBER = 5;				//	5

function kbToMb(bytes) {
    var e = Math.floor(Math.log(bytes)/Math.log(1024));

    if(e == "-Infinity") return 0;
    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
}

// 이미지 전용
var extArray1 = new Array();
extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

// 문서관련
var extArray2 = new Array();
extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) {
	if(allowedMaxTotalFileNumber < (filesCount + uploadedFilesCount)){
		alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//		$("#file"+seq).val("");
//		obj.val("");
		return false;
	}
}


checkUploadedExt = function(objName, seq, div) {
	var ext = objName.split('.').pop().toLowerCase();
	var extArray = eval("extArray" + div);
	
	if(extArray.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
//		$("#file"+seq).val("");
		return false;
	}
}


checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

	if(obj.size > allowedEachFileSize){
		alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
		$("#file"+seq).val("");
		return false;
	}
}


checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
	if(totalSize > allowedTotalFileSize){
		alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
		$("#file"+seq).val("");
		return false;
	}
}
/* file validiation e */

upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
//	objName 과 seq 는 jsp 내에서 유일 하여야 함.
//	memberProfileImage: 1
//	memberImage: 2
//	memberFile : 3
//	uiType: 1 => 이미지형
//	uiType: 2 => 파일형
//	uiType: 3 => 프로필형
	var files = $("#" + objName +"")[0].files;
	var filePreview = $("#" + objName +"Preview");
	var numbering = [];
	var maxNumber = 0;
	
	if(uiType == 1) {
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
		
		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else if(uiType == 2){
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > li");
		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else {
		// by pass
	}
	
	$("#" + objName + "MaxNumber").val(maxNumber);
	var totalFileSize = 0;
	var filesCount = files.length;
	var filesArray = [];
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
	allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
	allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
	
	if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
	
	for (var i=0; i<filesCount; i++) {
		if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
		if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }
		totalFileSize += files[i].size;
		
		filesArray.push(files[i]);
	}
	if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
	
	if (uiType == 1) {
		for (var i=0; i<filesArray.length; i++) {
			var file = filesArray[i];
			var picReader = new FileReader();
		    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
		    picReader.readAsDataURL(file);
		}			
	} else if(uiType == 2) {
		for (var i = 0 ; i < filesCount ; i++) {
			addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
		}
	} else if (uiType == 3) {
		var fileReader = new FileReader();
		 fileReader.onload = function () {
			 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
		 }	
		 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
	} else {
		return false;
	}
	return false;
}

addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
	return function(event) {
		var imageFile = event.target;
		var sort = parseInt(maxNumber) + i;
		var divImage = "";
		divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
		divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
		divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color:#2E2E2E; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
		divImage += '</div> ';
		
		filePreview.append(divImage);
    };
}
delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#imgDiv_"+type+"_"+sort).remove();
	
	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');
	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}
</script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <!-- <script src="/resources/js/sb-admin-2.min.js"></script> -->

    <!-- Page level plugins -->
    <!-- <script src="/resources/vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
    <script src="/resources/js/demo/chart-area-demo.js"></script>
    <script src="/resources/js/demo/chart-pie-demo.js"></script>
    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>