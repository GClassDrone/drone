package com.gclass.drone.loc.dto;

public class LocDto {
	private int	locno;
	private String sido;
	private String sigungu;
	private int lat;
	private int lng;
	public int getLocno() {
		return locno;
	}
	public void setLocno(int locno) {
		this.locno = locno;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	public int getLat() {
		return lat;
	}
	public void setLat(int lat) {
		this.lat = lat;
	}
	public int getLng() {
		return lng;
	}
	public void setLng(int lng) {
		this.lng = lng;
	}
	@Override
	public String toString() {
		return "LocDto [locno=" + locno + ", sido=" + sido + ", sigungu=" + sigungu + ", lat=" + lat + ", lng=" + lng
				+ "]";
	}
}
