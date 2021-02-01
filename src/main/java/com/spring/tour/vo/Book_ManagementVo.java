package com.spring.tour.vo;

import java.sql.Date;

public class Book_ManagementVo {
	private int book_number;
	private String user_id;
	private Date book_startdate;
	private Date book_enddate;
	private String service_name;
	private String service_option;
	private String payment_condition;
	private int total_price;
	private String point_useamount;
	private String coupon_usecondition;
	private String payment_method;
	
	public Book_ManagementVo() {}

	public Book_ManagementVo(int book_number, String user_id, Date book_startdate, Date book_enddate,
			String service_name, String service_option, String payment_condition, int total_price,
			String point_useamount, String coupon_usecondition, String payment_method) {
		super();
		this.book_number = book_number;
		this.user_id = user_id;
		this.book_startdate = book_startdate;
		this.book_enddate = book_enddate;
		this.service_name = service_name;
		this.service_option = service_option;
		this.payment_condition = payment_condition;
		this.total_price = total_price;
		this.point_useamount = point_useamount;
		this.coupon_usecondition = coupon_usecondition;
		this.payment_method = payment_method;
	}

	public int getBook_number() {
		return book_number;
	}

	public void setBook_number(int book_number) {
		this.book_number = book_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Date getBook_startdate() {
		return book_startdate;
	}

	public void setBook_startdate(Date book_startdate) {
		this.book_startdate = book_startdate;
	}

	public Date getBook_enddate() {
		return book_enddate;
	}

	public void setBook_enddate(Date book_enddate) {
		this.book_enddate = book_enddate;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public String getService_option() {
		return service_option;
	}

	public void setService_option(String service_option) {
		this.service_option = service_option;
	}

	public String getPayment_condition() {
		return payment_condition;
	}

	public void setPayment_condition(String payment_condition) {
		this.payment_condition = payment_condition;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getPoint_useamount() {
		return point_useamount;
	}

	public void setPoint_useamount(String point_useamount) {
		this.point_useamount = point_useamount;
	}

	public String getCoupon_usecondition() {
		return coupon_usecondition;
	}

	public void setCoupon_usecondition(String coupon_usecondition) {
		this.coupon_usecondition = coupon_usecondition;
	}

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	
	
}
