package com.spring.tour.vo;

public class MessageVo {
	private int messageNum;
	private String sendId;
	private String recId;
	private String content;
	public MessageVo() {}
	public MessageVo(int messageNum, String sendId, String recId, String content) {
		super();
		this.messageNum = messageNum;
		this.sendId = sendId;
		this.recId = recId;
		this.content = content;
	}
	public int getMessageNum() {
		return messageNum;
	}
	public void setMessageNum(int messageNum) {
		this.messageNum = messageNum;
	}
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getRecId() {
		return recId;
	}
	public void setRecId(String recId) {
		this.recId = recId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
