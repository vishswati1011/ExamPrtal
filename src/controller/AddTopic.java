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

import bean.Topic;

@WebServlet("/AddTopic")
public class AddTopic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String sname=request.getParameter("sub_name");
		String submitby=request.getParameter("submited_by");
		String option1=request.getParameter("option1");
		String option2=request.getParameter("option2");
		String option3=request.getParameter("option3");
		
		SubjectOperation sb=new SubjectOperation();
		int sid=sb.id(sname);
		ArrayList<Topic> al=new ArrayList<Topic>();
		
		
		Topic t1=new Topic();
		t1.setTopicname(option1);
		t1.setPostedBy(submitby);
		al.add(t1);
		
		Topic t2=new Topic();
		t2.setTopicname(option2);
		t2.setPostedBy(submitby);
		al.add(t2);	
		
		Topic t3=new Topic();
		t3.setTopicname(option3);
		t3.setPostedBy(submitby);
		al.add(t3);
		
		System.out.println("option1"+option1);
		System.out.println("option2"+option2);
		System.out.println("option3"+option3);
		
		if(sid<=0) {
			System.out.println("sid========="+sid);
			System.out.println(" inside if statement ");
		//	SubjectOperation sb1=new SubjectOperation();
		//	sb1.searchBySubject(0,sname,al);
			response.sendRedirect("WelcomeFolder/InsertFail.jsp");
			
		}
		else {
			System.out.println("sid========="+sid);
			System.out.println(" inside else statement ");
				SubjectOperation sb2=new SubjectOperation();
				if(option1!="") {
				sb2.searchByTopic(0,submitby,option1,sid);
				}
				if(option2!="") {
				sb2.searchByTopic(0,submitby,option2,sid);
				}
				if(option3!="") {
				sb2.searchByTopic(0,submitby,option3,sid);
				}
				response.sendRedirect("WelcomeFolder/AdminHomePage.jsp");
				
		}
		}

}
