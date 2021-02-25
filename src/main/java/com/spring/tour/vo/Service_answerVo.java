package com.spring.tour.vo;

import java.util.Date;

public class Service_answerVo {
	private int service_answer_number;
	private int service_question_number;
	private String service_answer_content;
	private Date service_answer_date;
	private String user_id;
	private String service_answer_title;
	public int getService_answer_number() {
		return service_answer_number;
	}
	public void setService_answer_number(int service_answer_number) {
		this.service_answer_number = service_answer_number;
	}
	public int getService_question_number() {
		return service_question_number;
	}
	public void setService_question_number(int service_question_number) {
		this.service_question_number = service_question_number;
	}
	public String getService_answer_content() {
		return service_answer_content;
	}
	public void setService_answer_content(String service_answer_content) {
		this.service_answer_content = service_answer_content;
	}
	public Date getService_answer_date() {
		return service_answer_date;
	}
	public void setService_answer_date(Date service_answer_date) {
		this.service_answer_date = service_answer_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getService_answer_title() {
		return service_answer_title;
	}
	public void setService_answer_title(String service_answer_title) {
		this.service_answer_title = service_answer_title;
	}
	@Override
	public String toString() {
		return "Service_answerVo [service_answer_number=" + service_answer_number + ", service_question_number="
				+ service_question_number + ", service_answer_content=" + service_answer_content
				+ ", service_answer_date=" + service_answer_date + ", user_id=" + user_id + ", service_answer_title="
				+ service_answer_title + "]";
	}
	public Service_answerVo(int service_answer_number, int service_question_number, String service_answer_content,
			Date service_answer_date, String user_id, String service_answer_title) {
		super();
		this.service_answer_number = service_answer_number;
		this.service_question_number = service_question_number;
		this.service_answer_content = service_answer_content;
		this.service_answer_date = service_answer_date;
		this.user_id = user_id;
		this.service_answer_title = service_answer_title;
	}
	public Service_answerVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}