<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
	body {font-family: Arial, Helvetica, sans-serif;}
	form {border: 3px solid #f1f1f1;}
	
	input[type=text], input[type=password] {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	}
	
	button {
	  background-color: #04AA6D;
	  color: white;
	  padding: 14px 20px;
	  margin: 8px 0;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	}
	
	button:hover {
	  opacity: 0.8;
	}
	
	.cancelbtn {
	  width: auto;
	  padding: 10px 18px;
	  background-color: #f44336;
	}
	
	.imgcontainer {
	  text-align: center;
	  margin: 24px 0 12px 0;
	}
	
	img.avatar {
	  width: 40%;
	  border-radius: 50%;
	}
	
	.container {
	  padding: 16px;
	}
	
	span.psw {
	  float: right;
	  padding-top: 16px;
	}
	
	/* Change styles for span and cancel button on extra small screens */
	@media screen and (max-width: 300px) {
	  span.psw {
	     display: block;
	     float: none;
	  }
	  .cancelbtn {
	     width: 100%;
	  }
	}
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>로그인</h2>
  <div><font color="blue">${data}</font></div>
  <hr/>
  <form method="post">
	  <div class="imgcontainer">
	    <img src="${ctp}/resources/images/1.jpg" alt="Avatar" class="avatar">
	  </div>
	
	  <div class="container">
	  	레벨 : 
	  	<select name="level" class="form-control">
	  		<option value="0">관리자</option>
	  		<option value="1">우수회원</option>
	  		<option value="2">정회원</option>
	  		<option value="3">준회원</option>
	  	</select>
	    <label for="mid"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" name="mid" id="mid" value="admin" required>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="pwd" value="1234" required>
	        
	    <button type="submit">Login</button>
	    <input type="button" value="회원가입" onclick="location.href='${ctp}/member/join'"/>
	    <input type="button" value="방명록" onclick="location.href='${ctp}/guest/guestList'"/>
	    <label>
	      <input type="checkbox" checked="checked" name="remember"> Remember me
	    </label>
	  </div>
	
	  <div class="container" style="background-color:#f1f1f1">
	    <button type="button" class="cancelbtn">Cancel</button>
	    <span class="psw">Forgot <a href="#">password?</a></span>
	  </div>
	</form>

  <hr/>
  <p>
    <a href="${ctp}/" class="btn btn-success">돌아가기</a>
  </p>
</div>
<p><br/></p>
</body>