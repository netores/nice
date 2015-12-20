package kr.co.nice.dto;

public class UserDto {
	private String id;
	private int userno;
	private String pw;
	private String name;
	private String phone;
	private String address;
	private String birthdate;
	private String email;
	private int grade;
	
	public UserDto() {}

	public UserDto(String id, int userno, String pw, String name, String phone, String address, String birthdate,
			String email, int grade) {
		super();
		this.id = id;
		this.userno = userno;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.birthdate = birthdate;
		this.email = email;
		this.grade = grade;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
