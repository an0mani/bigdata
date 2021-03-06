package ym_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;
import ym_com.DAO.FileDAO;
import ym_com.DAO.FileVO;
@WebServlet("/SelectService")
public class SelectService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//DB에 저장된 File정보를 모두 검색해서 jsp로 전송
		FileDAO dao = FileDAO.getInstance();
		HttpSession session = request.getSession();

				
		ArrayList<FileVO> list;
		try {
			
			list = dao.selectAll();
			
			if(list != null) {
			session.setAttribute("list", list);
			}

			response.sendRedirect("folder/usedArticle/ym_messageboard.jsp");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
