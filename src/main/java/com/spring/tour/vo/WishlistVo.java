package com.spring.tour.vo;

public class WishlistVo {
	private int wishnum;
	private int catenum;
	private int service_number;
	private String user_id;
	public WishlistVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WishlistVo(int wishnum, int catenum, int service_number, String user_id) {
		super();
		this.wishnum = wishnum;
		this.catenum = catenum;
		this.service_number = service_number;
		this.user_id = user_id;
	}
	public int getWishnum() {
		return wishnum;
	}
	public int getCatenum() {
		return catenum;
	}
	public int getService_number() {
		return service_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setWishnum(int wishnum) {
		this.wishnum = wishnum;
	}
	public void setCatenum(int catenum) {
		this.catenum = catenum;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "WishlistVo [wishnum=" + wishnum + ", catenum=" + catenum + ", service_number=" + service_number
				+ ", user_id=" + user_id + "]";
	}
	
}
