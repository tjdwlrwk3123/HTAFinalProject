package com.spring.tour.vo;

import java.sql.Clob;
import java.sql.Date;

public class Notice_boardVo {
	private int notice_number;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	private Clob notice_image;
	public int getNotice_number() {
		return notice_number;
	}
	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public Clob getNotice_image() {
		return notice_image;
	}
	public void setNotice_image(Clob notice_image) {
		this.notice_image = notice_image;
	}
	@Override
	public String toString() {
		return "Notice_boardVo [notice_number=" + notice_number + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_date=" + notice_date + ", notice_image=" + notice_image + "]";
	}
	public Notice_boardVo(int notice_number, String notice_title, String notice_content, Date notice_date,
			Clob notice_image) {
		super();
		this.notice_number = notice_number;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_image = notice_image;
	}
	public Notice_boardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
