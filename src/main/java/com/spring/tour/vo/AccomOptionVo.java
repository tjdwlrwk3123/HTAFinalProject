package com.spring.tour.vo;

public class AccomOptionVo {
	private int accom_option_number;
	private int accom_service_number;
	private String accom_rooms_option;
	private int accom_min_people;
	private int accom_max_people;
	private int accom_price;
	public AccomOptionVo() {}
	public AccomOptionVo(int accom_option_number, int accom_service_number, String accom_rooms_option,
			int accom_min_people, int accom_max_people, int accom_price) {
		super();
		this.accom_option_number = accom_option_number;
		this.accom_service_number = accom_service_number;
		this.accom_rooms_option = accom_rooms_option;
		this.accom_min_people = accom_min_people;
		this.accom_max_people = accom_max_people;
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
	public int getAccom_min_people() {
		return accom_min_people;
	}
	public void setAccom_min_people(int accom_min_people) {
		this.accom_min_people = accom_min_people;
	}
	public int getAccom_max_people() {
		return accom_max_people;
	}
	public void setAccom_max_people(int accom_max_people) {
		this.accom_max_people = accom_max_people;
	}
	public int getAccom_price() {
		return accom_price;
	}
	public void setAccom_price(int accom_price) {
		this.accom_price = accom_price;
	}
}
