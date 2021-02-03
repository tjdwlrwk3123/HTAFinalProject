package com.spring.tour.vo;

public class TourPageVo {
	private int cate_number;
	private int service_number;
	private String imgsavename;
	private String tour_name;
	private Double avgpoint;
	private int tour_price;
	public TourPageVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TourPageVo(int cate_number, int service_number, String imgsavename, String tour_name, Double avgpoint,
			int tour_price) {
		super();
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.imgsavename = imgsavename;
		this.tour_name = tour_name;
		this.avgpoint = avgpoint;
		this.tour_price = tour_price;
	}
	public int getCate_number() {
		return cate_number;
	}
	public int getService_number() {
		return service_number;
	}
	public String getImgsavename() {
		return imgsavename;
	}
	public String getTour_name() {
		return tour_name;
	}
	public Double getAvgpoint() {
		return avgpoint;
	}
	public int getTour_price() {
		return tour_price;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public void setAvgpoint(Double avgpoint) {
		this.avgpoint = avgpoint;
	}
	public void setTour_price(int tour_price) {
		this.tour_price = tour_price;
	}
	@Override
	public String toString() {
		return "TourPageVo [cate_number=" + cate_number + ", service_number=" + service_number + ", imgsavename="
				+ imgsavename + ", tour_name=" + tour_name + ", avgpoint=" + avgpoint + ", tour_price=" + tour_price
				+ "]";
	}
}
