package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.Logic;
import utility.User;

/**
 * Servlet implementation class register
 */

public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Name=request.getParameter("fullname");
		String Email=request.getParameter("email");
		String UserName=request.getParameter("username");
		String Password=request.getParameter("password");
		User u = new User();
		u.setName(Name);
		u.setEmail(Email);
		u.setUserName(UserName);
		u.setPassword(Password);
		
		Logic l=new Logic();
		l.Insert(u);
		response.setContentType("text/plain");
		response.getWriter().write("Registrated Successfully..");
		
		
	}

}
