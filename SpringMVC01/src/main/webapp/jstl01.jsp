<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 야호 다섯번 출력  -->

<c:forEach begin="1" end="5" step="1" var="a">
<font size="${a}">${a}야호</font>
</c:forEach>
</body>
</html>