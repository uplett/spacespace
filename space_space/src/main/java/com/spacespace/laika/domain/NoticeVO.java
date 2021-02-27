package com.spacespace.laika.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class NoticeVO {
	
	private int seq;
	private String title;
	private String text;
	private LocalDate reg_date;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public LocalDate getReg_date() {
		return reg_date;
	}
	public void setReg_date(LocalDateTime post_date) {
		this.reg_date = LocalDate.now();
	}
	
	@Override
	public String toString() {
		return "NoticeVO [seq=" + seq + ", title=" + title + ", text=" + text + ", reg_date=" + reg_date + "]";
	}
	
	
	
	
}