package com.spring.tour.vo;

public class VisitorInfoVo {
	private int visitor_info_number;
	private int accom_book_number;
	private String visitor_name;
	private String visitor_email;
	private String visitor_phone;
	public VisitorInfoVo() {}
	public VisitorInfoVo(int visitor_info_number, int accom_book_number, String visitor_name, String visitor_email,
			String visitor_phone) {
		super();
		this.visitor_info_number = visitor_info_number;
		this.accom_book_number = accom_book_number;
		this.visitor_name = visitor_name;
		this.visitor_email = visitor_email;
		this.visitor_phone = visitor_phone;
	}
	public int getVisitor_info_number() {
		return visitor_info_number;
	}
	public void setVisitor_info_number(int visitor_info_number) {
		this.visitor_info_number = visitor_info_number;
	}
	public int getAccom_book_number() {
		return accom_book_number;
	}
	public void setAccom_book_number(int accom_book_number) {
		this.accom_book_number = accom_book_number;
	}
	public String getVisitor_name() {
		return visitor_name;
	}
	public void setVisitor_name(String visitor_name) {
		this.visitor_name = visitor_name;
	}
	public String getVisitor_email() {
		return visitor_email;
	}
	public void setVisitor_email(String visitor_email) {
		this.visitor_email = visitor_email;
	}
	public String getVisitor_phone() {
		return visitor_phone;
	}
	public void setVisitor_phone(String visitor_phone) {
		this.visitor_phone = visitor_phone;
	}
}
