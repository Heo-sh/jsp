<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			img {
				cursor: pointer;
			}
			
			img:hover {
				background-color: gray;
			}
		</style>
		<script type="text/javascript">
			function reply() {
				location.href = "reply_form.jsp?idx=" + ${vo.idx};
			}
		</script>
	</head>
	<body>
		<table border="1">
			<caption>:::게시글 상세보기:::</caption>
			<tr>
				<th>제목</th>
				<td>${vo.subject}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${vo.regdate}</td>
			</tr>
			<tr>
				<th>ip</th>
				<td>${vo.ip}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td width="500px" height="200px"><pre>${vo.content}</pre></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" id="c_pwd">
				</td>
			</tr>	
			<tr>
				<td colspan="2">
					<!-- 목록 보기 -->
					<img src="img/btn_list.gif" onclick="location.href='board_list.do'">
					<!-- 답글 달기 -->
					<img src="img/btn_reply.gif" onclick="reply();">
					<!-- 글 삭제 -->
					<img src="img/btn_delete.gif" onclick="del();">
				</td>
			</tr>
		</table>	
	</body>
</html>