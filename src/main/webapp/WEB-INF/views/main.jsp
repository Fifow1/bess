<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>main</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Edu+VIC+WA+NT+Beginner:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,600;1,200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Edu+NSW+ACT+Foundation:wght@600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/main.css">
<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style type="text/css">
</style>
</head>
<body>



	<!------------------------------------------------------------ header ------------------------------------------------------------------------>
	<nav class="navbar navbar-expand-lg header">
		<div class="container">
			<div style="margin-top: 30px; margin-right: 70px;">
				<a class="navbar-brand" href="#"><h1 style="color: #FFFFFF; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1></a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav" style="font-family: 'Kanit', sans-serif;">
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link active" aria-current="page" style="color: #FFFFFF;">Home</a></li>
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="./product/productList_deskmat.html">shop</a></li>
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="#">community</a></li>
				</ul>
			</div>
			<div id="headerR" class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button class="btn btn-outline" type="button" onclick="location.href='/member/userLogin'" style="color: #FFFFFF">
					<i class="fa-solid fa-user"></i>
				</button>
				<button class="btn btn-outline me-md-2" type="button" style="color: #FFFFFF">
					<i class="fa-solid fa-cart-shopping"></i>
				</button>
			</div>
		</div>
	</nav>

	<!---------------------------------------------------------------------- body(keyboard) ----------------------------------------------------------->
	<div id="back" style="height: 500px; width: 100%; background: url(/resources/images/green4.png); background-size: cover; background-attachment: scroll;"></div>
	<br>
	<br>
	<!-- body -->
	<input type="radio">
	<div class="container">
		
		<div class="row" style="padding-right: 0px;">
			<div class="col" style="margin-left: 70px; width: 400px;">
				<br>
				<p style="text-align: left; font-size: 24px; font-family: 'Edu NSW ACT Foundation', cursive;">Keyboard</p>
				<hr style="width: 400px; color: black;">
				<br>
			</div>
			<div class="col ms-5">
				<div class="form_radio_btn radio_male" style="display: inline-block;">
					<input id="radio-1" type="radio" name="ifprCategory" value="34" checked> <label for="radio-1">Keyboard</label>
				</div>
				<div class="form_radio_btn" style="display: inline-block;">
					<input id="radio-2" type="radio" name="ifprCategory" value="35"> <label for="radio-2">DeskMat</label>
				</div>
			</div>
		</div>
		
		
		<div style="width: 90%; height: 1300px; background-color: blue; margin-left: 63px;" id="good" >
			<c:forEach items="${list}" var="list" varStatus="status">
				<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px; margin-right: 60px;">
					<div style="width: 550px; height: 350px; background-color: gray;"></div>
					<div style="margin-left: 175px;">
						<div style="width: 200px; height: 40px; background-color: gray;">
							<c:out value="${list.title}"/>
						</div>
						<div style="width: 200px; height: 40px; background-color: gray;"></div>
					</div>
				</div>
			</c:forEach>
		 	<%-- <div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px;">
				<div style="width: 550px; height: 350px; background-color: gray;"></div>
				<div style="margin-left: 175px;">
					<div style="width: 200px; height: 40px; background-color: gray;">
						<c:out value="${list.ifprTitle }" />
					</div>
					<div style="width: 200px; height: 40px; background-color: gray;	"></div>
				</div>
			</div>
			<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px; margin-right: 60px;">
				<div style="width: 550px; height: 350px; background-color: gray;"></div>
				<div style="margin-left: 175px;">
					<div style="width: 200px; height: 40px; background-color: gray;"></div>
					<div style="width: 200px; height: 40px; background-color: gray;	"></div>
				</div>
			</div>
			<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px;">
				<div style="width: 550px; height: 350px; background-color:gray;"></div>
				<div style="margin-left: 175px;">
					<div style="width: 200px; height: 40px; background-color: gray;"></div>
					<div style="width: 200px; height: 40px; background-color: gray;	"></div>
				</div>
			</div> --%>
		</div>
		<div class="row" style="display: flex; justify-content: center; margin-bottom: 15px;">
			<div class="col product_blue2"></div>
		</div>
	</div>
	<!---------------------------------------------------------------------- body(desk mat) ----------------------------------------------------------->

	<div style="width: 100%; height: 500px; background: url(/resources/images/desk.jpg); background-size: cover; background-attachment: fixed;"></div>

	<div class="container">
		<div class="row">
			<div class="col" style="margin-left: 70px;">
				<br>
				<p style="text-align: left; font-size: 24px; font-family: 'Edu NSW ACT Foundation', cursive;">Desk mat</p>
				<hr style="width: 400px; color: black;">
			</div>
			<br>
		</div>
		<div class="row" style="display: flex; justify-content: center; margin-bottom: 15px;">
			<div class="col-9 blue_mat"></div>
			<div class="col-3" style="margin-left: 100px; float: right;">
				<div class="green_mat"></div>
				<div class="black_mat"></div>
			</div>
		</div>
	</div>
