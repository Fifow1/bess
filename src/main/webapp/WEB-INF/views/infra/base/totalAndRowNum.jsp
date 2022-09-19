<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="container-fluid px-0 mt-2">
	<div class="row">
		<div class="col-9 col-md-10 col-xl-11 text-start pt-1">
<c:choose>
	<c:when test="${not empty vo.totalTows }">
		<span class="align-middle">Total: <fmt:formatNumber value="${vo.totalRows }"/></span>
	</c:when>
	<c:otherwise>
		<span class="align-middle">Total:0</span>
	</c:otherwise>
</c:choose>
	</div>
	<div class="col-3 col-md-2 col-xl-1 text-end">
		<select class="form-select form-select-sm" id="changeRowNum" name="changeRowNum">
			<option value="10" <c:if test="${vo.rowNumToShow eq 10 }">select</c:if>>10</option>
			<option value="30" <c:if test="${vo.rowNumToShow eq 30 }">select</c:if>>30</option>
			<option value="50" <c:if test="${vo.rowNumToShow eq 50 }">select</c:if>>50</option>
			<option value="80" <c:if test="${vo.rowNumToShow eq 80 }">select</c:if>>80</option>
			<option value="100" <c:if test="${vo.rowNumToShow eq 100 }">select</c:if>>100</option>
		</div>
	</div>
</div>
