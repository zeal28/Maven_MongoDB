package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import utility.Logic;
import utility.User;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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

		String username=request.getParameter("username1");
		String pwd = request.getParameter("password1");
		User u = new User();
		u.setUserName(username);
		u.setPassword(pwd);
		Logic bl = new Logic();
		List<Document> l=	bl.Search(u);
		if(l.size()==0)
		{
			response.setContentType("text/plain");
			response.getWriter().write("Invalid Credentials...");
		}
		else
		{
			response.setContentType("text/plain");
			response.getWriter().write("Login Successful...");
			//response.sendRedirect("Welcome.jsp");
		}
	}

}
