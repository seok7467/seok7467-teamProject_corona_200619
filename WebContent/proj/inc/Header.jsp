<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>

<style>

</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar fixed-top navbar-expand-md navbar-dark bg-dark" >
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="../layout/main.jsp">CoronaSpot</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="../layout/main.jsp">Status <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../layout/map.jsp">Map <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../notice/list.jsp">Forum <span class="sr-only">(current)</span></a>
      </li>



      
      
    </ul>
    <!-- 
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
 	-->
 	<div class="form-inline my-2 my-lg-0">
	      	<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      	<%
	      		CustomerDto customerDto = (CustomerDto)session.getAttribute("login");
	      		if(customerDto != null){
	      	%>
		      <li class="nav-item active">
		        <a class="nav-link">
		        	<strong style="color:white;"><%=customerDto.getName() %></strong>님
		        </a>
		      </li>
		     <!--  <li class="nav-item">
		        <a class="nav-link" href="../member/logout.jsp">[로그아웃]</a>
		      </li>  -->
		      <li class="nav-item">
       			 <button class="btn btn-outline-primary my-2 my-sm-0" button type="button" onclick="location.href='../member/logout.jsp' ">Logout</button>
				</li>
	    	<%}else{ %>
	    		<!-- <li class="nav-item">
		        	<a class="nav-link" href="../layout/Title.jsp">로그인</a>
		      	</li>  -->
		      	<li class="nav-item">
       			 <button class="btn btn-outline-success my-2 my-sm-0" button type="button" onclick="location.href='../layout/Title.jsp'">Login</button>
      			</li>
	    	<%} %>
	    	</ul>
	    </div>
  </div>
</nav>