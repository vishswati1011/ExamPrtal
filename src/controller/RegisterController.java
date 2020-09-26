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
import bean.Student;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email,name,address,classes,password,username,contact;
		 int mob;
		 PrintWriter out=res.getWriter();
		 name=req.getParameter("name");
		 address=req.getParameter("address");
		 username=req.getParameter("username");
		 password=req.getParameter("password");
		 password=BCrypt.hashpw(password,BCrypt.gensalt(12));
		 email=req.getParameter("email");
		 contact=req.getParameter("contact");
		 mob=Integer.parseInt(req.getParameter("mob"));
		 classes=req.getParameter("class");
		Student st=new Student(0,name,address,username,password,email,contact,mob,classes);
		
		StudentDeclaration sd=new StudentOperation();
		int id=sd.insertStudent(st);
		out.println("id  "+ id);
		if(id>0)
		{
			res.sendRedirect("WelcomeFolder/LoginPage.jsp");
			
		}else {
			out.println("there is some error");
		}
	}
	
}
