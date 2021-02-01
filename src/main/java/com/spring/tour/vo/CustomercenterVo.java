package com.spring.tour.vo;

import java.sql.Date;

public class CustomercenterVo {
	private int question_number;
	private String user_id;
	private String question_content;
	private Date question_date;
	public int getQuestion_number() {
		return question_number;
	}
	public void setQuestion_number(int question_number) {
		this.question_number = question_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public Date getQuestion_date() {
		return question_date;
	}
	public void setQuestion_date(Date question_date) {
		this.question_date = question_date;
	}
	@Override
	public String toString() {
		return "CustomercenterVo [question_number=" + question_number + ", user_id=" + user_id + ", question_content="
				+ question_content + ", question_date=" + question_date + "]";
	}
	public CustomercenterVo(int question_number, String user_id, String question_content, Date question_date) {
		super();
		this.question_number = question_number;
		this.user_id = user_id;
		this.question_content = question_content;
		this.question_date = question_date;
	}
	public CustomercenterVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
