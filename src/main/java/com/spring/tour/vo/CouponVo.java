package com.spring.tour.vo;

import java.sql.Date;

public class CouponVo {
	private int coupon_number;
	private String coupon_name;
	private String user_id;
	private int discount_price;
	private Date expire_date;
	private String coupon_usecondition;
	
	public CouponVo() {}

	public CouponVo(int coupon_number, String coupon_name, String user_id, int discount_price, Date expire_date,
			String coupon_usecondition) {
		super();
		this.coupon_number = coupon_number;
		this.coupon_name = coupon_name;
		this.user_id = user_id;
		this.discount_price = discount_price;
		this.expire_date = expire_date;
		this.coupon_usecondition = coupon_usecondition;
	}

	public int getCoupon_number() {
		return coupon_number;
	}

	public void setCoupon_number(int coupon_number) {
		this.coupon_number = coupon_number;
	}

	public String getCoupon_name() {
		return coupon_name;
	}

	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
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

	public Date getExpire_date() {
		return expire_date;
	}

	public void setExpire_date(Date expire_date) {
		this.expire_date = expire_date;
	}

	public String getCoupon_usecondition() {
		return coupon_usecondition;
	}

	public void setCoupon_usecondition(String coupon_usecondition) {
		this.coupon_usecondition = coupon_usecondition;
	}

	@Override
	public String toString() {
		return "CouponVo [coupon_number=" + coupon_number + ", coupon_name=" + coupon_name + ", user_id=" + user_id
				+ ", discount_price=" + discount_price + ", expire_date=" + expire_date + ", coupon_usecondition="
				+ coupon_usecondition + "]";
	}

}
