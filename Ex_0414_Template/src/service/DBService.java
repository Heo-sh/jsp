package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBService {
//	multi - 본인만의 축약어를 만들 수 있다.
//	window -> preperence -> java -> template -> new
//	for (int i = 0; i < argType; i++) {
//		for (int j = 0; j < argType; j++) {
//
//		}
//	}
	
	
//	DB접속을 위한 코드를 위한 class
	
	//single-ton pattern: 
	//객체1개만생성해서 지속적으로 서비스하자
	//- jsp파일을 생성하고 DB에 접속하려고 할 때마다 객체들을 생성하여 메모리를 점유해야한다.
	//  -> 코드를 매번 작성해야 하고 비효율적이기에 single-ton pattern을 이용한다.
	//- 어플리케이션이 시작될 때 어떤 클래스가 최초 한번만 메모리를 할당하고(static의 개념)
	//  그 메모리에 인스턴스를 만들어 사용하는 디자인 패턴
	//- DB를 접속할 때처럼 공통된 객체를 여러 개 생성해서 사용해야 하는 상황에 많이 사용
	static DBService single = null;

	public static DBService getInstance() { //static으로 만들어진 객체는 new를 쓰지 않아도 불러올 수 있다.
		//생성되지 않았으면 생성
		if (single == null) //메모리를 점유하고 있지 않다면
			single = new DBService(); //객체를 생성하라
		//생성된 객체정보를 반환
		return single; //single: DB 접속 관련 정보가 들어가 있다.
	}

	DataSource ds; //생성자 밖에서도 써야하기에 바깥으로 빼둠
	
	public DBService() {
		try {
			InitialContext ic = new InitialContext();
			Context ctx = (Context)ic.lookup("java:comp/env");
			ds = (DataSource)ctx.lookup("jdbc/oracle_test");
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
}
