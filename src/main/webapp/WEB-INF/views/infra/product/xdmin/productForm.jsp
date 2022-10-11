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
<!-- test -->
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    
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
			<form method="post" action="/product/productIsrt">
			<br><br>
			<div class="row">
				<div class="col mb-5">
					<h5 class="m-0 font-weight-bold text-dark">회원 관리(등록)</h5>
				</div>
			</div>
			
			
			
		<div class="filebox clearfix">
			<button type="button" id="reset" calss="btn">리셋</button>
			<div class="inputFile">
				<label for="AddImgs" class="addImgBtn">+</label> <input type="file" id="AddImgs" class="upload-hidden" accept=".jpg, .png, .gif" multiple style="visibility: hidden; width: 10px;" >
			</div>
			<ul id="Preview" class="sortable ps-0"></ul>
		</div>
	
		<div class="insert">
   	<!-- <form method="POST" onsubmit="return false;" enctype="multipart/form-data"> -->
       		<input type="file" onchange="addFile(this);" multiple />
        	<div class="file-list"></div>
   <!--  </form> -->
		</div>

  			<button type="button" onclick="validation()">^ㅡ^</button>
  			<label for="img1" class="form-label fa-solid fa-file fa-5x"></label>
  			<input class="form-control" type="file" multiple="multiple" id="img1" name="img1">
  			
  			<label for="img2" class="form-label fa-solid fa-file fa-5x"></label>
  			<input class="form-control" type="file" multiple="multiple" id="img2" name="img2">
			<br>
			
			<div class="row">	
				<div class="col">
					<p class="h6" color="#2E2E2E";>상품이름</p>
					<input type="text" class="form-control" id="title" name="title" placeholder="한글,숫자">
				</div>
				<div class="col">
					<p class="h6" color="#2E2E2E";>비밀번호</p>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="영문(대소문자)숫자">
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
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="숫자">
				</div>
			</div><br>
			<div class="row">
				<div class="col">
					<p class="h6" color="#2E2E2E";>이메일</p>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="숫자">
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
					<button type="submit" class="btn btn-dark" style="width: 200px;">등록하기</button>
				</div>
			</div>
			<br><br><br><br><br><br>
			</form>
		</div>
	</div>
	
