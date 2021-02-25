package com.spring.tour.vo;

import java.sql.Date;

public class Customercenter_answerVo {
	private int answer_number;
	private int question_number;
	private String answer_title;
	private String answer_content;
	private Date answer_date;
	private String user_id;
	public int getAnswer_number() {
		return answer_number;
	}
	public void setAnswer_number(int answer_number) {
		this.answer_number = answer_number;
	}
	public int getQuestion_number() {
		return question_number;
	}
	public void setQuestion_number(int question_number) {
		this.question_number = question_number;
	}
	public String getAnswer_title() {
		return answer_title;
	}
	public void setAnswer_title(String answer_title) {
		this.answer_title = answer_title;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public Date getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "Customercenter_answerVo [answer_number=" + answer_number + ", question_number=" + question_number
				+ ", answer_title=" + answer_title + ", answer_content=" + answer_content + ", answer_date="
				+ answer_date + ", user_id=" + user_id + "]";
	}
	public Customercenter_answerVo(int answer_number, int question_number, String answer_title, String answer_content,
			Date answer_date, String user_id) {
		super();
		this.answer_number = answer_number;
		this.question_number = question_number;
		this.answer_title = answer_title;
		this.answer_content = answer_content;
		this.answer_date = answer_date;
		this.user_id = user_id;
	}
	public Customercenter_answerVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}