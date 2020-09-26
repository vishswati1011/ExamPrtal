package bean;

import java.util.List;

import javax.persistence.*;


@Entity

public class Question {

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int id;
	private int tid;
	private String question;
	@OneToMany(cascade = CascadeType.ALL)  
	@JoinColumn(name="id")  
	@OrderColumn(name="type")
	private List<OptionAnswer> Answer;

	public Question() {
		super();
	}
	
	public int getQid() {
		return id;
	}
	public void setQid(int qid) {
		this.id = qid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public List<OptionAnswer> getAnswer() {
		return Answer;
	}
	public void setAnswer(List<OptionAnswer> answer) {
		Answer = answer;
	}
	public Question( int tid, String question, List<OptionAnswer> answer) {
		super();
	
		this.tid = tid;
		this.question = question;
		Answer = answer;
	}
	
	
}
