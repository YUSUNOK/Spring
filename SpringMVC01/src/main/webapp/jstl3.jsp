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
<%
	String[] str = {"사과", "바나나", "오렌지", "포도","귤"};
	request.setAttribute("str", str);

%>
	<table border="1">
		<tr>
			<td>과일목록</td>
		</tr>
		
		<c:forEach items="${str}" var="t">
			<tr>	
				<td>${t}</td>
			</tr>
		</c:forEach>
	
	
	
	
	
	</table>





</body>
</html>