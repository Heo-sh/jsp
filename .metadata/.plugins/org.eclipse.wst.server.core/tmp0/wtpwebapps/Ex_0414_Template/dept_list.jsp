<%@page import="vo.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//DB����
	//DeptDAO���� DBService���� �� �� �ֱ⿡ DeptDAO�� ȣ���ϸ� �ȴ�.
	DeptDAO dao = DeptDAO.getInstance();
	List<DeptVO> list = dao.selectList();
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
				<th>�μ���ȣ</th>
				<th>�μ���</th>
				<th>�μ���ġ</th>
			</tr>
			<% for (int i = 0; i < list.size(); i++) {
					DeptVO vo = list.get(i);
			%>
			<tr>
				<td><%= vo.getDeptno() %></td>
				<td><%= vo.getDname() %></td>
				<td><%= vo.getLoc() %></td>
			</tr>
			<%} %>
		</table>
	</body>
</html>