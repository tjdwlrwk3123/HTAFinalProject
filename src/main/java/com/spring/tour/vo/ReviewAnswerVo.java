package com.spring.tour.vo;

import java.sql.Date;

public class ReviewAnswerVo {
	private int review_answer_number;
	private int review_number;
	private String review_content;
	private Date review_answer_date;
	public ReviewAnswerVo() {}
	public ReviewAnswerVo(int review_answer_number, int review_number, String review_content, Date review_answer_date) {
		super();
		this.review_answer_number = review_answer_number;
		this.review_number = review_number;
		this.review_content = review_content;
		this.review_answer_date = review_answer_date;
	}
	public int getReview_answer_number() {
		return review_answer_number;
	}
	public void setReview_answer_number(int review_answer_number) {
		this.review_answer_number = review_answer_number;
	}
	public int getReview_number() {
		return review_number;
	}
	public void setReview_number(int review_number) {
		this.review_number = review_number;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_answer_date() {
		return review_answer_date;
	}
	public void setReview_answer_date(Date review_answer_date) {
		this.review_answer_date = review_answer_date;
	}
	
}
