package DAO;

import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.Subjects;
import bean.Topic;

public class DisplayOperation implements Display {

	
	SessionFactory sf;
	Session session;
	Transaction t;
	
	public DisplayOperation() {
		sf=HelpingClasses.SessionManag.getSessionFact(); 
		session=sf.openSession();	
		}
	
	@Override
	public List SelectAllTopic() {
		t=session.beginTransaction();
		Query query=session.createQuery("from bean.Topic");
		List<Topic> list=query.list();
		System.out.println(" list size is"+list);
		if(list.size()>0) {
			return list;
		}else {
			return null;
		}
		
	}

	@Override
	public List SearchTopicBySubjectName(int id) {
		
		t=session.beginTransaction();
		 Query query = session.createQuery("from bean.Topic where sid=:sid");
		  query.setInteger("sid", id);
	
		System.out.println("sid Method==="+id);
		List li=query.list();
		if(li.size()>0)
		 {
			 return li;
		 }else {
		return null;
		 }
	}

	@Override
	public List SelectAllQuestionBytopicName(int id,int start,int total) {
		t=session.beginTransaction();
		//String hql=" from bean.Question limit "+(start)+","+total+"where tid=:tid";
		Query query=session.createQuery("from bean.Question where tid=:tid");  
		query.setFirstResult(start-1);  
		query.setMaxResults(total);
		query.setInteger("tid", id);
		List li=query.list();
		 if(li.size()>0)
		 {
			 
			 return li;
		 }else {
		return null;
		 }

	}

	
}
	