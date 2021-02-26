package com.spring.tour.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReviewVo {
	private int review_number;
	private String user_id;
	private int service_number;
	private int star_point;
	private String review_content;
	private int cate_number;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date review_date;
	private String review_title;
	private String image;
	public int getReview_number() {
		return review_number;
	}
	public void setReview_number(int review_number) {
		this.review_number = review_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getService_number() {
		return service_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public int getStar_point() {
		return star_point;
	}
	public void setStar_point(int star_point) {
		this.star_point = star_point;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "ReviewVo [review_number=" + review_number + ", user_id=" + user_id + ", service_number="
				+ service_number + ", star_point=" + star_point + ", review_content=" + review_content
				+ ", cate_number=" + cate_number + ", review_date=" + review_date + ", review_title=" + review_title
				+ "]";
	}
	public ReviewVo(int review_number, String user_id, int service_number, int star_point, String review_content,
			int cate_number, Date review_date, String review_title) {
		super();
		this.review_number = review_number;
		this.user_id = user_id;
		this.service_number = service_number;
		this.star_point = star_point;
		this.review_content = review_content;
		this.cate_number = cate_number;
		this.review_date = review_date;
		this.review_title = review_title;
	}
	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}