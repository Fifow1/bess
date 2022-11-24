	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
	<nav class="navbar navbar-expand-lg header">
		<div class="container">
			<div style="margin-top: 30px; margin-right: 70px;">
				<a class="navbar-brand" href="#"><h1 style="color: #FFFFFF;">Ham</h1></a>
				<button onclick="href='/main'" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav" style="font-family: 'Kanit', sans-serif;">
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link active" aria-current="page" style="color: #FFFFFF;" onclick="href='/main'">Home</a></li>
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" onclick="href='/product/productListShop'">shop</a></li>
					<!-- <li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="#">community</a></li> -->
				</ul>
			</div>
			<div id="headerR" class="d-grid gap-2 d-md-flex justify-content-md-end">
				<c:choose>
					<c:when test="${sessSeq eq null }">
						<button class="btn btn-outline" type="button" onclick="location.href='/member/userLogin'" style="color: #FFFFFF">
							<i class="fa-solid fa-user"></i>
						</button>
					</c:when>
					<c:otherwise>
						<c:out value="${sessId}"/>
						<button type="submit" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: #2C63AF" onclick="location.href='/member/memberMypage_myinfo?shSeq=<c:out value="${sessSeq}"/>'"></button>
						<button onclick="location.href='/member/logoutProc'"><i class="fa-solid fa-right-from-bracket"></i></button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
