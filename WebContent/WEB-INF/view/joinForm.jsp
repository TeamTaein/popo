<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>



<script>
setInterval(function(){
	  $(".blinkEle").toggle();
	}, 500);
</script>
<title>회원가입</title>
</head>
<body>
<article class="container ">
<div class="page-header">
	<div class="col-lg-12 col-lg-offset-3">
	<h3>회원가입</h3>
	</div>
</div>

<div class="col-md-6 col-md-offset-3">
<form action="join.do" method="post" role="form">
<div class="form-group">	
	아이디: <br /><input type="text" name="id" value="${param.id }"
	class="form-control" placeholder="아이디 입력" />
	<span class="text-danger blinkEle">
	<c:if test="${errors.id }">ID를 입력하세요</c:if>
	<c:if test="${errors.duplicateId }">이미 사용중인 아이디입니다.</c:if>
	</span>	
</div>


<div class="form-group">
	이름: <br /><input type="text" name="name" value="${param.name }"
	class="form-control" placeholder="이름 입력" />
	<span class="text-danger blinkEle">
	<c:if test="${errors.name }">이름을 입력하세요</c:if>
	</span>
</div>

<div class="form-group">
	암호: <br /><input type="password" name="password"
	class="form-control" placeholder="패스워드 입력" />
	<span class="text-danger blinkEle">
	<c:if test="${errors.password }">암호를 입력하세요</c:if>
	</span>
</div>

<div class="form-group">
	확인: <br /><input type="password" name="confirmPassword"
	class="form-control" placeholder="패스워드 확인" />
	<span class="text-danger blinkEle">
	<c:if test="${errors.confirmPassword }">확인을 입력하세요</c:if>
	<c:if test="${errors.notMatch }">암호와 확인이 일치하지 않습니다.</c:if>
	</span>
</div>

<div class="form-group">
	성별: <br /> <label> <input type="radio" name="gender" value="남자" />남자 </label> 
	<label><input type="radio" name="gender" value="여자"/>여자 </label>
	<span class="text-danger blinkEle">
	<c:if test="${errors.gender }" >성별을 체크하세요</c:if>
	</span>
</div>

<div class="form-group">
	email: <br /><input type="email" name="email"
	class="form-control" placeholder="이메일 입력" />
	<span class="text-danger blinkEle">
	<c:if test="${errors.email }">이메일을 입력하세요</c:if>
	</span>
</div>
<input type="submit" value="가입" />
</form>
</div>
</article>
</body>
</html>