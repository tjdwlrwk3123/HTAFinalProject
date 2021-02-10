package com.spring.tour.vo;

import java.sql.Date;

public class TourSelectVo {
	private int cate_number;
	private int service_number;
	private String tour_name;
	private String tour_type;
	private Double avgpoint;
	private int rcnt;//¸®ºä ´Þ¸° °¹¼ö
	private int tour_price;
	private int tour_amount;
	private Date tour_expire;
	private int img_num;
	private String imgsavename;
	public TourSelectVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TourSelectVo(int cate_number, int service_number, String tour_name, String tour_type, Double avgpoint,
			int rcnt, int tour_price, int tour_amount, Date tour_expire, int img_num, String imgsavename) {
		super();
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.tour_name = tour_name;
		this.tour_type = tour_type;
		this.avgpoint = avgpoint;
		this.rcnt = rcnt;
		this.tour_price = tour_price;
		this.tour_amount = tour_amount;
		this.tour_expire = tour_expire;
		this.img_num = img_num;
		this.imgsavename = imgsavename;
	}
	public int getCate_number() {
		return cate_number;
	}
	public int getService_number() {
		return service_number;
	}
	public String getTour_name() {
		return tour_name;
	}
	public String getTour_type() {
		return tour_type;
	}
	public Double getAvgpoint() {
		return avgpoint;
	}
	public int getRcnt() {
		return rcnt;
	}
	public int getTour_price() {
		return tour_price;
	}
	public int getTour_amount() {
		return tour_amount;
	}
	public Date getTour_expire() {
		return tour_expire;
	}
	public int getImg_num() {
		return img_num;
	}
	public String getImgsavename() {
		return imgsavename;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public void setTour_type(String tour_type) {
		this.tour_type = tour_type;
	}
	public void setAvgpoint(Double avgpoint) {
		this.avgpoint = avgpoint;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public void setTour_price(int tour_price) {
		this.tour_price = tour_price;
	}
	public void setTour_amount(int tour_amount) {
		this.tour_amount = tour_amount;
	}
	public void setTour_expire(Date tour_expire) {
		this.tour_expire = tour_expire;
	}
	public void setImg_num(int img_num) {
		this.img_num = img_num;
	}
	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}
	@Override
	public String toString() {
		return "TourSelectVo [cate_number=" + cate_number + ", service_number=" + service_number + ", tour_name="
				+ tour_name + ", tour_type=" + tour_type + ", avgpoint=" + avgpoint + ", rcnt=" + rcnt + ", tour_price="
				+ tour_price + ", tour_amount=" + tour_amount + ", tour_expire=" + tour_expire + ", img_num=" + img_num
				+ ", imgsavename=" + imgsavename + "]";
	}
	
}
