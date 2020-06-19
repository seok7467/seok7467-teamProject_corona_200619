<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
	
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	
	if(id.equals("kpc12") && pass.equals("kpc1234")){
		session.setAttribute("id",id);
		response.sendRedirect("main.jsp");
	}else if(id.equals("kpc12")){
		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>");
	}else if(pass.equals("kpc1234")){
		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>");
	}else{
		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>");
	}
		%>



<%@ include file="../inc/Footer.jsp"%>