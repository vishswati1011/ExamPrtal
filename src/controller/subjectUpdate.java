package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.SubjectDeclaration;
import DAO.SubjectOperation;
import HelpingClasses.BCrypt;
import bean.Student;
import bean.Subjects;

@WebServlet("/subjectUpdate")
public class subjectUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email,name,address,admissiondate,password,username,contact;
		 int fees;
		 PrintWriter out=resp.getWriter();
		 int sid=Integer.parseInt(req.getParameter("id"));
		 System.out.println("sid"+sid);
		 name=req.getParameter("sub_name");

		Subjects st=new Subjects(sid,name);
		
		SubjectOperation sd=new SubjectOperation();
		int id=sd.update(sid,st);
		System.out.println("id="+id);
		if(id>0)
		{
			out.println("Update Successfull");
		}else {
			out.println("there is some error");
		}
	}
	
	
}
