<%@page import="vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<MemberVO> list = MemberDAO.getInstance().selectList();
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table {
				border: black, solid, 1px;
				border-collapse: collapse;
			}
			
			th {
				width: 80px;
			}
		</style>
		<script type="text/javascript">
			function del(idx) {
				if (confirm("정말 삭제하시겠습니까?") == false) {
					return;
				}
				
				location.href = 'member_del.jsp?idx=' + idx;
			}
			
			function reinsert(idx, name, id, pw, email) {
				location.href = 'member_update.jsp?idx=' + idx + "&name=" + name + "&id=" + id + "&pw=" + pw + "&email=" + email;
			}
		</script>
	</head>	
	<body>
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>비고</th>
			</tr>
			<% for (int i = 0; i < list.size(); i++) { 
						MemberVO vo = list.get(i);
			%>
			<tr align="center">
				<td><%= vo.getIdx() %></td>
				<td><%= vo.getName() %></td>
				<td><%= vo.getId() %></td>
				<td><%= vo.getPw() %></td>
				<td><%= vo.getEmail() %></td>
				<td class="but">
					<input
						type="button"
						value="삭제"
						onclick="del('<%= vo.getIdx() %>')"
					>
					<input
						type="button"
						value="수정"
						onclick="reinsert('<%= vo.getIdx() %>',
										  '<%= vo.getName() %>',
										  '<%= vo.getId() %>',
										  '<%= vo.getPw() %>',
										  '<%= vo.getEmail() %>')"
					>
				</td>
			</tr>
			<%} %>
			<tr>
				<td colspan="7" align="center">
					<input
						type="button"
						value="회원 정보 추가"
						onclick="location.href='member_register.jsp'"
					>
				</td>
			</tr>
		</table>	
	</body>
</html>