/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.87
 * Generated at: 2023-04-14 06:22:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import vo.SawonVO;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

public final class sawon_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.naming.InitialContext");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("vo.SawonVO");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("javax.sql.DataSource");
    _jspx_imports_classes.add("javax.naming.Context");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	//sawon_list.jsp?deptno=10
	//deptno라는 이름의 파라미터 값을 수신
 	int no = Integer.parseInt(request.getParameter("deptno"));
	
	//톰캣이 JNDI를 검색하기 위해 필요한 클래스(JNDI기법: Java Naming Directory Interface)
	InitialContext ic = new InitialContext();
	
	
	//Resource위치 검색: 프로그램을 구성할만한 모든 참조파일을 Resource라고 한다.
	Context ctx = (Context)ic.lookup("java:comp/env"); 
	//lookup: 조회, jsp에서 db에 대한 리소스가 저장되어 있는 위치 검색
		//- 반환형이 Object이기에 Context 객체로 형변환해줘야한다.
	//java:comp/env: 자바에 내장되어 있는 리소스 자원을 검색하는 상수(고정)
	
	DataSource ds = (DataSource)ctx.lookup("jdbc/oracle_test");
	//DataSource: 검색된 Resource를 통해 필요한 JNDI의 Resource를 검색한다.
	//context.xml파일의 Resource영역에 참조되어 있는 name속성값
	
	Connection conn = ds.getConnection();
	//위에서 준비해둔 경로로 로그인을 시도한다.(접속)
	
	System.out.println("---DB접속 성공---");	//2.<- 그래서 이게 나온다면 db접속 완료
	
	//column이랑 = 사이에 왠만하면 띄어쓰기 금지
	String sql = "select * from sawon where deptno="+no; //1.<- 여기서 접속할 dbtable명을 바꿔줘야 한다.
/* 	String sql = "select * from sawon"; */
	PreparedStatement pstmt = conn.prepareStatement(sql);
	//PreparedStatement: 문자열을 쿼리문으로 변환해준다.
	
	ResultSet rs = pstmt.executeQuery();
	//ResultSet: 실행된 sql문장을 통해 얻어진 결과를 실제로 vo객체에 담아준다.
	
	//부서목록을 저장할 ArrayList만들기
	List<SawonVO> sawon_list = new ArrayList<SawonVO>();
	
	while(rs.next()) { //rs.next(): 다음 행이 있으면 true, 없으면 false
		SawonVO vo = new SawonVO();
		
		vo.setSabun(rs.getInt("sabun"));
		vo.setSaname(rs.getString("saname"));
		vo.setDeptno(rs.getInt("deptno"));
		vo.setSapay(rs.getInt("sapay"));
		
		sawon_list.add(vo);
	}
	
	//연결 후 사용한 DB는 종료코드를 통해 마무리 지어줘야 한다.
	//DB접속과 관련된 모든 객체는 생성된 역순으로 닫아줘야한다.
	rs.close();
	pstmt.close();
	conn.close();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>Insert title here</title>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<table border=\"1\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<th>사번</th>\r\n");
      out.write("				<th>사원명</th>\r\n");
      out.write("				<th>부서번호</th>\r\n");
      out.write("				<th>연봉</th>\r\n");
      out.write("			</tr>\r\n");
      out.write("			");
for (int i = 0; i < sawon_list.size(); i++) {
						SawonVO vo = sawon_list.get(i);
      out.write("\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>");
      out.print( vo.getSabun());
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print( vo.getSaname());
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print( vo.getDeptno());
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print( vo.getSapay());
      out.write("</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			");
} 
      out.write("\r\n");
      out.write("		</table>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
