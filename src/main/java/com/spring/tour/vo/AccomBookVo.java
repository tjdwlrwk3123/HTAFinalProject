package com.spring.tour.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class AccomBookVo {
	private int accom_book_number;
	private String user_id;
	private int accom_option_number;
	private String service_name;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd",timezone = "Asia/Seoul")
	private Date accom_startdate;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd",timezone = "Asia/Seoul")
	private Date accom_enddate;
	private String payment_condition;
	private int total_price;
	private int point_useamount;
	private String coupon_usecondition;
	private String payment_method;
	public AccomBookVo() {}
	public AccomBookVo(int accom_book_number, String user_id, int accom_option_number, String service_name,
			Date accom_startdate, Date accom_enddate, String payment_condition, int total_price, int point_useamount,
			String coupon_usecondition, String payment_method) {
		super();
		this.accom_book_number = accom_book_number;
		this.user_id = user_id;
		this.accom_option_number = accom_option_number;
		this.service_name = service_name;
		this.accom_startdate = accom_startdate;
		this.accom_enddate = accom_enddate;
		this.payment_condition = payment_condition;
		this.total_price = total_price;
		this.point_useamount = point_useamount;
		this.coupon_usecondition = coupon_usecondition;
		this.payment_method = payment_method;
	}
	public int getAccom_book_number() {
		return accom_book_number;
	}
	public void setAccom_book_number(int accom_book_number) {
		this.accom_book_number = accom_book_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getAccom_option_number() {
		return accom_option_number;
	}
	public void setAccom_option_number(int accom_option_number) {
		this.accom_option_number = accom_option_number;
	}
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public Date getAccom_startdate() {
		return accom_startdate;
	}
	public void setAccom_startdate(Date accom_startdate) {
		this.accom_startdate = accom_startdate;
	}
	public Date getAccom_enddate() {
		return accom_enddate;
	}
	public void setAccom_enddate(Date accom_enddate) {
		this.accom_enddate = accom_enddate;
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
	public int getPoint_useamount() {
		return point_useamount;
	}
	public void setPoint_useamount(int point_useamount) {
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
