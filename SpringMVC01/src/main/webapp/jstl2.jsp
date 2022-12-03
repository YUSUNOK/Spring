<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="a" value="10"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 짝수일때만출력 -->

<c:if test="${a%2==0}">
	<p>${a}는 짝수입니다</p>
</c:if>

<hr>

<!-- 반복문사용 -->
<c:forEach begin="1" end="5" step="1" var="t">
	<c:if test="${t%2==0}">
		<p>${t}</p>
	</c:if>
</c:forEach>



<hr>
<!-- when, otherwise사용 -->
<c:choose>
	<c:when test="${a%2==0}">
		<p>짝수</p>
	</c:when>
	
	<c:otherwise>
		<p>홀수</p>
	
	</c:otherwise>
</c:choose>
</body>
</html>