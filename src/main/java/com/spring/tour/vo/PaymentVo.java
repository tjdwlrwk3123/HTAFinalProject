package com.spring.tour.vo;

import java.util.List;

public class PaymentVo {
	private String user_id;
	private String user_name;
	private String user_phone;
	private int user_point;
	private List<CouponInfoVo> couponlist;
	public PaymentVo(String user_id, String user_name, String user_phone, int user_point,
			List<CouponInfoVo> couponlist) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_point = user_point;
		this.couponlist = couponlist;
	}
	public PaymentVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUser_id() {
		return user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public int getUser_point() {
		return user_point;
	}
	public List<CouponInfoVo> getCouponlist() {
		return couponlist;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public void setCouponlist(List<CouponInfoVo> couponlist) {
		this.couponlist = couponlist;
	}
	
}
