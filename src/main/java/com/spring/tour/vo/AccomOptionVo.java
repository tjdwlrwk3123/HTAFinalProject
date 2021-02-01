package com.spring.tour.vo;

public class AccomOptionVo {
	private int accom_option_number;
	private int accom_service_number;
	private String accom_rooms_option;
	private int accom_count;
	private int accom_price;
	public AccomOptionVo() {}
	public AccomOptionVo(int accom_option_number, int accom_service_number, String accom_rooms_option, int accom_count,
			int accom_price) {
		super();
		this.accom_option_number = accom_option_number;
		this.accom_service_number = accom_service_number;
		this.accom_rooms_option = accom_rooms_option;
		this.accom_count = accom_count;
		this.accom_price = accom_price;
	}
	public int getAccom_option_number() {
		return accom_option_number;
	}
	public void setAccom_option_number(int accom_option_number) {
		this.accom_option_number = accom_option_number;
	}
	public int getAccom_service_number() {
		return accom_service_number;
	}
	public void setAccom_service_number(int accom_service_number) {
		this.accom_service_number = accom_service_number;
	}
	public String getAccom_rooms_option() {
		return accom_rooms_option;
	}
	public void setAccom_rooms_option(String accom_rooms_option) {
		this.accom_rooms_option = accom_rooms_option;
	}
	public int getAccom_count() {
		return accom_count;
	}
	public void setAccom_count(int accom_count) {
		this.accom_count = accom_count;
	}
	public int getAccom_price() {
		return accom_price;
	}
	public void setAccom_price(int accom_price) {
		this.accom_price = accom_price;
	}
	
}
