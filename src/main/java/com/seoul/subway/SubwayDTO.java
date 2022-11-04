package com.seoul.subway;

public class SubwayDTO {
	String trainLineNm;
	String barvlDt;
	String arvlMsg2;
	String arvlMsg3;
	
	public String getTrainLineNm() {
		return trainLineNm;
	}
	public void setTrainLineNm(String trainLineNm) {
		this.trainLineNm = trainLineNm;
	}
	public String getBarvlDt() {
		return barvlDt;
	}
	public void setBarvlDt(String barvlDt) {
		this.barvlDt = barvlDt;
	}
	public String getArvlMsg2() {
		return arvlMsg2;
	}
	public void setArvlMsg2(String arvlMsg2) {
		this.arvlMsg2 = arvlMsg2;
	}
	public String getArvlMsg3() {
		return arvlMsg3;
	}
	public void setArvlMsg3(String arvlMsg3) {
		this.arvlMsg3 = arvlMsg3;
	}
	@Override
	public String toString() {
		return "SubwayDTO [trainLineNm=" + trainLineNm + ", barvlDt=" + barvlDt + ", arvlMsg2=" + arvlMsg2
				+ ", arvlMsg3=" + arvlMsg3 + "]";
	}
	
}
