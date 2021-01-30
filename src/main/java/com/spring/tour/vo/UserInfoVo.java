package com.spring.tour.vo;

public class UserInfoVo {
	private String id;
	private String pwd;
	private String name;
	private String grade;
	private String email;
	private String addr;
	private String phone;
	private int status;
	private int point;
	public UserInfoVo() {}
	public UserInfoVo(String id, String pwd, String name, String grade, String email, String addr, String phone,
			int status, int point) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.grade = grade;
		this.email = email;
		this.addr = addr;
		this.phone = phone;
		this.status = status;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
}
