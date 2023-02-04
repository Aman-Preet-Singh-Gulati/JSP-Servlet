package com.luv2code.servletdemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MVCServletDemo
 */
@WebServlet("/MVCServletDemo")
public class MVCServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MVCServletDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Step 0: Add data – This step is supposed to be in MODEL section but just for explanation 
							// adding the records in Servlet itself
		String[] students = {"Susan", "Ali", "Mohammed", "Trupti"};
		request.setAttribute("students_list", students); // name-value pair for setAttribute
		
		// Step 1: Get request dispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view_students.jsp");
		
		// Step 2: Forward the request to JSP
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
