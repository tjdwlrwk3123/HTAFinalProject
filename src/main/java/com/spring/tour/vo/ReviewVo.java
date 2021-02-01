package com.spring.tour.vo;

import java.sql.Date;

public class ReviewVo {
	private int review_number;
	private String user_id;
	private int service_number;
	private int star_point;
	private String review_content;
	private String review_image;
	private String review_comment;
	private int cate_number;
	private Date review_date;
	public ReviewVo() {}
	public ReviewVo(int review_number, String user_id, int service_number, int star_point, String review_content,
			String review_image, String review_comment, int cate_number, Date review_date) {
		super();
		this.review_number = review_number;
		this.user_id = user_id;
		this.service_number = service_number;
		this.star_point = star_point;
		this.review_content = review_content;
		this.review_image = review_image;
		this.review_comment = review_comment;
		this.cate_number = cate_number;
		this.review_date = review_date;
	}
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
	public String getReview_image() {
		return review_image;
	}
	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}
	public String getReview_comment() {
		return review_comment;
	}
	public void setReview_comment(String review_comment) {
		this.review_comment = review_comment;
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
	
}