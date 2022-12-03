<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.board.entity.Board"%>
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
	Board vo = new Board();
	vo.setIdx(1);
	vo.setTitle("오늘강의 다듣기전까지 안잔다");
	vo.setContent("시팔!!!!!!!!!");
	vo.setWriter("유선옥");
	vo.setIndate("2022-12-03");
	vo.setCount(0);
	
	
	List<Board> list = new ArrayList<Board>();
	
	list.add(vo);
	list.add(vo);
	list.add(vo);
	
	
	request.setAttribute("list", list);
%>
	<table border="1">
	
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.idx}</td>
			<td>${vo.title}</td>
			<td>${vo.writer}</td>
			<td>${vo.indate}</td>
			<td>${vo.count}</td>

		</tr>
		</c:forEach>
		
			
		
		
		
		
		
		
	
	
	</table>
	



</body>
</html>