package com.spacespace.laika.domain;

import java.time.LocalDateTime;

public class NoticeVO {
	
	private int index;
	private String title;
	private String text;
	private LocalDateTime post_date;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
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
	public LocalDateTime getPost_date() {
		return post_date;
	}
	public void setPost_date(LocalDateTime post_date) {
		this.post_date = LocalDateTime.now();
	}
	
	@Override
	public String toString() {
		return "NoticeVO [index=" + index + ", title=" + title + ", text=" + text + ", post_date=" + post_date
				+ ", getIndex()=" + getIndex() + ", getTitle()=" + getTitle() + ", getText()=" + getText()
				+ ", getPost_date()=" + getPost_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
	
}