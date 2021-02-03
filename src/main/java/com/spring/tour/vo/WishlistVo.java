package com.spring.tour.vo;

public class WishlistVo {
	private int wishnum;
	private int cate_number;
	private int service_number;
	private String user_id;
	private String imgsavename; 
	private String tour_name;
	
	
	public WishlistVo() {
	}


	public WishlistVo(int wishnum, int cate_number, int service_number, String user_id, String imgsavename,
			String tour_name) {
		super();
		this.wishnum = wishnum;
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.user_id = user_id;
		this.imgsavename = imgsavename;
		this.tour_name = tour_name;
	}


	public int getWishnum() {
		return wishnum;
	}


	public int getCate_number() {
		return cate_number;
	}


	public int getService_number() {
		return service_number;
	}


	public String getUser_id() {
		return user_id;
	}


	public String getImgsavename() {
		return imgsavename;
	}


	public String getTour_name() {
		return tour_name;
	}


	public void setWishnum(int wishnum) {
		this.wishnum = wishnum;
	}


	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}


	public void setService_number(int service_number) {
		this.service_number = service_number;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}


	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	

}
