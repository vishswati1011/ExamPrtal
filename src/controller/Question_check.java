package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DisplayOperation;
import bean.OptionAnswer;
import bean.Question;

@WebServlet("/Question_check")
public class Question_check extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("AdminPanel/Test/SubmitAnswer.jsp");
		int ssid = 0;
		List li;
		ListIterator lit = null;
		List<OptionAnswer> list2;
		ListIterator<OptionAnswer> itr2;
		String ques, op1, op2, op3, op4, ans;
		PrintWriter out = response.getWriter();
		HttpSession ses = request.getSession();
		DisplayOperation so= new DisplayOperation();
		Question std;
		OptionAnswer obj;
		int tid;
		ssid = (Integer) ses.getAttribute("sid");
		
		if (ssid == 0) {
			ssid++;
			ses.setAttribute("sid", ssid);
			
			
		tid = Integer.parseInt(request.getParameter("id"));
			li = so.SelectAllQuestionBytopicName(tid);
			lit = li.listIterator();
			
			lit.hasNext();
			std = (Question) lit.next();
			ques = std.getQuestion();
			list2 = std.getAnswer();
			itr2 = list2.listIterator();
			
			
			itr2.hasNext();
			obj = itr2.next();
			op1 = obj.getOptionA();
			op2 = obj.getOptionB();
			op3 = obj.getOptionC();
			op4 = obj.getOptionD();
			ans = obj.getAnswer();
			
			ses.setAttribute("lit", lit);
			ses.setAttribute("itr2", itr2);
			
			request.setAttribute("ques", ques);
			request.setAttribute("op1", op1);
			request.setAttribute("op2", op2);
			request.setAttribute("op3", op3);
			request.setAttribute("op4", op4);
			request.setAttribute("ans", ans);

			rd.forward(request, response);

		} else if (ssid > 0) {

			lit=(ListIterator)ses.getAttribute("lit");
			itr2=(ListIterator)ses.getAttribute("itr2");
			
			if(lit.hasNext()) {
				
			ssid++;
			ses.setAttribute("sid", ssid);
			
			std = (Question) lit.next();
			ques = std.getQuestion();
			 list2 = std.getAnswer();
			itr2 = list2.listIterator();
			
			
			itr2.hasNext();
			obj = itr2.next();
			op1 = obj.getOptionA();
			op2 = obj.getOptionB();
			op3 = obj.getOptionC();
			op4 = obj.getOptionD();
			ans = obj.getAnswer();
			
			ses.setAttribute("lit", lit);
			ses.setAttribute("itr2", itr2);
			
			request.setAttribute("ques", ques);
			request.setAttribute("op1", op1);
			request.setAttribute("op2", op2);
			request.setAttribute("op3", op3);
			request.setAttribute("op4", op4);
			request.setAttribute("ans", ans);

			rd.forward(request, response);
					}
					else {
						response.sendRedirect("success.jsp");
					}
			
		}

	}
}