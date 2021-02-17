package com.spring.tour.vo;

public class TourOptionVo {
	 private int tour_option_number;
	 private int service_number;
	 private int tour_price;
	 private int tour_option_index;
	 private String tour_option;
	 private int tour_amount; // 티켓 개수/  없으면 전체가 비어버린다.
	 private int discount;
	 
	public TourOptionVo() {
		super();
	}

	

	public TourOptionVo(int tour_option_number, int service_number, int tour_price, int tour_option_index,
			String tour_option, int tour_amount, int discount) {
		super();
		this.tour_option_number = tour_option_number;
		this.service_number = service_number;
		this.tour_price = tour_price;
		this.tour_option_index = tour_option_index;
		this.tour_option = tour_option;
		this.tour_amount = tour_amount;
		this.discount = discount;
	}



	public int getTour_option_number() {
		return tour_option_number;
	}

	public int getService_number() {
		return service_number;
	}

	public int getTour_price() {
		return tour_price;
	}

	public int getTour_option_index() {
		return tour_option_index;
	}

	public String getTour_option() {
		return tour_option;
	}

	public int getTour_amount() {
		return tour_amount;
	}

	public void setTour_option_number(int tour_option_number) {
		this.tour_option_number = tour_option_number;
	}

	public void setService_number(int service_number) {
		this.service_number = service_number;
	}

	public void setTour_price(int tour_price) {
		this.tour_price = tour_price;
	}

	public void setTour_option_index(int tour_option_index) {
		this.tour_option_index = tour_option_index;
	}

	public void setTour_option(String tour_option) {
		this.tour_option = tour_option;
	}

	public void setTour_amount(int tour_amount) {
		this.tour_amount = tour_amount;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	@Override
	public String toString() {
		return "TourOptionVo [tour_option_number=" + tour_option_number + ", service_number=" + service_number
				+ ", tour_price=" + tour_price + ", tour_option_index=" + tour_option_index + ", tour_option="
				+ tour_option + ", tour_amount=" + tour_amount + ", discount=" + discount + "]";
	}
	
}
