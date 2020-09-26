package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import DAO.SubjectOperation;
import bean.Subjects;
import bean.Topic;
@WebServlet("/AddSubject")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String sname=request.getParameter("sub_name");
		
		SubjectOperation sb=new SubjectOperation();
		System.out.println(" AddSubject  id ");
		
		int sid=sb.id(sname);
		System.out.println("sid========="+sid);
		
		System.out.println(" AddSubject ");
		
	
		if(sid==0) {
			System.out.println("sid========="+sid);
			System.out.println(" inside if statement ");
			SubjectOperation sb1=new SubjectOperation();
			Subjects sub=new Subjects(sid,sname);
			sb1.searchBySubject(sub);
			System.out.println(" after insert subject ");
			response.sendRedirect("AdminPanel/QuestionControll/Topic.jsp");
			
		}
		else {
			System.out.println("sid========="+sid);
			System.out.println(" Enter Another subject this subject is exists already");
				response.sendRedirect("WelcomeFolder/InsertFail.jsp");
				
		}
		}

}
