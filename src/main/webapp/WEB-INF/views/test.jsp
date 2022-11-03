<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
publicCorona1List

<br>aaa : <c:out value="${successYn }"/>
<br>aaa : <c:out value="${returnCode }"/>
<br>aaa : <c:out value="${returnMessage }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${totalPage }"/>
<br>aaa : <c:out value="${numOfRows }"/>

<c:forEach items="${item}" var="item" varStatus="status">
	<c:out value="${item.tourSeq }"/>
	<br><c:out value="${item.id }"/>	
	<br><c:out value="${item.cid }"/>	
	<br><c:out value="${item.name }"/>	
	<br><c:out value="${item.recommend }"/>	
	<br><c:out value="${item.expression }"/>	
	<br><c:out value="${item.dCode }"/>	
	<br><c:out value="${item.addr1 }"/>	
	<br><c:out value="${item.zipcode }"/>	
	<br><c:out value="${item.keyword }"/>	
	<br><c:out value="${item.hitCnt }"/>	
	<br><c:out value="${item.dLang }"/>	
	<br><c:out value="${item.useYn }"/>	
	<br><c:out value="${item.idxImgPath }"/>	
	<br><c:out value="${item.idxImgName }"/>	
</c:forEach>

</body>
</html>