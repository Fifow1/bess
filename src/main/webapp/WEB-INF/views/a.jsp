<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style type="text/css">


* {
  box-sizing: border-box;
}
body {
  text-align: center;
  margin: 0;
  padding: 0;
}
h1 {
  margin: 0;
  padding: 35px;
  background: lightgoldenrodyellow;
}

/* 공통 클래스 */
.hide {
  display: none;
}

/* 회원가입 */
#form-container {
  max-width: 480px;
  margin: 0 auto;
  padding-bottom:100px;
}
#form-container h2 {
  font-size: 30px;
  color: #333;
  font-weight: 600;
  text-align: center;
  padding: 60px 0 30px;
  margin: 0 0 40px 0;
  border-bottom: 2px solid #333;
}

#form-container fieldset {
  text-align: left;
  margin: 0;
  padding: 0 0 10px 0;
  border: 0;
  vertical-align: middle;
}
#form-container fieldset label {
  display: inline-block;
  width: 120px;
  line-height: 45px;
  font-size: 14px;
  color: #333;
  font-weight: 500;
}
#form-container fieldset label span {
  display: inline-block;
  color: tomato;
  padding-left: 5px;
}
#form-container fieldset input {
  display: inline-block;
  width: calc(100% - 125px);
  height: 45px;
  padding: 10px 15px;
  margin-bottom: 15px;
  border: 1px solid #eee;
  border-radius: 2.5px;
}
#form-container #subit-button {
  font-size: 20px;
  font-weight: 500;
  margin-top: 30px;
  padding: 15px 80px;
  border-radius: 5px;
  color:#888;
  border:2px solid #888;
  background:#ddd;
}
#form-container #subit-button.allCheck {
  color: #fff;
  border: 2px solid #5f0081;
  background: #5f0081;
  cursor: pointer;
}

/* 경고 메세지 */
.msg {
  display: block;
  width: 100%;
  font-size: 12px;
  color: #666;
  margin-bottom: 5px;
  padding-left: 130px;
}
.msg:before {
  display: inline-block;
  content: "";
  clear: both;
  vertical-align: middle;
  width: 3px;
  height: 3px;
  margin-right: 5px;
  border-radius: 50%;
  background: #333;
}
.msg.hide {
  display: none;
}
.msg.success {
  color: green;
}
.msg.success:before {
  background: green;
}
</style>
<!-- Datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
  <h1>유효성 검사</h1>
  <div id='form-container'>
    <h2>회원가입</h2>

    <fieldset>
      <label>아이디<span>*</span></label>
      <input type="text" id='id' placeholder="아이디를 입력해주세요.">
      <div class='failure-message hide msg'>4자 이상의 영문 혹은 영문과 숫자를 조합</div>
      <div class='success-message hide msg success'>사용할 수 있는 아이디입니다.</div> -->
      <div class="feedback" id="idFeedback"></div>
      <input type="text" id='idAllowedNy' placeholder="아이디를 입력해주세요.">
    </fieldset>

    <fieldset>
      <label>비밀번호<span>*</span></label>
      <input type="text" id='password' placeholder="비밀번호를 입력해주세요.">
      <div class='password-message-wrap'>
        <span class='password-failure-length hide msg'>10자 이상 입력</span>
        <span class='password-failure-comb hide msg'>영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
        <span class='password-failure-contn hide msg'>동일한 숫자 3개 이상 연속 사용 불가</span>
        <span class='password-failure-upper hide msg'>영어 대문자 하나 이상 포함</span>
        <span class='password-success-message hide msg success'>사용할 수 있는 비밀번호입니다.</span>
      </div>
    </fieldset>

    <fieldset>
      <label>비밀번호 확인<span>*</span></label>
      <input type="text" id='password-retype' placeholder="비밀번호를 한번 더 입력해주세요.">
      <div class="mismatch-message hide msg">동일한 비밀번호를 입력해주세요.</div>
      <div class="match-message hide msg success">동일한 비밀번호가 입력되었습니다.</div>
    </fieldset>
    sessSeq: <c:out value="${sessSeq }"/><br>
