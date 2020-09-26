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
import bean.OptionAnswer;
import bean.Subjects;
import bean.Topic;

@WebServlet("/AddQuestion")
public class AddQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String ques=request.getParameter("ques");
		String answer=request.getParameter("answer");
		String option1=request.getParameter("optionA");
		String option2=request.getParameter("optionB");
		String option3=request.getParameter("optionC");
		String option4=request.getParameter("optionD");
		String topic=request.getParameter("topic");
		
		SubjectOperation sb=new SubjectOperation();
		int tid=sb.SearchBytopicid(topic);
		System.out.println("tid=      "+tid);
		OptionAnswer t1=new OptionAnswer(0,option1,option2,option3,option4,answer);
		
		ArrayList<OptionAnswer> al=new ArrayList<OptionAnswer>();
		
		al.add(t1);
		
		if(tid>0) {
			System.out.println("tid========="+tid);
			System.out.println(" inside if statement ");
			SubjectOperation sb1=new SubjectOperation();
			sb1.searchByQuestion(0,tid,ques,al);
			response.sendRedirect("WelcomeFolder/AdminHomePage.jsp");
			
		}
		else {
				response.sendRedirect("WelcomeFolder/InsertFail.jsp");
				
		}
		}

}
