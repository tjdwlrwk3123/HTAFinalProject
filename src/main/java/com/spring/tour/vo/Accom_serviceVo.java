package com.spring.tour.vo;

public class Accom_serviceVo {
	private int accom_service; //서비스 고유 번호 
	private int cate_number; //카테고리 번호 
	private String user_accom_boss_name; //숙소 서비스 사업자 이름
	private String accom_addr; //숙소주소
	public Accom_serviceVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Accom_serviceVo(int accom_service, int cate_number, String user_accom_boss_name, String accom_addr) {
		super();
		this.accom_service = accom_service;
		this.cate_number = cate_number;
		this.user_accom_boss_name = user_accom_boss_name;
		this.accom_addr = accom_addr;
	}
	public int getAccom_service() {
		return accom_service;
	}
	public int getCate_number() {
		return cate_number;
	}
	public String getUser_accom_boss_name() {
		return user_accom_boss_name;
	}
	public String getAccom_addr() {
		return accom_addr;
	}
	public void setAccom_service(int accom_service) {
		this.accom_service = accom_service;
	}
	public void setCate_number(int cate_number) {
		this.cate_number = cate_number;
	}
	public void setUser_accom_boss_name(String user_accom_boss_name) {
		this.user_accom_boss_name = user_accom_boss_name;
	}
	public void setAccom_addr(String accom_addr) {
		this.accom_addr = accom_addr;
	}
	@Override
	public String toString() {
		return "Accom_serviceVo [accom_service=" + accom_service + ", cate_number=" + cate_number
				+ ", user_accom_boss_name=" + user_accom_boss_name + ", accom_addr=" + accom_addr + "]";
	}
	
}
