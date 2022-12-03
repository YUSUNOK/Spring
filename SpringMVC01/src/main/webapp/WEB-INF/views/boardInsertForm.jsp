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
</head>
<body>
 
<div class="container">
  <h2>Spring MVC 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">HELLO 내용적는 HELLO</div>
    <div class="panel-body">
    <!-- 부트스트랩은 한 줄을 12로 인식해서 10, 2, 4, 8, 나눠서 비율을 차지할 수 있다.
    col-sm-2,  col-sm-10
     -->
    
	    <form class="form-horizontal" action="${cpath}/boardInsert.do" method="post">
	  <div class="form-group">
	  
	    <label class="control-label col-sm-2" for="title">제목:</label>
	    <!-- input 태그의 id와 label태그의 for와 일치 시켜준다. -->
	    <div class="col-sm-10">
	      <input type="text" class="form-control"  name="title" id="title" placeholder="title 적어">
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="control-label col-sm-2" for="content">내용:</label>
	    <div class="col-sm-10">
	      <textarea id="content" name="content" rows="10" class="form-control"></textarea>
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="control-label col-sm-2" for="writer">작성자:</label>
	    <!-- input 태그의 id와 label태그의 for와 일치 시켜준다. -->
	    <div class="col-sm-10">
	      <input type="text" class="form-control"  name="writer" id="writer" placeholder="writer 적어">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">등록</button>
	      <button type="reset" class="btn btn-danger">취소</button>
	    </div>
	  </div>
	</form>
	    
    
    
    
    
    
    
    
    
    
    
    
    </div>
    <div class="panel-footer">개발 열공하는 유선옥😎🚀</div>
  </div>
</div>

</body>
</html>
