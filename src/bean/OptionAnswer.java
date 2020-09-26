package bean;

import javax.persistence.*;
@Entity
public class OptionAnswer {

	@Id  
    @GeneratedValue(strategy=GenerationType.TABLE)
    private int oid;    
    private String optionA,optionB,optionC,optionD;    
    private String Answer;  
  public OptionAnswer() {
		super();
	}

public OptionAnswer(int oid, String optionA, String optionB, String optionC, String optionD, String answer) {
		super();
		this.oid = oid;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		Answer = answer;
	}
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
	}

}
