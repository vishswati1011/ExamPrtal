package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StudentOperation;
import bean.Student;

@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String Loginid=request.getParameter("username");
		String pass=request.getParameter("password");
		StudentOperation std=new StudentOperation();
		Student std1=std.selectStudent(Loginid,pass);
		   System.out.println("pass========="+pass);
		   System.out.println("Loginid========="+Loginid);

		  // System.out.println("pass========="+passdb);
		if(std1!=null)
		{
		try  {
			  HttpSession session=request.getSession();
                session.setAttribute("loginid",Loginid);
                String ch=request.getParameter("c1");
                if(ch!=null){
                  Cookie c1=new Cookie("std",String.valueOf(std1));
                
                  c1.setMaxAge(120);
      
                  response.addCookie(c1);
          
                    }
		
		
			}catch(Exception e)
			{}

		System.out.println("if------------");
		response.sendRedirect("WelcomeFolder/StudentHomePage.jsp");
        
		}
		else {
			System.out.println("else------------");
		      response.sendRedirect("WelcomeFolder/LoginPage.jsp");
	            
		}
	}
	}
