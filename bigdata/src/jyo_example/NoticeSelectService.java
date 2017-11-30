package jyo_example;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jyo_DAO.NoticeDAO;
import jyo_DAO.NoticeVO;

@WebServlet("/NoticeSelectService")
public class NoticeSelectService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      //DB�� ����� File������ ��� �˻��ؼ� jsp�� ����
	  NoticeDAO dao = NoticeDAO.getInstance();
      HttpSession session = request.getSession();
      
           
      ArrayList<NoticeVO> list;
      try {
         list = dao.selectAll();
              
         if(list != null) {
        	 
         session.setAttribute("list", list);
         }
         
         response.sendRedirect("Notice/Notice.jsp");
         
         
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      
   }

}