package com.spring.tour.vo;

import java.sql.Date;

public class MessageVo {
	private int message_number;
	private String send_userid;
	private String receive_userid;
	private String message_content;
	private Date send_Time;
	private int check_Read;
	public MessageVo() {}
	public MessageVo(int message_number, String send_userid, String receive_userid, String message_content,
			Date send_Time, int check_Read) {
		super();
		this.message_number = message_number;
		this.send_userid = send_userid;
		this.receive_userid = receive_userid;
		this.message_content = message_content;
		this.send_Time = send_Time;
		this.check_Read = check_Read;
	}
	public int getMessage_number() {
		return message_number;
	}
	public void setMessage_number(int message_number) {
		this.message_number = message_number;
	}
	public String getSend_userid() {
		return send_userid;
	}
	public void setSend_userid(String send_userid) {
		this.send_userid = send_userid;
	}
	public String getReceive_userid() {
		return receive_userid;
	}
	public void setReceive_userid(String receive_userid) {
		this.receive_userid = receive_userid;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public Date getSend_Time() {
		return send_Time;
	}
	public void setSend_Time(Date send_Time) {
		this.send_Time = send_Time;
	}
	public int getCheck_Read() {
		return check_Read;
	}
	public void setCheck_Read(int check_Read) {
		this.check_Read = check_Read;
	}
}
