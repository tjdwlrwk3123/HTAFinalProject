package com.spring.tour.vo;

public class Accom_serviceVo {
	private int accom_service_number; //서비스 고유 번호 
	private int cate_number; //카테고리 번호 
	private String user_accom_boss_name; //숙소 서비스 사업자 이름
	private String accom_name; //숙소이름
	private String accom_addr; //숙소주소
	public Accom_serviceVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Accom_serviceVo(int accom_service_number, int cate_number, String user_accom_boss_name, String accom_name,
			String accom_addr) {
		super();
		this.accom_service_number = accom_service_number;
		this.cate_number = cate_number;
		this.user_accom_boss_name = user_accom_boss_name;
		this.accom_name = accom_name;
		this.accom_addr = accom_addr;
	}
	public int getAccom_service_number() {
		return accom_service_number;
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
	public void setAccom_service_number(int accom_service_number) {
		this.accom_service_number = accom_service_number;
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
	public String getAccom_name() {
		return accom_name;
	}
	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}
	@Override
	public String toString() {
		return "Accom_serviceVo [accom_service_number=" + accom_service_number + ", cate_number=" + cate_number
				+ ", user_accom_boss_name=" + user_accom_boss_name + ", accom_name=" + accom_name 
				+ ", accom_addr=" + accom_addr + "]";
	}
	
}
