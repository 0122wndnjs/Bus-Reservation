package com.model;

public class CartBean {

	private String busprice;
	private String cityfrom;
	private String cityto;
	private String start_at;
	private String end_at;
	private String seats;
	
	public String getBusprice() {
		return busprice;
	}
	public void setBusprice(String busprice) {
		this.busprice = busprice;
	}
	public String getCityfrom() {
		return cityfrom;
	}
	public void setCityfrom(String cityfrom) {
		this.cityfrom = cityfrom;
	}
	public String getCityto() {
		return cityto;
	}
	public void setCityto(String cityto) {
		this.cityto = cityto;
	}
	public String getStart_at() {
		return start_at;
	}
	public void setStart_at(String start_at) {
		this.start_at = start_at;
	}
	public String getEnd_at() {
		return end_at;
	}
	public void setEnd_at(String end_at) {
		this.end_at = end_at;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	
	public CartBean() {
		
	}
	
	public CartBean(String busprice, String cityfrom, String cityto, String start_at, String end_at, String seats) {
		super();
		this.busprice = busprice;
		this.cityfrom = cityfrom;
		this.cityto = cityto;
		this.seats = seats;
		this.start_at = start_at;
		this.end_at = end_at;
		
	}
	@Override
	public String toString() {
		return "CartBean [busprice=" + busprice + ", cityfrom=" + cityfrom + ", cityto=" + cityto + ", start_at="
				+ start_at + ", end_at=" + end_at + ", seats=" + seats + "]";
	}
	
	
	
}
