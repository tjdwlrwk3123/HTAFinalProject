package com.spring.tour.vo;

public class Tour_infoVo {
	private int tour_info_number; //투어정보 고유번호
	private int service_number;//서비스 고유 번호
	private String tour_content;// 투어내용
	private String tour_how; // 투어이용 안내
	private String tour_rule; // 취소 및 환불 규정
	private String tour_warn; // 투어 주의 사항
	public Tour_infoVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Tour_infoVo [tour_info_number=" + tour_info_number + ", service_number=" + service_number
				+ ", tour_content=" + tour_content + ", tour_how=" + tour_how + ", tour_rule=" + tour_rule
				+ ", tour_warn=" + tour_warn + "]";
	}
	public Tour_infoVo(int tour_info_number, int service_number, String tour_content, String tour_how, String tour_rule,
			String tour_warn) {
		super();
		this.tour_info_number = tour_info_number;
		this.service_number = service_number;
		this.tour_content = tour_content;
		this.tour_how = tour_how;
		this.tour_rule = tour_rule;
		this.tour_warn = tour_warn;
	}
	public int getTour_info_number() {
		return tour_info_number;
	}
	public int getService_number() {
		return service_number;
	}
	public String getTour_content() {
		return tour_content;
	}
	public String getTour_how() {
		return tour_how;
	}
	public String getTour_rule() {
		return tour_rule;
	}
	public String getTour_warn() {
		return tour_warn;
	}
	public void setTour_info_number(int tour_info_number) {
		this.tour_info_number = tour_info_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public void setTour_content(String tour_content) {
		this.tour_content = tour_content;
	}
	public void setTour_how(String tour_how) {
		this.tour_how = tour_how;
	}
	public void setTour_rule(String tour_rule) {
		this.tour_rule = tour_rule;
	}
	public void setTour_warn(String tour_warn) {
		this.tour_warn = tour_warn;
	}
	
}
