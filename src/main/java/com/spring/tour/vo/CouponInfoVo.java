package com.spring.tour.vo;

import java.sql.Date;

public class CouponInfoVo { //payment 페이지에 쿠폰 목록 리스트 만들용
	
	private String coupon_name;
	private int discount_price;
	private Date expire_date;
	public CouponInfoVo(String coupon_name, int discount_price, Date expire_date) {
		super();
		this.coupon_name = coupon_name;
		this.discount_price = discount_price;
		this.expire_date = expire_date;
	}
	public CouponInfoVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CouponInfoVo [coupon_name=" + coupon_name + ", discount_price=" + discount_price + ", expire_date="
				+ expire_date + "]";
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public int getDiscount_price() {
		return discount_price;
	}
	public Date getExpire_date() {
		return expire_date;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}
	public void setExpire_date(Date expire_date) {
		this.expire_date = expire_date;
	}
}
