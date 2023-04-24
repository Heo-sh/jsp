<%@page import="vo.SawonVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//sawon_list.jsp?deptno=10
	//deptno��� �̸��� �Ķ���� ���� ����
 	int no = Integer.parseInt(request.getParameter("deptno"));
	
	//��Ĺ�� JNDI�� �˻��ϱ� ���� �ʿ��� Ŭ����(JNDI���: Java Naming Directory Interface)
	InitialContext ic = new InitialContext();
	
	
	//Resource��ġ �˻�: ���α׷��� �����Ҹ��� ��� ���������� Resource��� �Ѵ�.
	Context ctx = (Context)ic.lookup("java:comp/env"); 
	//lookup: ��ȸ, jsp���� db�� ���� ���ҽ��� ����Ǿ� �ִ� ��ġ �˻�
		//- ��ȯ���� Object�̱⿡ Context ��ü�� ����ȯ������Ѵ�.
	//java:comp/env: �ڹٿ� ����Ǿ� �ִ� ���ҽ� �ڿ��� �˻��ϴ� ���(����)
	
	DataSource ds = (DataSource)ctx.lookup("jdbc/oracle_test");
	//DataSource: �˻��� Resource�� ���� �ʿ��� JNDI�� Resource�� �˻��Ѵ�.
	//context.xml������ Resource������ �����Ǿ� �ִ� name�Ӽ���
	
	Connection conn = ds.getConnection();
	//������ �غ��ص� ��η� �α����� �õ��Ѵ�.(����)
	
	System.out.println("---DB���� ����---");	//2.<- �׷��� �̰� ���´ٸ� db���� �Ϸ�
	
	//column�̶� = ���̿� �ظ��ϸ� ���� ���� -> ������ �� ���ɼ��� �����.
	String sql = "select * from sawon where deptno=" + no; //1.<- ���⼭ ������ dbtable���� �ٲ���� �Ѵ�.
/* 	String sql = "select * from sawon"; */
	PreparedStatement pstmt = conn.prepareStatement(sql);
	//PreparedStatement: ���ڿ��� ���������� ��ȯ���ش�.
	
	ResultSet rs = pstmt.executeQuery();
	//ResultSet: ����� sql������ ���� ����� ����� ������ vo��ü�� ����ش�.
	
	//�μ������ ������ ArrayList�����
	List<SawonVO> sawon_list = new ArrayList<SawonVO>();
	
	while(rs.next()) { //rs.next(): ���� ���� ������ true, ������ false
		SawonVO vo = new SawonVO();
		
		vo.setSabun(rs.getInt("sabun"));
		vo.setSaname(rs.getString("saname"));
		vo.setDeptno(rs.getInt("deptno"));
		vo.setSapay(rs.getInt("sapay"));
		
		sawon_list.add(vo);
	}
	
	//���� �� ����� DB�� �����ڵ带 ���� ������ ������� �Ѵ�.
	//DB���Ӱ� ���õ� ��� ��ü�� ������ �������� �ݾ�����Ѵ�.
	rs.close();
	pstmt.close();
	conn.close();
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
				<th>����</th>
			</tr>
			<%for (int i = 0; i < sawon_list.size(); i++) {
						SawonVO vo = sawon_list.get(i);%>
			<tr>
				<td><%= vo.getSabun()%></td>
				<td><%= vo.getSaname()%></td>
				<td><%= vo.getDeptno()%></td>
				<td><%= vo.getSapay()%></td>
			</tr>
			<%} %>
		</table>
	</body>
</html>