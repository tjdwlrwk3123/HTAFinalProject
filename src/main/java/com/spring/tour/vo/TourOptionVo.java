package com.spring.tour.vo;

public class TourOptionVo {
	private int tour_option_number;
	private int service_number;
	private String tour_option;
	private int tour_price;
	private int tour_amount;
	public TourOptionVo() {}
	public TourOptionVo(int tour_option_number, int service_number, String tour_option, int tour_price,
			int tour_amount) {
		super();
		this.tour_option_number = tour_option_number;
		this.service_number = service_number;
		this.tour_option = tour_option;
		this.tour_price = tour_price;
		this.tour_amount = tour_amount;
	}
	public int getTour_option_number() {
		return tour_option_number;
	}
	public void setTour_option_number(int tour_option_number) {
		this.tour_option_number = tour_option_number;
	}
	public int getService_number() {
		return service_number;
	}
	public void setService_number(int service_number) {
		this.service_number = service_number;
	}
	public String getTour_option() {
		return tour_option;
	}
	public void setTour_option(String tour_option) {
		this.tour_option = tour_option;
	}
	public int getTour_price() {
		return tour_price;
	}
	public void setTour_price(int tour_price) {
		this.tour_price = tour_price;
	}
	public int getTour_amount() {
		return tour_amount;
	}
	public void setTour_amount(int tour_amount) {
		this.tour_amount = tour_amount;
	}
}
