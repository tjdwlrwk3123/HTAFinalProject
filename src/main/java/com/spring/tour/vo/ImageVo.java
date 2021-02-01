package com.spring.tour.vo;

public class ImageVo {
	private int img_num;
	private String imgorgname;
	private String imgsavename;
	private int geteral_number;
	private int cate_number;
	public ImageVo() {}
	public ImageVo(int img_num, String imgorgname, String imgsavename, int geteral_number, int cate_number) {
		super();
		this.img_num = img_num;
		this.imgorgname = imgorgname;
		this.imgsavename = imgsavename;
		this.geteral_number = geteral_number;
		this.cate_number = cate_number;
	}
	public int getImg_num() {
		return img_num;
	}
	public void setImg_num(int img_num) {
		this.img_num = img_num;
	}
	public String getImgorgname() {
		return imgorgname;
	}
	public void setImgorgname(String imgorgname) {
		this.imgorgname = imgorgname;
	}
	public String getImgsavename() {
		return imgsavename;
	}
	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}
	public int getGeteral_number() {
		return geteral_number;
	}
	public void setGeteral_number(int geteral_number) {
		this.geteral_number = geteral_number;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
}
