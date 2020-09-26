package DAO;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;



import bean.Question;
import bean.Student;
import bean.Subjects;
import bean.Topic;

public class SubjectOperation implements SubjectDeclaration {

	SessionFactory sf;
	Session session;
	Transaction t;
	
	public SubjectOperation() {
		sf=HelpingClasses.SessionManag.getSessionFact(); 
		session=sf.openSession();	
		}
	
	public boolean searchBySubject(Subjects sub)
	{
		t=session.beginTransaction();
		int  id=(Integer)session.save(sub);
		t.commit();
		session.close();
		System.out.println("Insert through insert Subject -----------classs");
		if(id>0)
			return true;
		else 
			return false;

	}
	public boolean searchByTopic(int id,String submitby,String tname,int sid)
	{
		t=session.beginTransaction();
		
		Topic st=new Topic(id,tname,submitby,sid);
		session.save(st);
		t.commit();
		return true;
	
	}
	public boolean searchByQuestion(int id,int tid,String ques,ArrayList al)
	{
		t=session.beginTransaction();
		Question st=new Question(tid,ques,al);
			session.save(st);
			t.commit();
			return true;
	}
	public int id(String name)
	{
		int id=0;
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Subjects");
		List<Subjects> list=query.list();
		ListIterator lit=list.listIterator(); 
		System.out.println(" list size is"+list);
		if(list!=null) {
		while(lit.hasNext())
		{
				Subjects std=(Subjects)lit.next();
				System.out.println("inside id method");
		    boolean b=name.equals(std.getSname());
		    if(b) {
		    id=std.getSid(); 
		    System.out.println("id========="+id);
		    session.close();
		    return id;	
		    }
	 	}
		}
		session.close();
		return id;	 	
	}
	public int SearchBytopicid(String name)
	{
		int id=0;
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Topic");
		List<Topic> list=query.list();
		ListIterator lit=list.listIterator(); 
		if(list!=null) {
		while(lit.hasNext())
		{
			Topic std=(Topic)lit.next();
		    boolean b=name.equals(std.getTopicname());
		    if(b) {
		    id=std.getId();  
		    System.out.println("id========="+id);
		    session.close();
		    return id;	
		    }
	 	}
		}
		session.close();
		return id;	 	
	}

	@Override
	public int insertTopic(Subjects sub) {
		
		t=session.beginTransaction();
		int l=(Integer) session.save(sub);
		t.commit();
		if(l>0) {	
			return 1;
		}else
		{
			return 0;
		}
		
	}
	
	@Override
	public int update(int sid,Subjects subname) {
		
		session.beginTransaction();
		session.update(subname);
		session.getTransaction().commit();
		session.close();
	return 1;
	}

	@Override
	public boolean delete(int id) {
		
		t=session.beginTransaction();
		Query query=session.createQuery("delete Subject where id="+id);
		int i=query.executeUpdate();
		t.commit();
		if(i>0)
		{
			return true;
		}
		else {
		return false;
		}
	}

	@Override
	public Subjects selectSubject(int id) {
		Subjects st=(Subjects)session.get(Subjects.class, id);
		if(st!=null)
			return st;
		else {
		return null;
		}
	}

	@Override
	public List selectAllSubject() {		
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Subjects");
		List<Subjects> list=query.list();
		System.out.println(" list size is"+list);
		if(list.size()>0) {
			return list;
		}else {
			return null;
		}
		
	}

	@Override
	public List searchByName(String name) {
		Criteria cr=session.createCriteria(Subjects.class);
		 cr.add(Restrictions.like("sname","%"+name+"%"));
		 List li=cr.list();
		 if(li.size()>0)
		 {
			 return li;
		 }else {
		return null;
		 }
	}
	

	
	
}
