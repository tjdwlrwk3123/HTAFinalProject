package com.spring.tour.vo;

import java.sql.Date;

public class TourDetailVo {
	private int cate_number;
	private int service_number;
	private String tour_addr;
	private String tour_name;
	private Date tour_expire;
	private String tour_how;
	private String tour_rule;
	private Double avgpoint;
	
	public TourDetailVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TourDetailVo(int cate_number, int service_number, String tour_addr, String tour_name, Date tour_expire,
			String tour_how, String tour_rule, Double avgpoint) {
		super();
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.tour_addr = tour_addr;
		this.tour_name = tour_name;
		this.tour_expire = tour_expire;
		this.tour_how = tour_how;
		this.tour_rule = tour_rule;
		this.avgpoint = avgpoint;
	}

	public int getCate_number() {
		return cate_number;
	}

	public int getService_number() {
		return service_number;
	}

	public String getTour_addr() {
		return tour_addr;
	}

	public String getTour_name() {
		return tour_name;
	}

	public Date getTour_expire() {
		return tour_expire;
	}

	public String getTour_how() {
		return tour_how;
	}

	public String getTour_rule() {
		return tour_rule;
	}

	public Double getAvgpoint() {
		return avgpoint;
	}

	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}

	public void setService_number(int service_number) {
		this.service_number = service_number;
	}

	public void setTour_addr(String tour_addr) {
		this.tour_addr = tour_addr;
	}

	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	public void setTour_expire(Date tour_expire) {
		this.tour_expire = tour_expire;
	}

	public void setTour_how(String tour_how) {
		this.tour_how = tour_how;
	}

	public void setTour_rule(String tour_rule) {
		this.tour_rule = tour_rule;
	}

	public void setAvgpoint(Double avgpoint) {
		this.avgpoint = avgpoint;
	}

	@Override
	public String toString() {
		return "TourDetailVo [cate_number=" + cate_number + ", service_number=" + service_number + ", tour_addr="
				+ tour_addr + ", tour_name=" + tour_name + ", tour_expire=" + tour_expire + ", tour_how=" + tour_how
				+ ", tour_rule=" + tour_rule + ", avgpoint=" + avgpoint + "]";
	}
	

}
