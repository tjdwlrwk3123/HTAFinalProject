package com.spring.tour.vo;

import java.sql.Date;

public class CouponVo {
	private int coupon_number;
	private String user_id;
	private int discount_price;
	private Date effective_date;
	private String coupon_usercondition;
	
	public CouponVo() {}

	public CouponVo(int coupon_number, String user_id, int discount_price, Date effective_date,
			String coupon_usercondition) {
		super();
		this.coupon_number = coupon_number;
		this.user_id = user_id;
		this.discount_price = discount_price;
		this.effective_date = effective_date;
		this.coupon_usercondition = coupon_usercondition;
	}

	public int getCoupon_number() {
		return coupon_number;
	}

	public void setCoupon_number(int coupon_number) {
		this.coupon_number = coupon_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}

	public Date getEffective_date() {
		return effective_date;
	}

	public void setEffective_date(Date effective_date) {
		this.effective_date = effective_date;
	}

	public String getCoupon_usercondition() {
		return coupon_usercondition;
	}

	public void setCoupon_usercondition(String coupon_usercondition) {
		this.coupon_usercondition = coupon_usercondition;
	}

}
