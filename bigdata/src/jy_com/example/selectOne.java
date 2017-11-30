package jy_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jy_com.DAO.FileDAO;
import jy_com.DAO.FileVO;

@WebServlet("/selectOne")
public class selectOne extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// board.jsp에서 클릭한 파일에 대한 번호를 가져온다.
		int num = Integer.parseInt(request.getParameter("num"));
		
		FileDAO dao = new FileDAO();
		
		try {
			ArrayList<FileVO> vo = dao.SelectOne(num);
			
			if (vo != null) {
				request.setAttribute("vo", vo);
			}
			RequestDispatcher dis = request.getRequestDispatcher("MessageBoard/jy_messageboard.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
