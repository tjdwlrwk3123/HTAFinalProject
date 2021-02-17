package com.spring.tour.vo;

public class TourBookOptionVo {
	private int tour_book_option_number;
	private int tour_book_number;
	private int tour_option_index;
	private int cnt;
	public TourBookOptionVo() {}
	public TourBookOptionVo(int tour_book_option_number, int tour_book_number, int tour_option_index, int cnt) {
		super();
		this.tour_book_option_number = tour_book_option_number;
		this.tour_book_number = tour_book_number;
		this.tour_option_index = tour_option_index;
		this.cnt = cnt;
	}
	public int getTour_book_option_number() {
		return tour_book_option_number;
	}
	public void setTour_book_option_number(int tour_book_option_number) {
		this.tour_book_option_number = tour_book_option_number;
	}
	public int getTour_book_number() {
		return tour_book_number;
	}
	public void setTour_book_number(int tour_book_number) {
		this.tour_book_number = tour_book_number;
	}
	public int getTour_option_index() {
		return tour_option_index;
	}
	public void setTour_option_index(int tour_option_index) {
		this.tour_option_index = tour_option_index;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
