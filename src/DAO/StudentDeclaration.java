package DAO;

import java.util.ArrayList;
import java.util.List;

import bean.Admin;
import bean.Student;

public interface StudentDeclaration {

	public int insertStudent(Student st);

	public int insertAdmin(Admin st);
	public int updateStudent(int id,Student st);
	public boolean delete(int id);
	public Student selectStudent(int id);
	public Student selectStudent(String name,String pass);
	public String selectAdmin(String name,String pass);
	public List selectAllStudent();
	public List searchByName(String name);
}
