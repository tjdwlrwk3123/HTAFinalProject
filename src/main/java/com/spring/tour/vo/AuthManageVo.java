package com.spring.tour.vo;

public class AuthManageVo {
	private String user_id;
	private String user_name;
	private String user_condition;
	private String token_authority;
	
	public AuthManageVo(String user_id, String user_name, String user_condition, String token_authority) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_condition = user_condition;
		this.token_authority = token_authority;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_condition() {
		return user_condition;
	}
	public void setUser_condition(String user_condition) {
		this.user_condition = user_condition;
	}
	public String getToken_authority() {
		return token_authority;
	}
	public void setToken_authority(String token_authority) {
		this.token_authority = token_authority;
	}
	
	
}
