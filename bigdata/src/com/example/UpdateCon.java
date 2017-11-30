package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		String name = request.getParameter("baby_Name");
		String sex = request.getParameter("sex");
		String birth = request.getParameter("birth");
		String blood = request.getParameter("blood");
		String weight = request.getParameter("weight");
		String height = request.getParameter("height");


		memberDAO dao = new memberDAO();

		try {
			int cnt = dao.UpdateMember(id, name, sex, birth, blood, weight, height);

			if (cnt > 0) {
				
				response.sendRedirect("jh/firstMain/UpdateSuccess.jsp");
				
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
