package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StudentDeclaration;
import DAO.StudentOperation;
import HelpingClasses.BCrypt;
import bean.Admin;
import bean.Student;

/**
 * Servlet implementation class AdminRegisterController
 */
@WebServlet("/AdminRegisterController")
public class AdminRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String password,username;
		 
		 PrintWriter out=res.getWriter();
		 username=req.getParameter("username");
		 password=req.getParameter("password");
		 password=BCrypt.hashpw(password,BCrypt.gensalt(12));
			Admin st=new Admin(0,username,password);
		
		StudentDeclaration sd=new StudentOperation();
		int id=sd.insertAdmin(st);
		if(id>0)
		{
			res.sendRedirect("WelcomeFolder/AdminPage.jsp");
		}else {
			out.println("there is some error");
		}
	}	}

