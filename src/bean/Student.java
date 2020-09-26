package bean;


import javax.persistence.*;
@Entity
@Table(name="Student")
public class Student {

	
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int s_id;
	private int mob;
	private String email,name,address,classes,password,contact;
	@Column(unique=false, nullable=false)
	 private String username;
	
	
	
	public Student() {
		super();
	}
	
	public Student( int s_id, String name, String address,
			String username, String password,String email, String contact,int mob,String classes
			) {
		super();
		this.s_id=s_id;
		this.mob = mob;
		this.email = email;
		this.name = name;
		this.address = address;
		this.classes = classes;
		this.password = password;
		this.contact = contact;
		this.username = username;
	}
	
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public int getMob() {
		return mob;
	}

	public void setMob(int mob) {
		this.mob = mob;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
