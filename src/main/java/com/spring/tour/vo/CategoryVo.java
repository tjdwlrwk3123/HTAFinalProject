package com.spring.tour.vo;

public class CategoryVo  {
	private int cate_number;
	private String cate_name;
	public CategoryVo() {}
	public CategoryVo(int cate_number, String cate_name) {
		super();
		this.cate_number = cate_number;
		this.cate_name = cate_name;
	}
	public int getCate_number() {
		return cate_number;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
}
