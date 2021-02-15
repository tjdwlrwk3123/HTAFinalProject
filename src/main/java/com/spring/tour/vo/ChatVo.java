package com.spring.tour.vo;

public class ChatVo {
	private int num;
	private String username;
	private int using;
	
	public ChatVo(int num, String username, int using) {
		super();
		this.num = num;
		this.username = username;
		this.using = using;
	}
	public ChatVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNum() {
		return num;
	}
	public String getUsername() {
		return username;
	}
	public int getUsing() {
		return using;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setUsing(int using) {
		this.using = using;
	}
	
}
