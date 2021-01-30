package com.spring.tour.vo;

import java.sql.Date;

public class ReservationVo {
	private int reservNum;
	private String id;
	private Date startReserv;
	private Date endReserv;
	private int optNum; //숙소 또는 투어의 기본키번호
	private int payStatus;
	private int totPrice;
	private int payPoint;
	private int useCoup;
	private int payfor;
	public ReservationVo() {}
	public ReservationVo(int reservNum, String id, Date startReserv, Date endReserv, int optNum, int payStatus,
			int totPrice, int payPoint, int useCoup, int payfor) {
		super();
		this.reservNum = reservNum;
		this.id = id;
		this.startReserv = startReserv;
		this.endReserv = endReserv;
		this.optNum = optNum;
		this.payStatus = payStatus;
		this.totPrice = totPrice;
		this.payPoint = payPoint;
		this.useCoup = useCoup;
		this.payfor = payfor;
	}
	public int getReservNum() {
		return reservNum;
	}
	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getStartReserv() {
		return startReserv;
	}
	public void setStartReserv(Date startReserv) {
		this.startReserv = startReserv;
	}
	public Date getEndReserv() {
		return endReserv;
	}
	public void setEndReserv(Date endReserv) {
		this.endReserv = endReserv;
	}
	public int getOptNum() {
		return optNum;
	}
	public void setOptNum(int optNum) {
		this.optNum = optNum;
	}
	public int getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(int payStatus) {
		this.payStatus = payStatus;
	}
	public int getTotPrice() {
		return totPrice;
	}
	public void setTotPrice(int totPrice) {
		this.totPrice = totPrice;
	}
	public int getPayPoint() {
		return payPoint;
	}
	public void setPayPoint(int payPoint) {
		this.payPoint = payPoint;
	}
	public int getUseCoup() {
		return useCoup;
	}
	public void setUseCoup(int useCoup) {
		this.useCoup = useCoup;
	}
	public int getPayfor() {
		return payfor;
	}
	public void setPayfor(int payfor) {
		this.payfor = payfor;
	}
}
