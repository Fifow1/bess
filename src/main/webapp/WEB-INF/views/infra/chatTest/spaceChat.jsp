<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="uTF-8"> 
		<meta name ="viewport" content="width=device-width, initial-scaLe=1.0">
		<title></title>
		<link rel="stylesheet" href="/resources/css/user/spaceChat.css">
		<style type='text/css'>

        
        </style>
        <link rel="stylesheet" href="/resources/css/user/space.css">
	</head>
		<body>
	<!-- <form> -->
		<div class="container">
            <%@include file="../../include/user/spaceSideBar.jsp"%>
            <div class="wrapper">
				<%@include file="../../include/user/spaceHeader.jsp"%>
                <section class="msger">
                    <main class="msger-chat">
                    <!-- 상대방 채팅S -->
                        <div class="msg left-msg">
	                        <div class="msg-img" style="background-image: url(https://image.flaticon.com/icons/svg/327/327779.svg)"></div>
	                        <div class="msg-bubble">
	                            <div class="msg-info">
		                            <div class="msg-info-name">BOT</div>
		                            <div class="msg-info-time">12:45</div>
	                            </div>
	                            <div class="msg-text">
	                            	Hi, welcome to SimpleChat! Go ahead and send me a message. 😄
	                            </div>
	                        </div>
                        </div>
                        <!-- 상대 채팅 E -->
                        <!-- 나의 채팅 S-->
                        <div class="msg right-msg">
	                        <div class="msg-img" style="background-image: url()"></div>
	                        
	                        <div class="msg-bubble">
	                            <div class="msg-info">
	                                <div class="msg-info-name">Sajad</div>
	                                <div class="msg-info-time">12:46</div>
	                            </div>
	                            <div class="msg-text">
	                                You can change your name in JS section!
	                            </div>
	                        </div>
                        </div>
                        <div class="msg right-msg">
                            <div
                                class="msg-img"
                                style="background-image: url()"
                            ></div>
                        
                            <div class="msg-bubble">
                                <div class="msg-info">
                                    <div class="msg-info-name">Sajad</div>
                                    <div class="msg-info-time">12:46</div>
                                </div>
                                <div class="msg-text">
                                    <div class="send-imgbox" id="open-modal">
                                        <img src="https://img.freepik.com/premium-photo/british-shorthair-1-year-old-stretching-his-claws-lying-in-front-of-white-background_191971-25711.jpg?w=2000">
                                    </div>
                                </div>
                            </div>
                            <div class="modal">
                                <div class="modal-content">
                                    <span id="close-modal">&times;</span>
                                    <div class="modal-body">
                                        <img src="https://img.freepik.com/premium-photo/british-shorthair-1-year-old-stretching-his-claws-lying-in-front-of-white-background_191971-25711.jpg?w=2000">
                                    </div>
                                </div>
                            </div>
                            </div>
                        <!-- 나의 채팅 E-->

                    </main>
                </section>
                

			<form class="msger-inputarea">
                <div class="slide-hidden">
                    <div class="dropdown-menu slide-menu" aria-labelledby="dropdownMenu1">
                        <ul class="slide-menulist">
                            <li><i class="fa-solid fa-image"></i></li>
                            <li><i class="fa-regular fa-floppy-disk"></i></li>
                            <li><i class="fa-solid fa-location-dot"></i></li>
                        </ul>
                    </div>
                </div>
				<div class="chatarea dropdown dropup">
                    
					<button type="button" class="msger-add-btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">+</button>
					

					<input type="text" class="msger-input" placeholder="Enter your message..." id="textarea">
					<button type="submit" class="msger-send-btn">Send</button>
				</div>
			</form>
		</div>
        </div>        
<!-- </form> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
    <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
    const msgerForm = get(".msger-inputarea");
    const msgerInput = get(".msger-input");
    const msgerChat = get(".msger-chat");

    const BOT_MSGS = [
      "Hi, how are you?",
      "Ohh... I can't understand what you trying to say. Sorry!",
      "I like to play games... But I don't know how to play!",
      "Sorry if my answers are not relevant. :))",
      "I feel sleepy! :("
    ];
	 
    // Icons made by Freepik from www.flaticon.com
    const BOT_IMG = "https://image.flaticon.com/icons/svg/327/327779.svg";
    const PERSON_IMG = "https://image.flaticon.com/icons/svg/145/145867.svg";
    const BOT_NAME = "BOT";
    const PERSON_NAME = "Sajad";

    msgerForm.addEventListener("submit", event => {
      event.preventDefault();

      const msgText = msgerInput.value;
      if (!msgText) return;

      appendMessage(PERSON_NAME, PERSON_IMG, "right", msgText);
      msgerInput.value = "";

      botResponse();
    });

    function botResponse() {
      const r = random(0, BOT_MSGS.length - 1);
      const msgText = BOT_MSGS[r];
      const delay = msgText.split(" ").length * 100;

      setTimeout(() => {
        appendMessage(BOT_NAME, BOT_IMG, "left", msgText);
      }, delay);
    }

    // Utils
    function get(selector, root = document) {
      return root.querySelector(selector);
    }

    function formatDate(date) {
      const h = "0" + date.getHours();
      const m = "0" + date.getMinutes();

      return `${h.slice(-2)}:${m.slice(-2)}`;
    }

    function random(min, max) {
      return Math.floor(Math.random() * (max - min) + min);
    }
    

   	$('.msger-add-btn').on('click',function(){
   	  $('.slide-menu').slideToggle();
   	  $('.dropdown-overlay').show();
   	});
   	$('.dropdown-overlay').on('click',function(){
   	  $('.slide-menu').hide();
   	  $(this).hide();
   	});


    // 모달
        const modal = document.querySelector(".modal");
        const openModalBtn = document.querySelector("#open-modal");
        const closeModalBtn = document.querySelector("#close-modal");
        
        openModalBtn.addEventListener("click", function () {
        modal.style.display = "block";
        });
        
        closeModalBtn.addEventListener("click", function () {
        modal.style.display = "none";
        });
        
    </script>
</body>
</html>
