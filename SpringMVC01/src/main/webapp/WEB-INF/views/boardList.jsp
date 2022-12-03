<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
 	function goForm(){
 		location.href="${cpath}/boardInsertForm.do";
 		/* == /mvc == cpath  */
 	}
  
  </script>
</head>
<body>
 
<div class="container">
  <h2>Spring MVC 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">Panel Content
    	<table class="table table-hover">
		    <thead>
		   
		      <tr>
		        <th>번호</th>
		        <th>제목</th>
		        <th>작성자</th>
		        <th>작성일</th>
		        <th>조회수</th>
		      </tr>
		    </thead>
	
		    <tbody>
		
		    <c:forEach items="${list}" var="vo">
		

		    <tr>
		    	<td>${vo.idx}</td>
		    	<td><a href="${cpath}/boardContent.do?idx=${vo.idx}">${vo.title}</a></td>
		    	<td>${vo.writer}</td>
		    	<td>${vo.indate}</td>
		    	<td>${vo.count}</td>
		    	
		    </tr>
		    </c:forEach>
		    <tr>
		    	<td colspan="5"><button type="button" class="btn btn-sm btn-warning" onclick="goForm();">글쓰기</button></td>
		    </tr>
		    </tbody>
		  </table>

    </div>
    <div class="panel-footer">개발 열공하는 유선옥😎🚀</div>                               
  </div>
</div>

</body>
</html>
