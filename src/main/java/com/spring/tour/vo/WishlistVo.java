package com.spring.tour.vo;

public class WishlistVo {
	private int cate_number;
	private int service_number;
	private int wishnum;
	private String user_id;
	private String tour_type;
	private String tour_name;
	private double avgpoint;
	private int rcnt; // 리뷰달린  갯수
	private int img_num;
	private String imgsavename; 
	private int tour_price; // 하나에 서비스내의 최저가
	private int tour_amount;
	private int discount; // 최저가를 가져와서 보여주는데, 그 최저가에 붙어있는 할인이 있을경우 가져와서 보여준다.
	private int dcnt;  // 디스카운트된 옵션이 존재하는지 여부. 0보다 크면 할인 옵션이 하나라도 있다!
	
	
	public WishlistVo() {
	}


	public WishlistVo(int cate_number, int service_number, int wishnum, String user_id, String tour_type,
			String tour_name, double avgpoint, int rcnt, int img_num, String imgsavename, int tour_price,
			int tour_amount, int discount, int dcnt) {
		super();
		this.cate_number = cate_number;
		this.service_number = service_number;
		this.wishnum = wishnum;
		this.user_id = user_id;
		this.tour_type = tour_type;
		this.tour_name = tour_name;
		this.avgpoint = avgpoint;
		this.rcnt = rcnt;
		this.img_num = img_num;
		this.imgsavename = imgsavename;
		this.tour_price = tour_price;
		this.tour_amount = tour_amount;
		this.discount = discount;
		this.dcnt = dcnt;
	}


	public int getCate_number() {
		return cate_number;
	}


	public int getService_number() {
		return service_number;
	}


	public int getWishnum() {
		return wishnum;
	}


	public String getUser_id() {
		return user_id;
	}


	public String getTour_type() {
		return tour_type;
	}


	public String getTour_name() {
		return tour_name;
	}


	public double getAvgpoint() {
		return avgpoint;
	}


	public int getRcnt() {
		return rcnt;
	}


	public int getImg_num() {
		return img_num;
	}


	public String getImgsavename() {
		return imgsavename;
	}


	public int getTour_price() {
		return tour_price;
	}


	public int getTour_amount() {
		return tour_amount;
	}


	public int getDiscount() {
		return discount;
	}


	public int getDcnt() {
		return dcnt;
	}


	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}


	public void setService_number(int service_number) {
		this.service_number = service_number;
	}


	public void setWishnum(int wishnum) {
		this.wishnum = wishnum;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public void setTour_type(String tour_type) {
		this.tour_type = tour_type;
	}


	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}


	public void setAvgpoint(double avgpoint) {
		this.avgpoint = avgpoint;
	}


	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}


	public void setImg_num(int img_num) {
		this.img_num = img_num;
	}


	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}


	public void setTour_price(int tour_price) {
		this.tour_price = tour_price;
	}


	public void setTour_amount(int tour_amount) {
		this.tour_amount = tour_amount;
	}


	public void setDiscount(int discount) {
		this.discount = discount;
	}


	public void setDcnt(int dcnt) {
		this.dcnt = dcnt;
	}

	@Override
	public String toString() {
		return "WishlistVo [cate_number=" + cate_number + ", service_number=" + service_number + ", wishnum=" + wishnum
				+ ", user_id=" + user_id + ", tour_type=" + tour_type + ", tour_name=" + tour_name + ", avgpoint="
				+ avgpoint + ", rcnt=" + rcnt + ", img_num=" + img_num + ", imgsavename=" + imgsavename
				+ ", tour_price=" + tour_price + ", tour_amount=" + tour_amount + ", discount=" + discount + ", dcnt="
				+ dcnt + "]";
	}

}
