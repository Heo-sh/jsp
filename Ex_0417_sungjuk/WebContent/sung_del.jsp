<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//수신 시 인코딩(POST일 때는 한글이 깨진다.)
	//그러나 GET일 때도 습관처럼 써주는 것이 좋다.
	request.setCharacterEncoding("utf-8");
	
	//sung_del.jsp?no=1
	int no = Integer.parseInt(request.getParameter("no"));		
	
	int res = SjDAO.getInstance().delete(no);
	
	if (res > 0) {
		response.sendRedirect("student.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>