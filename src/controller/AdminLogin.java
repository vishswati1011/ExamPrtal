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

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String Loginid=request.getParameter("username");
		String pass=request.getParameter("password");
		StudentOperation std=new StudentOperation();
		String passdb=std.selectAdmin(Loginid,pass);
		   System.out.println("pass========="+pass);
		   System.out.println("pass========="+passdb);
		if(passdb!=null)
		{
		try  {
			  HttpSession session=request.getSession();
                session.setAttribute("loginid",Loginid);
                String ch=request.getParameter("c1");
                if(ch!=null){
                  Cookie c1=new Cookie("id",Loginid);
                  Cookie c2=new Cookie("pw",pass);
                  c1.setMaxAge(120);
                  c2.setMaxAge(120);
                  response.addCookie(c1);
                  response.addCookie(c2);
                    }
		
		
			}catch(Exception e)
			{}

		System.out.println("if------------");
		response.sendRedirect("WelcomeFolder/AdminHomePage.jsp");
        
		}
		else {
			System.out.println("else------------");
		      response.sendRedirect("WelcomeFolder/AdminPage.jsp");
	            
		}
	}
	}
