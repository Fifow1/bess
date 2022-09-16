<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelYn" value="<c:out value="${vo.shDelYn}"/>"/>
<input type="hidden" name="shdate" value="<c:out value="${vo.shdate}"/>"/>

<input type="hidden" name="shdate_s" value="<c:out value="${vo.shdate_s}"/>"/>
<input type="hidden" name="shdate_e" value="<c:out value="${vo.shdate_e}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="hidden" name="shSeq" value="<c:out value="${vo.shSeq}"/>"/>