<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="/resources/css/main2.css">
<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style type="text/css">
</style>
</head>
<body>


<div>
	<!------------------------------------------------------------ header ------------------------------------------------------------------------>
	<%@include file="infra/base/header.jsp"%>
	<!---------------------------------------------------------------------- body(keyboard) ----------------------------------------------------------->
	<div id="wrapper"style=" height: 4200px;">
	<div id="back" style="height: 1100px; width: 100%; background: url(/resources/images/main.png); background-size: cover; background-attachment: scroll; z-index: 1; postiion : relative;">	
		<!-- <button type="button" class="btn btn-primary" style="margin-top: 450px; margin-left:200px; width:400px; height:200px; postiion : absolute;">구매하러가기</button> -->
	</div>
	<br>
	<br>
	<!-- body -->
	<div class="container">
		sessSeq: <c:out value="${sessSeq }"/><br>
		sessId: <c:out value="${sessId }"/><br>
		<div class="row" style="padding-right: 0px;">
			<div class="col" style="margin-left: 70px; width: 400px;">
				<br>
				<p style="text-align: left; font-size: 24px; font-family: 'Edu NSW ACT Foundation', cursive;">Keyboard</p>
				<hr style="width: 400px; color: black;">
				<br>
			</div>
			<div class="col ms-5">
				<div class="form_radio_btn radio_male" style="display: inline-block;">
					<input id="radio-1" type="radio" name="category" value="34" checked> <label for="radio-1">Keyboard</label>
				</div>
				<div class="form_radio_btn" style="display: inline-block;">
					<input id="radio-2" type="radio" name="category" value="35"> <label for="radio-2">DeskMat</label>
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
<%@include file="infra/base/footer.jsp"%>
</div>

<!---------------------------------------------------------------------- footer ----------------------------------------------------------->

<script src="http://code.jquery.com/jquery-latest.js"></script>   
 
<script type="text/javascript">
    $("input:radio[name='category']").on('change',function(){
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
                category : kind 
                
            }
        
            ,success: function(data) {
            		/* alert(data.list[0].title) */
            		var tmp ="";
            		for(var i=0; i < data.list.length; i++){
	            		if( i%2 == 1){
	            			tmp += '<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px;">';
	            		} else{
	            			tmp += '<div style="width: 550px; height: 450px; background-color: red; display: inline-block; margin-bottom: 100px; margin-right: 65px;">';
	            		}
		            	tmp += '	<div style="width: 550px; height: 350px; background-color: gray;"></div>';
	            		tmp += '		<div style="margin-left: 175px;">';
	            		tmp += '			<div style="width: 200px; height: 40px; background-color: gray;">';
	            		tmp += data.list[i].title
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
				
