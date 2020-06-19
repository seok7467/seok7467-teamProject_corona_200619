<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@include file = "../inc/header.jsp"%>
	<nav aria-label="breadcrumb ">
	  <ol class="breadcrumb justify-content-end">
	    <li class="breadcrumb-item "><a href="#">홈</a></li>
	    <li class="breadcrumb-item"><a href="#">파일업로드</a></li>
	  </ol>
	</nav>
	
    <div class="container">
    	<div class="row">
			<h3>파일 업로드</h3>
	        	<form method="post" name="f" action="upload.jsp">
				  <div class="form-group">
	                <input type="text" class="form-control" id="email" name="email" placeholder="Your Email *" value="" />
	              	<div class="invalid-feedback" id="errorEmail">
				       이메일을 입력하세요.
				    </div>
				<div class="custom-file">
 				<input type="file" class="custom-file-input" id="customFile">
  				<label class="custom-file-label" for="customFile">Choose file</label>
				</div>
				</form>
				<div class="text-right" style="margin-bottom : 20px;">
					<a href="" id="saveCustomer" class="btn btn-outline-danger">회원가입</a>
					<a href="login.jsp" class="btn btn-outline-success">로그인</a>
				</div>
        </div>
    </div>

<%@ include file="../inc/footer.jsp"%>