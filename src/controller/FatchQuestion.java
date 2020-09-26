package controller;

import java.io.IOException;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DisplayOperation;

@WebServlet("/FatchQuestion")
public class FatchQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option=request.getParameter("optradio");
		String ans=request.getParameter("ans");
		HttpSession ses=request.getSession();
	
		int count=(Integer)ses.getAttribute("count");	
		
		RequestDispatcher rd = request.getRequestDispatcher("Question_check");
		
		if(count==0)
		{
			if(option.equals(ans))
			{
				count++;
				ses.setAttribute("count", count);
				System.out.println("count="+count);
				System.out.println(" if wala i="+count);
				System.out.println(" answer="+ans);
				System.out.println(" option="+option);
				rd.forward(request, response);
			}
			else
			{
				ses.setAttribute("count", count);

				System.out.println("count="+count);
				System.out.println("if else wala i="+count);
				System.out.println(" answer="+ans);
				System.out.println(" option="+option);
				rd.forward(request, response);
			}
		}
		else {
			if(option.equals(ans))
			{    
				count++;
				ses.setAttribute("count", count);
				System.out.println("count="+count);
				System.out.println("else wala i="+count);
				System.out.println(" answer="+ans);
				System.out.println(" option="+option);
			
			rd.forward(request, response);
			}
			else
			{
				ses.setAttribute("count", count);
				System.out.println("else else wala i"+count);
				System.out.println(" answer"+option);
				System.out.println(" option"+ans);
				rd.forward(request, response);	}	
			
		}
		
	}

}
