package com.spacespace.laika.domain;

import java.time.LocalDateTime;

public class NoticeVO {
	
	private int index;
	private String admin_id;
	private String title;
	private String text;
	private LocalDateTime post_date;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
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
	
	
}