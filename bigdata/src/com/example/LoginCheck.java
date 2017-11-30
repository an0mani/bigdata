package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.memberVO;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Login_id");
		String password = request.getParameter("Login_pw");
		
		memberDAO dao = new memberDAO();
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		
		ArrayList<memberVO> list = new ArrayList<>();
		try {
			int cnt = dao.Login(id,password);
			
			if(cnt==0) {//���̵� ���� ���
				
				response.sendRedirect("jh/firstMain/IdFail.jsp");
				
				
			}else if(cnt==1) {//���̵� �ִµ� ��й�ȣ�� Ʋ���� ���
				
				response.sendRedirect("jh/firstMain/PwFail.jsp");
				
			}else if(cnt==2) {//���̵�,��й�ȣ�� �� ���� ���
				
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("password", password);
				response.sendRedirect("jh/firstMain/LoginSuccess.jsp");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
