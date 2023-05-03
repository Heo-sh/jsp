package action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import vo.BoardVO;

/**
 * Servlet implementation class BoardReplyAction
 */
@WebServlet("/reply.do")
public class BoardReplyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//reply.do?idx=???&name=???&subject=???&content=???&pwd=???
		int idx = Integer.parseInt(request.getParameter("idx"));
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		String ip = request.getRemoteAddr();
		
		//같은 ref를 가지고 있는 데이터들 중에서 지금 내가 추가하려고 하는
		//step보다 큰 애들을 +1을 해놔야 하기에 insert를 먼저 하지 않는다.
		
		BoardDAO dao = BoardDAO.getInstance();
		
		//기준글의 idx를 이용하여 답글을 달고 싶은 게시글의 정보를 가져온다.
		BoardVO base_vo = dao.selectOne(idx);
		
		//기준 글의 step보다 큰 값들에 대해 +1 처리하기
		int res = dao.update_step(base_vo);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}