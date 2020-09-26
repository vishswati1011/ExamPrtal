package bean;

import javax.persistence.*;

@Entity  
@Table(name="topic20")
public class Topic {
	
	@Id  
	@GeneratedValue (strategy=GenerationType.AUTO)
    private int id;    
    private String topicname;    
    private String postedBy;
    private int sid;
    public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	

	public Topic() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTopicname() {
		return topicname;
	}
	public void setTopicname(String topicname) {
		this.topicname = topicname;
	}
	public String getPostedBy() { 
		return postedBy;
	}
	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}

	public Topic(int id, String topicname, String postedBy ,int sid) {
		super();
		this.id = id;
		this.sid = sid;
		this.topicname = topicname;
		this.postedBy = postedBy;
	
	}

}
