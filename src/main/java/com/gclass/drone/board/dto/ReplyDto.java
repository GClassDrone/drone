package com.gclass.drone.board.dto;

import java.sql.Timestamp;

public class ReplyDto {
	private int rno;
	private int num;
	private String replytext;
	private String replyer;
	private Timestamp updatedt;
	private Timestamp regdt;

	public ReplyDto() {
		super();
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getReplytext() {
		return replytext;
	}

	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}

	public String getReplyer() {
		return replyer;
	}

	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}

	public Timestamp getUpdatedt() {
		return updatedt;
	}

	public void setUpdatedt(Timestamp updatedt) {
		this.updatedt = updatedt;
	}

	public Timestamp getRegdt() {
		return regdt;
	}

	public void setRegdt(Timestamp regdt) {
		this.regdt = regdt;
	}

	@Override
	public String toString() {
		return "ReplyDto [rno=" + rno + ", num=" + num + ", replytext=" + replytext + ", replyer=" + replyer
				+ ", updatedt=" + updatedt + ", regdt=" + regdt + "]";
	}
	
}
