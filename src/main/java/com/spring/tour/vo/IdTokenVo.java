package com.spring.tour.vo;

public class IdTokenVo {
	private int token_number;
	private String user_id;
	private String token_data;
	private String token_authority;
	
	public IdTokenVo() {}
	
	public IdTokenVo(int token_number, String user_id, String token_data, String token_authority) {
		super();
		this.token_number = token_number;
		this.user_id = user_id;
		this.token_data = token_data;
		this.token_authority = token_authority;
	}

	public int getToken_number() {
		return token_number;
	}

	public void setToken_number(int token_number) {
		this.token_number = token_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getToken_data() {
		return token_data;
	}

	public void setToken_data(String token_data) {
		this.token_data = token_data;
	}

	public String getToken_authority() {
		return token_authority;
	}

	public void setToken_authority(String token_authority) {
		this.token_authority = token_authority;
	}
	
	
}
