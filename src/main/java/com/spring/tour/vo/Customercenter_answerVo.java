package com.spring.tour.vo;

import java.sql.Date;

public class Customercenter_answerVo {
	private int answer_number;
	private int question_number;
	private String answer_content;
	private Date answer_date;
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
	@Override
	public String toString() {
		return "Customercenter_answerVo [answer_number=" + answer_number + ", question_number=" + question_number
				+ ", answer_content=" + answer_content + ", answer_date=" + answer_date + "]";
	}
	public Customercenter_answerVo(int answer_number, int question_number, String answer_content, Date answer_date) {
		super();
		this.answer_number = answer_number;
		this.question_number = question_number;
		this.answer_content = answer_content;
		this.answer_date = answer_date;
	}
	public Customercenter_answerVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
