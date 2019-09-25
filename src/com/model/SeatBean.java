package com.model;

public class SeatBean {

	private String seatNumber;

	public String getSeatNumber() {
		return seatNumber;
	}

	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}

	public SeatBean() {

	}

	public SeatBean(String seatNumber) {
		super();
		this.seatNumber = seatNumber;
	}

	@Override
	public String toString() {
		return "SeatBean [seatNumber=" + seatNumber + "]";
	}
	
	

}