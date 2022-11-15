<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
<c:set var="listCodeAuthority" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
	<div class="">
		<div class="table-responsive">
			<table class="table border-top table-hover" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<tr style="color: black; font-weight: 600; background-color: #2E2E2E;">
						<td style="text-align: center; width: 5%;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
						<th style="color: white; border-bottom: 0;">번호</th>
						<th style="color: white; border-bottom: 0;">아이디</th>
						<th style="color: white; border-bottom: 0;">성별</th>
						<th style="color: white; border-bottom: 0;">권한</th>
						<th style="color: white; border-bottom: 0;">이메일</th>
						<th style="color: white; border-bottom: 0;">전화번호</th>
						<th style="color: white; border-bottom: 0;">등록일자</th>
						<th style="color: white; border-bottom: 0;">탈퇴여부</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) eq 0 }">
							<tr>
								<td class = "text-center" colspan="10">없음</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
								<tr>
									<td style="text-align: center;"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
									<td><c:out value="${list.seq }" /></td>
									<td><a href="javascript:goForm(<c:out value="${list.seq }"/>)" class="link-dark"><c:out value="${list.id}" /></a></td>
									<%-- <td><a href="javascript:goForm(<c:out value="${list.seq }"/>)" class="link-dark"><c:out value="${list.groupName}" /></a></td> --%>
									<td>
									<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
										<c:if test="${list.gender eq listGender.CCseq}"><c:out value="${listGender.CCname }"/></c:if>
									</c:forEach>
									</td>
									<td>
									<c:forEach items="${listCodeAuthority}" var="listAuthority" varStatus="statusAuthority">
										<c:if test="${list.authority eq listAuthority.CCseq}"><c:out value="${listAuthority.CCname }"/></c:if>
									</c:forEach>
									</td>
									<td><c:out value="${list.email }"/></td>
									<td><c:out value="${list.numPhone }"/></td>
									<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
									<td>
										<c:if test="${list.delYn eq 1}"><c:out value="Yes" /></c:if>
										<c:if test="${list.delYn eq 0}"><c:out value="No" /></c:if>
									</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
			</table>
		</div>
		<!-- pagination s -->
		<%@include file="../../base/pagination.jsp"%>
	</div>

	<script type="text/javascript">
	
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			setLita();
		}
		
		$("#changeRowNum").on("change", function(){
			$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
			setLita();
		}); 

		
		$('#btnForm').on("click", function() {
			goForm(0);                
		});
	
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
	</script>
    <!-- Bootstrap core JavaScript-->
    <!-- jQuery -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/moment.js"></script>
	<script src="/resources/js/bootstrap-datetimepicker.min.js"></script>
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<script src="/resources/js/jquery.stellar.min.js"></script>
	<script src="/resources/js/jquery.flexslider-min.js"></script>
	
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/js/demo/chart-area-demo.js"></script>
    <script src="/resources/js/demo/chart-pie-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>