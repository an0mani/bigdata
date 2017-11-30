package com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FileDAO;
import com.DAO.FileVO;


@WebServlet("/SelectOne")
public class SelectOne extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FileDAO dao = FileDAO.getInstance();
		int num = Integer.parseInt(request.getParameter("num"));
		HttpSession session = request.getSession();
		
		ArrayList<FileVO> one;
		try {
			one = dao.SelectOne(num);
			
			if(one != null) {
			session.setAttribute("one", one);
			}
			response.sendRedirect("folder/usedArticle/ym_messageboard.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
