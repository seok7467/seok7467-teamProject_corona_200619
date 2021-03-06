<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<%
	CustomerDto customerDto = (CustomerDto)session.getAttribute("login");
	if(customerDto != null){
	request.setCharacterEncoding("utf-8");
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	int num = Integer.parseInt(request.getParameter("num"));
	int cPage = Integer.parseInt(request.getParameter("page"));
	
	NoticeDao dao = NoticeDao.getInstance();
	NoticeDto dto = new NoticeDto(num, writer,title,content,null);
	
	int resultCount = dao.update(dto);
	if(resultCount == 1){
		%>
		<script>
			alert('글이 수정 되었습니다.');
			location.href="view.jsp?num=<%=num%>&page=<%=cPage%>";
		</script>
		<%
	}else{
		%>
		<script>
			alert('에러..');
			history.back(-1);
		</script>
		<%}%>
		
	<%}else{ %>
		<script>
		alert('로그인 사용자만 글을 수정할 수 있습니다.');
		history.back(-1);
		</script>
	<%} %>