<script type="text/javascript">
/* upload = function (objName, seq, TotalFile)

var totalFileSize= 0;
var obj = $("#" + objName + "")[].files;
var fileCount = obj.length;


validation = function(){
	var obj = document.getElementById("img1").files;
	var obj2 = document.getElementById("img2").files;
	
	var maxCount = 5;
	var maxSizeOne = 2123094;
	var maxSize = 0;
	
	alert(obj);
	alert(obj.length);
	
	
	for(var i=0; i<obj.length; i++){
		var sum = 0;
		sum += obj[i].size;
		if(obj.length > maxCount){
			alert('파일개수초과');
			return false;
		} else if(obj[i].size > maxSizeOne){
			alert('개당파일용량초과')
			return false;
		} else if(sum > maxSize){
			alert('총파일용량초과')
			return false;
		} else{
			return true;
		}
		alert(obj[i].name + ":" + obj[i].size);
	}

	
	
	
	
	
	alert(obj2);
	alert(obj2.length);
	
	for(var i=0; i<obj.length; i++){
		alert(obj2[i].name + ":" + obj2[i].size);
	}

}



	$('#reset').click(function(){
		$('#Preview').empty();
	  });
	
	
		$(function() {
			//드래그 앤 드롭
			$(".sortable").sortable(); //드래그

			//이미지 등록
			$("#AddImgs").change(
					
					
							function(e) {
								//div 내용 비워주기
								

								var files = e.target.files;
								var arr = Array.prototype.slice.call(files);
								//업로드 가능 파일인지 체크
								for (var i = 0; i < files.length; i++) {
									if (!checkExtension(files[i].name,
											files[i].size)) {
										return false;
									}
								}
								preview(arr);
								function checkExtension(fileName,fileSize){
							          var regex = new RegExp("(.*?)\.(exe|sh|zip|alz|hwp)$");
							          var maxSize = 20971520;  //20MB

							          if(fileSize >= maxSize){
							              alert('이미지 크기가 초과되었습니다.');
							              $("#AddImgs").val("");  //파일 초기화
							              return false;
							          }

							          if(regex.test(fileName)){
							              alert('확장자명을 확인해주세요.');
							              $("#AddImgs").val("");  //파일 초기화
							              return false;
							          }
							          return true;
							      }

								function preview(arr) {
									arr.forEach(function(f) {
												//파일명이 길면 파일명...으로 처리
												/*
												var fileName = f.name;
												if(fileName.length > 10){
												    fileName = fileName.substring(0,7)+"...";
												}
												 */
												 

												//div에 이미지 추가
												var str = '<li class="ui-state-default" id="imgChild">';
												//str += '<span>'+fileName+'</span><br>';

												//이미지 파일 미리보기
												if (f.type.match('image.*')) {
													//파일을 읽기 위한 FileReader객체 생성
													var reader = new FileReader();
													reader.onload = function(e) {

														//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
														str += '<img src="'+ e.target.result +'" value="' + f.name + '" width=100 height=100>';
														str += '<p>' + f.name + '</p>';
														str += '<button type="button" class="delBtn" id="delImg">x</button>';
														str += '</li>';
														$(str).appendTo(
																'#Preview');
													}
													reader.readAsDataURL(f);
												} else {
													//이미지 파일 아닐 경우 대체 이미지
													/*
													str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=60 height=60 />';
													$(str).appendTo('#Preview');
													 */
												}
											})
								}
							})
			//이미지 삭제
			$(document).on("click", "#delImg", function() {
				$("#imgChild").remove();
			});

		});
		
		var fileNo = 0;
		var filesArr = new Array();

		/* 첨부파일 추가 */
		function addFile(obj){
		    var maxFileCnt = 5;   // 첨부파일 최대 개수
		    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
		    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
		    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

		    // 첨부파일 개수 확인
		    if (curFileCnt > remainFileCnt) {
		        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
		    } else {
		        for (const file of obj.files) {
		            // 첨부파일 검증
		            if (validation(file)) {
		                // 파일 배열에 담기
		                var reader = new FileReader();
		                reader.onload = function () {
		                    filesArr.push(file);
		                };
		                reader.readAsDataURL(file);

		                // 목록 추가
		                let htmlData = '';
		                htmlData += '<div id="file' + fileNo + '" class="filebox">';
		                htmlData += '   <p class="name">' + file.name + '</p>';
		                htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
		                htmlData += '</div>';
		                $('.file-list').append(htmlData);
		                fileNo++;
		            } else {
		                continue;
		            }
		        }
		    }
		    // 초기화
		    document.querySelector("input[type=file]").value = "";
		}

		/* 첨부파일 검증 */
		function validation(obj){
		    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
		    if (obj.name.length > 100) {
		        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
		        return false;
		    } else if (obj.size > (100 * 1024 * 1024)) {
		        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
		        return false;
		    } else if (obj.name.lastIndexOf('.') == -1) {
		        alert("확장자가 없는 파일은 제외되었습니다.");
		        return false;
		    } else if (!fileTypes.includes(obj.type)) {
		        alert("첨부가 불가능한 파일은 제외되었습니다.");
		        return false;
		    } else {
		        return true;
		    }
		}

		/* 첨부파일 삭제 */
		function deleteFile(num) {
		    document.querySelector("#file" + num).remove();
		    filesArr[num].is_delete = true;
		}

		/* 폼 전송 */
		function submitForm() {
		    // 폼데이터 담기
		    var form = document.querySelector("form");
		    var formData = new FormData(form);
		    for (var i = 0; i < filesArr.length; i++) {
		        // 삭제되지 않은 파일만 폼데이터에 담기
		        if (!filesArr[i].is_delete) {
		            formData.append("attach_file", filesArr[i]);
		        }
		    }

		    $.ajax({
		        method: 'POST',
		        url: '/register',
		        dataType: 'json',
		        data: formData,
		        async: true,
		        timeout: 30000,
		        cache: false,
		        headers: {'cache-control': 'no-cache', 'pragma': 'no-cache'},
		        success: function () {
		            alert("파일업로드 성공");
		        },
		        error: function (xhr, desc, err) {
		            alert('에러가 발생 하였습니다.');
		            return;
		        }
		    })
		} */
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