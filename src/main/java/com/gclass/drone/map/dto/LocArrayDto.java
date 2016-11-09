package com.gclass.drone.map.dto;

import java.util.Arrays;

public class LocArrayDto {
	private String[] sido;
	private String[] sigungu;
	private Double[] lat;
	private Double[] lng;
	
	public int count(){
		return sigungu.length;
	}
	
	public String getSido(int i) {
		return sido[i];
	}
	public void setSido(String[] sido) {
		this.sido = sido;
	}
	public String getSigungu(int i) {
		return sigungu[i];
	}
	public void setSigungu(String[] sigungu) {
		this.sigungu = sigungu;
	}
	public Double getLat(int i) {
		return lat[i];
	}
	public void setLat(Double[] lat) {
		this.lat = lat;
	}
	public Double getLng(int i) {
		return lng[i];
	}
	public void setLng(Double[] lng) {
		this.lng = lng;
	}
	
	@Override
	public String toString() {
		return "LocArrayDto [sido=" + Arrays.toString(sido) + ", sigungu=" + Arrays.toString(sigungu) + ", lat="
				+ Arrays.toString(lat) + ", lng=" + Arrays.toString(lng) + "]";
	}
}
