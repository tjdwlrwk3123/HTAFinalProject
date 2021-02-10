package com.spring.tour.vo;

public class ImageVo {
	private int img_num;
	private String imgorgname;
	private String imgsavename;
	private int general_number;
	private int cate_number;
	public ImageVo() {}
	public ImageVo(int img_num, String imgorgname, String imgsavename, int general_number, int cate_number) {
		super();
		this.img_num = img_num;
		this.imgorgname = imgorgname;
		this.imgsavename = imgsavename;
		this.general_number = general_number;
		this.cate_number = cate_number;
	}
	public int getImg_num() {
		return img_num;
	}
	public String getImgorgname() {
		return imgorgname;
	}
	public String getImgsavename() {
		return imgsavename;
	}
	public int getGeneral_number() {
		return general_number;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setImg_num(int img_num) {
		this.img_num = img_num;
	}
	public void setImgorgname(String imgorgname) {
		this.imgorgname = imgorgname;
	}
	public void setImgsavename(String imgsavename) {
		this.imgsavename = imgsavename;
	}
	public void setGeneral_number(int general_number) {
		this.general_number = general_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	@Override
	public String toString() {
		return "ImageVo [img_num=" + img_num + ", imgorgname=" + imgorgname + ", imgsavename=" + imgsavename
				+ ", general_number=" + general_number + ", cate_number=" + cate_number + "]";
	}
	
}
