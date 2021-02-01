package com.spring.tour.vo;

public class TourServiceVo {
	private int service_number;
	private int cate_number;
	private String user_id;
	private String tour_name;
	private String tour_addr;
	public TourServiceVo() {}
	public TourServiceVo(int service_number, int cate_number, String user_id, String tour_name, String tour_addr) {
		super();
		this.service_number = service_number;
		this.cate_number = cate_number;
		this.user_id = user_id;
		this.tour_name = tour_name;
		this.tour_addr = tour_addr;
	}
	public int getService_number() {
		return service_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTour_name() {
		return tour_name;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public String getTour_addr() {
		return tour_addr;
	}
	public void setTour_addr(String tour_addr) {
		this.tour_addr = tour_addr;
	}
}
