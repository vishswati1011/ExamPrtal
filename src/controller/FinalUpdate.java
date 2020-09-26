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

@WebServlet("/FinalUpdate")

public class FinalUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email,name,address,admissiondate,password,username,contact;
		 int fees;
		 PrintWriter out=resp.getWriter();
		 int sid=Integer.parseInt(req.getParameter("id"));
		 name=req.getParameter("name");
		 address=req.getParameter("address");
		 username=req.getParameter("username");
		 password=req.getParameter("password");
		 password=BCrypt.hashpw(password,BCrypt.gensalt(12));
		 email=req.getParameter("email");
		 contact=req.getParameter("contact");
		 fees=Integer.parseInt(req.getParameter("fees"));
		 admissiondate=req.getParameter("admissiondate");
		Student st=new Student(sid,name,address,username,password,email,contact,fees,admissiondate);
		
		StudentDeclaration sd=new StudentOperation();
		int id=sd.updateStudent(sid,st);
		//out.println("id====="+id);
		if(id==0)
		{	out.println("<html><body><h1>");
			out.println("Update Successfull</h1>");
			out.println("<a href=\"index.jsp\">Home</a>");
			out.println("<a href=\"WelcomeFolder/WelcomePage.jsp\">Home</a>");
			out.println("</body>");
			out.println("</html>");
			
		}else {
			out.println("there is some error");
		}
	}
	

}



	
