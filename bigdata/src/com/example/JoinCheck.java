package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinCheck")
public class JoinCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String babyName = request.getParameter("babyName");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String blood = request.getParameter("blood");
		String weight = request.getParameter("weight");
		String height = request.getParameter("height");
		String birthday = request.getParameter("birthday");
		
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(babyName);
		System.out.println(gender);
		System.out.println(phone);
		System.out.println(blood);
		System.out.println(weight);
		System.out.println(height);
		System.out.println(birthday);
		
		
		
		
		
	}

}