</div>

<!---------------------------------------------------------------------- footer ----------------------------------------------------------->
<div class="container-fluid footermain">	
	<div class="row" style="padding-top: 40px;">
		<div class="col d-flex justify-content-center" style="padding-left: 90px; padding-bottom: 10px; padding-right:0px; ">
			<div>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">Ham소개</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">자주묻는질문</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a>
				<a href="#" class="link-light ps-5"  style="text-decoration: none;">개인정보처리방침</a>	
				<a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
			</div>
		</div>
		<div class="col d-flex justify-content-center" style="padding-right: 137px; padding-left: 0px;">
			<div class="">
				<a href="#" class="link-light ps-5 instagram" style="text-decoration: none;">인스타그램</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">페이스북</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">이용약관</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">개인정보처리방침</a>
				<a href="#" class="link-light ps-5" style="text-decoration: none;">사업자정보확인</a>
			</div>
		</div>
	</div>
	<hr style="color: white; margin-top: 0px;">
	<div class="row" style="padding-left: 40px;">
		<div class="col" style="padding-left: 145px;">
			<h1 style="color: white; font-family: 'Edu VIC WA NT Beginner', cursive;">Ham</h1>
		</div>
		<div class="col"style="padding-right:20px;">
			<h1 style="color: white;">고객센터</h1>
		</div>
	</div>
	<div class="row" style="padding-left: 40px;">
		<div class="col" style="padding-left: 145px;">
			<p style="color: white; text-align: left;">대표이사 : 서정민 사업자등록번호 : 220-88-93187 통신판매업신고 : 2016-서울강남-00359<br><br>
				호스팅사업자 : (주)브랜디 주소 : 서울 강남구 테헤란로38길 12 (역삼동)<br><br>
				개인정보관리책임자 : 주현주(privacy@brandi.co.kr)<br><br>
				(주)브랜디가 제공하는 하이버 서비스는 통신판매중개자로서 통신판매 당사자가 아니며,<br><br>
				판매자가 등록한 상품정보 및 거래에 하이버는 책임지지 않습니다.<br><br>
				100% 정품<br><br>
				하이버에서 판매되는 모든 브랜드 제품은 정식제조, 정식수입원을 통해 유통되는 100% 정품입니다.<br><br>
				안전거래센터신고하기</p>
		</div>
		<div class="col">
			<p style="color: white; text-align: left;">영업시간 AM 10:00 ~ PM 17:00 (주말 및 공휴일 ㅣ휴뮤)<br><br>
				점심시간 AM 12:00 ~ PM 13:30</p>
		</div>
	</div>
</div>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>   
 
<script type="text/javascript">
    $("input:radio[name='ifprCategory']").on('change',function(){
        var kind = $(this).val(); 
        //버튼이 클릭 되었을 시, 개별 버튼의 값이 kind 변수에 담겨집니다.
        $.ajax({
        	async: true 
            ,url : "/mainSelectList"
            ,type : "post"
            ,cache : false
            ,data : {
                /*  id : $(this).val() */
                "kind":kind,    // 버튼의 value값에 따라 작동합니다.
                /* 중요  */
                ifprCategory : kind 
                
            }
            ,success: function(data) {
            		alert(data.list[0].ifprTitle);
            		var ifprTitle = '${ifprTitle}';
            		var tmp ="";
            		for(var i=0; i < data.list.length; i++){
	            		if( i%2 == 0){
	            			tmp += '<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px;">';
	            		} else{
	            			tmp += '<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px; margin-right: 65px;">';
	            		}
		            	tmp += '	<div style="width: 550px; height: 350px; background-color: gray;"></div>';
	            		tmp += '		<div style="margin-left: 175px;">';
	            		tmp += '			<div style="width: 200px; height: 40px; background-color: gray;">';
	            		tmp += ifprTitle;
						tmp += '			</div>';	
						tmp += '			<div style="width: 200px; height: 40px; background-color: gray;"></div>';
						tmp += '		</div>';
						tmp += '	</div>';
						tmp += '</div>';
	            		$('#good').html(tmp);
            		
            		}
            	
    			/* $("input:radio[name='ifprCategory']").html(data); */
    		}
            
            ,error : function(){
                alert('error');
            }//error
        })//ajax
    });//button click
    

 
</script>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50704cc15b.js" crossorigin="anonymous"></script>	

	
	<!-- end -->
</body>
</html>
				
