package DAO;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import HelpingClasses.BCrypt;
import bean.Admin;
import bean.Student;

import bean.Topic;

public class StudentOperation implements StudentDeclaration {

	SessionFactory sf;
	Session session;
	Transaction t;
	
	
	public StudentOperation()
	{
		sf=HelpingClasses.SessionManag.getSessionFact(); 
		session=sf.openSession();
		 
	}
	
	@Override
	public int insertStudent(Student st) {
	
	t=session.beginTransaction();
	int  id=(Integer)session.save(st);
	t.commit();
	session.close();
	System.out.println("Insert through insert Student classs");
	if(id>0)
		return 1;
	else 
		return 0;
		
	}

	@Override
	public int updateStudent(int id, Student st) {
		
		session.beginTransaction();
		session.update(st);
		session.getTransaction().commit();
		session.close();
	return 0;
	}

	@Override
	public boolean delete(int id) {
		t=session.beginTransaction();
		Student std=new Student();
		std.setS_id(id);
		try {
			session.delete(std);
			t.commit();
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return false;
	}

/*	@Override
	public String selectStudent(String username,String pass) {
		
	t=session.beginTransaction();
	Query query=session.createQuery("from bean.Student");
	List<Subject> list=query.list();
	ListIterator lit=list.listIterator(); 
	if(list!=null) {
	while(lit.hasNext())
	{
		Student std=(Student)lit.next();
	    boolean b=username.equals(std.getUsername());
	    if(b) {
	    	  System.out.println("username========="+username);		 
	    if(BCrypt.checkpw(pass,std.getPassword())) 
	    {
	    	  System.out.println("pass========="+pass);
	    		 
	     session.close();
	    return pass;	
	    }}
 	}
	}
	return null;
	}*/
	public Student selectStudent(String username,String pass) {
		
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Student");
		List<Student> list=query.list();
		 System.out.println("selectStudent===");

		ListIterator lit=list.listIterator(); 
		if(list!=null) {
		while(lit.hasNext())
		{
			Student std=(Student)lit.next();
		    boolean b=username.equals(std.getUsername());
		    if(b) {
		    	  System.out.println("username========="+username);		 
		    if(BCrypt.checkpw(pass,std.getPassword())) 
		    {
		    	  System.out.println("pass Servlet========="+pass);
		    		 
		     session.close();
		    return std;	
		    }}
	 	}
		}
		return null;
		}
	@Override
	public List searchByName(String name) {

		Criteria cr=session.createCriteria(Student.class);
		 cr.add(Restrictions.like("name","%"+name+"%"));
		 List li=cr.list();
		 if(li.size()>0)
		 {
			 return li;
		 }else {
		return null;
		 }
	}
	
	
	@Override
	public List selectAllStudent() {		
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Student");
		List<Student> list=query.list();
		System.out.println(" list size is"+list);
		if(list.size()>0) {
			return list;
		}else {
			return null;
		}
		
	}

@Override
public String selectAdmin(String name, String pass) {
	
	t=session.beginTransaction();
	Query query=session.createQuery("from bean.Admin");
	List<Admin> list=query.list();
	ListIterator lit=list.listIterator(); 
	if(list!=null) {
	while(lit.hasNext())
	{
		Admin ad=(Admin)lit.next();
	    boolean b=name.equals(ad.getName());
	    if(b) {
	    	  System.out.println("username========="+name);
	    		 
	    if(BCrypt.checkpw(pass,ad.getPass())) 
	    {
	    	  System.out.println("pass========="+pass);
	    		 
	     session.close();
	    return pass;	
	    }}
 	}
	}
	return null;
}

@Override
public int insertAdmin(Admin st) {
	t=session.beginTransaction();
	int  id=(Integer)session.save(st);
	t.commit();
	session.close();
	System.out.println("Insert through insert Admin classs");
	if(id>0)
		return 1;
	else 
		return 0;
}

@Override
public Student selectStudent(int id) {
	
	Student st=(Student)session.get(Student.class, id);
	if(st!=null)
		return st;
	else {
	return null;
	}
}
	
	
}




