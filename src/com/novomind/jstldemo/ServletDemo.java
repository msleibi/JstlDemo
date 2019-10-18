package com.novomind.jstldemo;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

@WebServlet("/DemoServlet")
public class ServletDemo extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		
		
		List<Student> students = Arrays.asList(new Student(1,"Mohammad"),new Student(2,"Dani"),new Student(3,"Mona"));
		
		
//		stu.setId(1);
//		stu.setName("Dani");
		
		request.setAttribute("students", students);
		
		RequestDispatcher rd = request.getRequestDispatcher("JstlDemo.jsp");
		
		rd.forward(request, response);
				
		
		
	}
	
}
