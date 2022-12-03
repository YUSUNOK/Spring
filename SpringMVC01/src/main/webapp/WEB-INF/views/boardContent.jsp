<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
	function goList(){
		location.href="${cpath}/boardList.do";
	}
	function goUpdate(){
		location.href="${cpath}/boardUpdateForm.do?idx=${vo.idx}";
	}
  </script>

</head>
<body>
 
<div class="container">
  <h2>Spring MVC 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<table class="table table-hover table-striped">
    		<tr>
    			<td>제목</td>
    			<td>${vo.title}</td>
    		</tr>
    		
    		
    		<tr>
    			<td>내용</td>
    			<td>${vo.content}</td>
    		</tr>
    		
    		<tr>
    			<td>작성자</td>
    			<td>${vo.writer}</td>
    		</tr>
    		

    		
    		<tr>
    		
    			<td colspan="2">
    			
    				<button class="btn btn-sm btn-success" onclick="goUpdate();">수정</button>
    				<button class="btn btn-sm btn-warning">삭제</button>
    				<button class="btn btn-sm btn-info" onclick="goList();">목록으로 돌아가기</button>
    			
    			</td>
    		
    		</tr>
    	
    	
    	
    	</table>
    
    
    
    
    
    
    
    
    
    </div>
    <div class="panel-footer">개발 열공하는 유선옥😎🚀</div>
  </div>
</div>

</body>
</html>
