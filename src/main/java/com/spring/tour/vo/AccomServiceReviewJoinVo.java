package com.spring.tour.vo;

import java.sql.Date;

public class AccomServiceReviewJoinVo {
	private int accom_service_number; //서비스 고유 번호 
	private int cate_number; //카테고리 번호 
	private String accom_name;
	private Double avgpoint;
	private int rcnt;//리뷰 달린 갯수
	private int minp;
	private int maxp;
	public AccomServiceReviewJoinVo() {}
	
	public AccomServiceReviewJoinVo(int accom_service_number, int cate_number, String accom_name, Double avgpoint,
			int rcnt, int minp, int maxp) {
		super();
		this.accom_service_number = accom_service_number;
		this.cate_number = cate_number;
		this.accom_name = accom_name;
		this.avgpoint = avgpoint;
		this.rcnt = rcnt;
		this.minp = minp;
		this.maxp = maxp;
	}

	public int getAccom_service_number() {
		return accom_service_number;
	}
	public void setAccom_service_number(int accom_service_number) {
		this.accom_service_number = accom_service_number;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public String getAccom_name() {
		return accom_name;
	}
	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}
	public Double getAvgpoint() {
		return avgpoint;
	}
	public void setAvgpoint(Double avgpoint) {
		this.avgpoint = avgpoint;
	}
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public int getMinp() {
		return minp;
	}
	public void setMinp(int minp) {
		this.minp = minp;
	}
	public int getMaxp() {
		return maxp;
	}
	public void setMaxp(int maxp) {
		this.maxp = maxp;
	}
	
}
