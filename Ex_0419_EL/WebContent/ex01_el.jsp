<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*  
	EL(Expression Language)
	- JSP에서 사용하는 표현식을 조금 더 간결하게 사용하기 위한 표현식
	- ${변수명}

	EL의 내장 객체
	1. page Scope
		- 저장된 데이터를 현재 페이지에서만 공유하고 사용한다.
		- java로 따지면 private와 유사하지만 너무 폐쇄적이라 잘 사용되지 않는다.
	2. request Scope
		- 가장 많이 사용되는 객체
		- 지역변수와 같은 개념으로 페이지가 닫히면 종료된다.
		- 같은 request라면 두 개의 페이지가 같은 요청을 공유할 수 있다.
		- request는 객체를 하나 또는 두 개의 페이지 내에서 공유할 수 있다.
	3. session Scope
		- 전역변수와 같은 개념
		- tomcat이 실행될 때 자동으로 만들어지는 영역
		- session영역은 하나의 웹 브라우저당 1개의 session객체가 생성된다.
		- 같은 웹 브라우저 내에서는 요청되는 페이지들은 같은 객체를 공유하게 된다.
	4. application Scope
		- 최소한 내가 만든 프로젝트 내의 모든 jsp에서 값을 공유하는 게 가능하다.
		- application객체는 하나의 웹 어플리케이션 당 1개의 객체가 생성된다.
		- 같은 웹 어플리케이션에 요청되는 페이지들은 같은 객체를 공유한다.
	*/

	String msg = "안녕";
	
	pageContext.setAttribute("key1", "페이지영역에 저장됨");
	
	request.setAttribute("key1", msg);
	
	session.setAttribute("key1", "세션에 저장됨");

%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 
		body에 '출력'만 하려고 할 때는 EL표현식이 편하지만
		DB로 보낼 때는 getParameter를 사용해야 한다.
		-->
		EL표현식(파라미터): ${param.name}<br>
		scriptlet으로 출력: <%= msg %> <br>
		EL표현식(requestScope 데이터): ${requestScope.key1}<br>
		EL표현식(생략): ${key1}<br>
		
		<!-- 
		키값이 겹치게 된다면 나타나는 순서
		1. pageScope
		2. requestScope
		3. sessionScope
		4. applicationScope
		-->
	</body>
</html>

























