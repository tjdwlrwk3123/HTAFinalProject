package com.spring.tour.vo;

public class WishlistVo {
	private int wishnum;
	private int cate_number;
	private int service_number;
	private String user_id;
	public WishlistVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WishlistVo(int wishnum, int cate_number, int service_number, String user_id) {
		super();
		this.wishnum = wishnum;
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.user_id = user_id;
	}
	public int getWishnum() {
		return wishnum;
	}
	public int getcate_number() {
		return cate_number;
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
	public void setcate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "WishlistVo [wishnum=" + wishnum + ", cate_number=" + cate_number + ", service_number=" + service_number
				+ ", user_id=" + user_id + "]";
	}
	
}
