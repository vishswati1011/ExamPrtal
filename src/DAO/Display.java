package DAO;

import java.util.List;

public interface Display {
	
	public List SelectAllTopic();
	public List SelectAllQuestionBytopicName(int id,int pageid,int total);
	public List SearchTopicBySubjectName(int id);
	
}
