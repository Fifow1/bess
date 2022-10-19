	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
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
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" onclick="href='./product/productListShop'">shop</a></li>
					<li class="nav-item" style="margin-right: 40px;"><a class="nav-link" aria-current="page" style="color: #FFFFFF;" href="#">community</a></li>
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
						<button type="button" class="btn btn" style="height: 25px; width: 20px; border-radius: 100%; background-color: #2C63AF"></button>
					</c:otherwise>
				</c:choose>
				<!-- <button class="btn btn-outline me-md-2" type="button" style="color: #FFFFFF">
					<i class="fa-solid fa-cart-shopping"></i>
				</button> -->
			</div>
		</div>
	</nav>