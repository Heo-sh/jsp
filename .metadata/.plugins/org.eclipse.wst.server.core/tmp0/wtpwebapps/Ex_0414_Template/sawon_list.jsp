<%@page import="vo.SawonVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.SawonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	SawonDAO sdao = SawonDAO.getInstance();
	List<SawonVO> list = sdao.selectList();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>���</th>
				<th>�����</th>
				<th>�μ���ȣ</th>
				<th>�Ի���</th>
				<th>����</th>
			</tr>
			<% for (int i = 0; i < list.size(); i++) { 
						SawonVO vo = list.get(i);
			%>
			<tr>
				<td><%=vo.getSabun() %></td>
				<td><%=vo.getSaname() %></td>
				<td><%=vo.getDeptno() %></td>
				<td><%=vo.getSahire() %></td>
				<td><%=vo.getSapay() %></td>
			</tr>
			<%} %>
		</table>
	</body>
</html>