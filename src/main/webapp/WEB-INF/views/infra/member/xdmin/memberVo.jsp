<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelYn" value="<c:out value="${vo.shDelYn}"/>"/>


<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="hidden" name="shSeq" value="<c:out value="${vo.shSeq}"/>"/>