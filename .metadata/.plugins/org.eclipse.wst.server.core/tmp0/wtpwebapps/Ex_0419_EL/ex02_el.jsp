<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		EL산술연산자<br>
		<!-- 데이터들은 4가지 객체에 SET을 하지 않아도 사용이 가능하다. -->	
		${1 + 1}<br>
		\${1 + 1}<br>
		\${1 + 1} = ${1 + 1}<br>
		\${1 - 1} = ${1 - 1}<br>
		\${1 * 1} = ${1 * 1}<br>
		\${10 / 3} = ${10 / 3}<br> 
		${10 div 3}<br>
		\${10 % 3} = ${10 % 3}<br>
		${10 mod 3}<br>
		
		<hr>
		
		EL(관계)비교연산자<br>
		\${3 > 2} = ${3 > 2}<br>
		${3 gt 2}<br> <!-- gt: grater than -->
		\${3 < 2} = ${3 < 2}<br>
		${3 lt 2}<br> <!-- lt: less than -->
		\${3 >= 2} = ${3 >= 2}<br>
		${3 ge 2}<br> <!-- ge: grater equal -->
		\${3 <= 2} = ${3 <= 2}<br>
		${3 le 2}<br> <!-- le: less equal -->
		\${3 == 2} = ${3 == 2}<br>
		${3 eq 2}<br> <!-- eq: equal -->
		\${3 != 2} = ${3 != 2}<br>
		${3 ne 2}<br> <!-- ne: not equal -->
		
		<hr>
		
		EL삼항연산자<br>
		파라미터값: ${param.msg == null ? "비어있다" : '안 비어있다'}<br>
		파라미터값: ${param.msg eq null ? '비어있다' : '안 비어있다'}<br>
		파라미터값: ${empty param.msg ? '비어있다' : '안 비어있다'}<br> <!-- empty: 비어있다 -->
		
		<hr>
		
		EL논리연산자<br>
		파라미터값: ${empty param.abc || param.bac eq 10}<br> <!-- ||: or, 또는 -->		
		파라미터값: ${empty param.abc or param.bac eq 10}<br> 		
	</body>
</html>