sessName: <c:out value="${sessName }"/><br>
sessId: <c:out value="${sessId }"/><br>
    <button type="button" class="btn btn-danger border ms-2" id="btnLogout" style="width: 120px;">나가기</button>
	
    <button id="subit-button">회원가입</button>
  </div>
  
  <script type="text/javascript">
  
  
  $("#btnLogout").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/logoutProc"
			/* ,data : $("#formLogin").serialize() */
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/userLogin";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
  
  $("#id").on("focusout", function(){
		
		/* if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
			return false;
		} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');
						document.getElementById("id").classList.add('is-valid');
	
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						document.getElementById("idFeedback").innerText = "사용 가능 합니다.";
						
						document.getElementById("idAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.remove('is-valid');
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "사용 불가능 합니다";
						
						document.getElementById("idAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		/* } */
	});

  
  
  const elInputUsername = document.querySelector('#id');

  const elFailureMessage = document.querySelector('.failure-message');
  const elSuccessMessage = document.querySelector('.success-message');

  const elPassword = document.querySelector('#password');
  const elPasswordRetype = document.querySelector('#password-retype');

  const elPWRetypeFailureMsg = document.querySelector('.mismatch-message');
  const elPWRetypeSuccessMsg = document.querySelector('.match-message');

  const elPWFailureLeng = document.querySelector('.password-failure-length');
  const elPWFailureComb = document.querySelector('.password-failure-comb');
  const elPWFailureContn = document.querySelector('.password-failure-contn');
  const elPWFailureUpper = document.querySelector('.password-failure-upper');
  const elPWSuccessMessage = document.querySelector('.password-success-message');

  const elSubmitButton = document.querySelector('#subit-button');


  // { 비밀번호 } input 유효성 검사  
  function passwordFn () {

    if( isMoreThan10Length(elPassword.value) ) {
      elPWFailureLeng.classList.add('hide');
    } else {
      elPWFailureLeng.classList.remove('hide');
    }

    
    /* if( isPasswordEng(elPassword.value) ) {
      console.log('영어가 있다..');
    } else {
      console.log('영어가 없다...!!!');
    }
    
    if( isPasswordNum(elPassword.value) ) {
      console.log('숫자가 있다..');
    } else {
      console.log('숫자가 없다...!!!');
    }
    if( isPasswordSpeci(elPassword.value) ) {
      console.log('특수문자가 있다..');
    } else {
      console.log('특수문자가 없다...!!!');
    }
    if( isPasswordBlank(elPassword.value) ) {
      console.log('공백이 없다..');
    } else {
      console.log('공백이 있다...!!!');
    } */
    

    if( (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) &&
        (isPasswordBlank(elPassword.value)) &&
        (isPasswordChar(elPassword.value)) 
      ) {
      elPWFailureComb.classList.add('hide');
    } else {
      elPWFailureComb.classList.remove('hide');
    }

    if( isPasswordRepeat(elPassword.value) ) {
      elPWFailureContn.classList.remove('hide');
    } else {
      elPWFailureContn.classList.add('hide');
    }

    if( (isPasswordUpper(elPassword.value)) ) {
      elPWFailureUpper.classList.add('hide');
    } else {
      elPWFailureUpper.classList.remove('hide');
    }

    if( (isMoreThan10Length(elPassword.value)) && 
        (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) && 
        (isPasswordChar(elPassword.value)) && 
        (isPasswordBlank(elPassword.value)) && 
        (!isPasswordRepeat(elPassword.value)) && 
        ((isPasswordUpper(elPassword.value)))
      ) {
      elPWSuccessMessage.classList.remove('hide');
    } else {
      elPWSuccessMessage.classList.add('hide');
    }

    isSubmitButton();
  }

  elPassword.addEventListener('click', passwordFn)
  elPassword.addEventListener('keyup', passwordFn)
  elPassword.addEventListener('keyup', passwordRetypeFn)

  // { 비밀번호 확인 } input 유효성 검사
  function passwordRetypeFn() {
    if( isMatch(elPassword.value, elPasswordRetype.value) && isPasswordBlank(elPasswordRetype.value) ) {
      //console.log('두 비밀번호가 동일하다..');
      elPWRetypeFailureMsg.classList.add('hide');
      elPWRetypeSuccessMsg.classList.remove('hide');
    } else {
      //console.log('두 비밀번호가 다르다...!!!');
      elPWRetypeFailureMsg.classList.remove('hide');
      elPWRetypeSuccessMsg.classList.add('hide');
    }

    isSubmitButton();
  }

  elPasswordRetype.onclick = passwordRetypeFn;
  elPasswordRetype.onkeyup = passwordRetypeFn;

  //-------- 최종 유효성 검사에서 사용하는 함수다 ---------//

  // 모든 조건이 충족되었는지 확인하는 함수
  function isAllCheck() {
	if(document.getElementById("idAllowedNy").value == 1 && isMoreThan4Length(elInputUsername.value) && isUserNameChar(elInputUsername.value)){
      if( (isMoreThan10Length(elPassword.value)) && 
          (isPasswordEng(elPassword.value) + isPasswordNum(elPassword.value) + isPasswordSpeci(elPassword.value) >= 2) &&
          (isPasswordChar(elPassword.value)) &&
          (isPasswordBlank(elPassword.value)) && 
          (!isPasswordRepeat(elPassword.value)) && 
          ((isPasswordUpper(elPassword.value)))
        ) { // 비밀번호
        if( isMatch(elPassword.value, elPasswordRetype.value) ) { // 비밀번호 확인
          console.log('true!!');
          return true;
        }
      }
      
      }  else {
      console.log('false!!');
      document.getElementById("idAllowedNy").value = 0;
      return false;
    }
  }
  
  

  // [회원가입 버튼] 배경 활성화 함수
  function isSubmitButton() {
    if( isAllCheck() ) {
      elSubmitButton.classList.add('allCheck');
    }
    else {
      elSubmitButton.classList.remove('allCheck');
    }
  }

  // [회원가입 버튼] 클릭 이벤트 함수
  elSubmitButton.onclick = function() {
    if( isAllCheck() ) {
      alert('회원가입이 완료되었습니다!');
      elInputUsername.value = '';
      document.getElementById("idAllowedNy").value = '';
      elPassword.value = '';
      elPasswordRetype.value = '';
      elSuccessMessage.classList.add('hide');
      elPWRetypeSuccessMsg.classList.add('hide');
      elPWSuccessMessage.classList.add('hide');
      elSubmitButton.classList.remove('allCheck');
    }
    else {
      alert('모든 조건이 충족되어야합니다.');
    }
  };

  //-------- 유효성 검사에서 사용하는 함수다 ---------//

  // [아이디] 길이가 4자 이상이면 true를 리턴하는 함수
  function isMoreThan4Length(value) {
    // 아이디 입력창에 사용자가 입력을 할 때 
    // 글자 수가 4개이상인지 판단한다.
    // 글자가 4개 이상이면 success메세지가 보여야 한다.
    return value.length >= 4;
  }

  // [아이디] '영문, 숫자'만 있으면 true를 리턴하는 함수
  function isUserNameChar(username) {
    var letters = /^[A-Za-z0-9]+$/;

    if( username.match(letters) ) {
      return true;
    } else {   
      return false;
    }
  }

  // [비밀번호] 길이가 10자 이상이면 true를 리턴하는 함수
  function isMoreThan10Length (password) {
    return password.length >= 10;
  }

  // [비밀번호] 영문이 있으면 true를 리턴하는 함수
  function isPasswordEng (password) {
    var letters = /[A-Za-z]/; // 잘 모르겠지만 이것은 정규표현식으로 AZ - az 모든 알파벳을 담고 있다.
    
    if( letters.test(password) ) {  // 정규표현식에 영어문자가 모두 들었고. 정규표현식의 메소드인 test()로 비밀번호 문자에 영어가 있는지 판단한다.
      return true;
    } else {
      return false;
    }
  }

  // [비밀번호] 숫자가 있으면 true를 리턴하는 함수
  function isPasswordNum (password) {
    var letters = /[0-9]/;
    
    if( letters.test(password) ) {
      return true;
    } else {
      return false;
    }
  }

  // [비밀번호] 특수문자가 있으면 true를 리턴하는 함수
  function isPasswordSpeci (password) {
    var letters = /[~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]/;
    
    if( letters.test(password) ) {
      return true;
    } else {
      return false;
    }
  }

  // [비밀번호][비밀번호 확인] 스페이스가 없을 경우 true를 리턴하는 함수
  function isPasswordBlank (password) {
    if( password.search(/\s/) === -1 ) {
      return true;
    } else {
      return false;
    }
  }

  // [비밀번호] '영문, 숫자, 특수문자'만 있으면 true를 리턴하는 함수
  function isPasswordChar(password) {
    var letters = /^[A-Za-z0-9~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]+$/;

    if( password.match(letters) ) {
      //console.log('가능한 것만 있네!');
      return true;
    } else {
      //console.log('안되는 것도 있네?');
      return false;
    }
  }

  // [비밀번호] 동일한 숫자 3개 이상 연속 사용하면 true를 리턴하는 함수
  function isPasswordRepeat (password) {
    // password의 길이만큼 반복되는 반복문이 있어야 한다.
    // 문자 하나와 나 자신+1과 나자신 +2와 비교한다.
    // 숫자인지 아닌지 판단한다.숫자이면 true 아니면 false
    for( let i=0; i<password.length-2; i++ ) {
      if( password[i]===password[i+1] && password[i]===password[i+2] ) {
        if( !isNaN(Number(password[i])) ) {
          return true;
        }
      }
    }
    return false;
  }

  // [비밀번호] 영문자 중에 대문자 하나이상 포함되면 true를 리턴하는 함수
  function isPasswordUpper (password) {
    var letters = /[A-Z]/; 
    
    if( letters.test(password) ) { 
      return true;
    } else {
      return false;
    }
  }

  // [비밀번호 확인] 매치가 동일하면 true를 리턴하는 함수
  function isMatch (password1, password2) {
    if( password1 && password2 ) {
      if(password1 === password2) {
        return true;
      }
    } else {
      return false;
    }
  }
  
  
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
  
  
  
</html>