
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--드래그 앤 드롭-->

	<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
 
    <title>Start Up</title>
 
    <style type="text/css">
       .inputFile,
#Preview,
#Preview li{
    float:left
}
.inputFile{
    margin-bottom: 10px;
}
.addImgBtn{
    width: 80px !important;
    height: 80px !important;
    line-height: 71px !important;
    background-color: #fff !important;
    color: #b7b7b7 !important;
    border: 2px solid #b7b7b7;
    font-size: 35px !important;
    padding: 0 !important;
}

#Preview{
    margin-left: 20px;
    width: 650px;
}
#Preview li{
    margin-left: 10px;
    margin-bottom: 10px;
    position: relative;
    border: 1px solid #ececec;
    cursor:move
}
.delBtn{
    position: absolute;
    top: 0;
    right: 0;
    font-size: 13px;
    background-color: #000;
    color: #fff;
    width: 18px;
    height: 18px;
    line-height: 16px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
}


/*__  */


.insert {
    padding: 20px 30px;
    display: block;
    width: 600px;
    margin: 5vh auto;
    height: 90vh;
    border: 1px solid #dbdbdb;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.insert .file-list {
    height: 200px;
    overflow: auto;
    border: 1px solid #989898;
    padding: 10px;
}
.insert .file-list .filebox p {
    font-size: 14px;
    margin-top: 10px;
    display: inline-block;
}
.insert .file-list .filebox .delete i{
    background-color: red;
    margin-left: 5px;
}
 
    </style>
</head>
 
<body>

	<div class="filebox clearfix">
		<button id="reset" calss="btn">리셋</button>
		<div class="inputFile">
			<label for="AddImgs" class="addImgBtn">+</label> <input type="file" id="AddImgs" class="upload-hidden" accept=".jpg, .png, .gif" multiple style="visibility: hidden; width: 10px;" >
		</div>
		<ul id="Preview" class="sortable ps-0"></ul>
	</div>
	<!-- ____ -->
	<div class="insert">
	    <form method="POST" onsubmit="return false;" enctype="multipart/form-data">
	        <input type="file" onchange="addFile(this);" multiple />
	        <div class="file-list"></div>
	    </form>
	</div>


	<script type="text/javascript">
	
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
		
		/* __ */
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
		                htmlData += '   <buttton class="delete" onclick="deleteFile(' + fileNo + ');">x</buttton>';
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
		}
	</script> 
</body>
</html>