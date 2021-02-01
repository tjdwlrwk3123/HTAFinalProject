package com.spring.tour.vo;

import java.sql.Date;

public class Service_questionVo { // 서비스문의사항
	private int service_question_number; //서비스문의번호
	private String user_id; //아이디
	private int service_number;	//서비스 고유번호
	private String service_question_content;	// 서비스 문의 내용
	private Date service_question_date;	// 서비스 문의 날짜
	private int cate_number;	// 카테고리 번호
	public Service_questionVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Service_questionVo(int service_question_number, String user_id, int service_number,
			String service_question_content, Date service_question_date, int cate_number) {
		super();
		this.service_question_number = service_question_number;
		this.user_id = user_id;
		this.service_number = service_number;
		this.service_question_content = service_question_content;
		this.service_question_date = service_question_date;
		this.cate_number = cate_number;
	}
	public int getService_question_number() {
		return service_question_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public int getService_number() {
		return service_number;
	}
	public String getService_question_content() {
		return service_question_content;
	}
	public Date getService_question_date() {
		return service_question_date;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setService_question_number(int service_question_number) {
		this.service_question_number = service_question_number;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setService_question_content(String service_question_content) {
		this.service_question_content = service_question_content;
	}
	public void setService_question_date(Date service_question_date) {
		this.service_question_date = service_question_date;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	@Override
	public String toString() {
		return "Service_questionVo [service_question_number=" + service_question_number + ", user_id=" + user_id
				+ ", service_number=" + service_number + ", service_question_content=" + service_question_content
				+ ", service_question_date=" + service_question_date + ", cate_number=" + cate_number + "]";
	}

}
