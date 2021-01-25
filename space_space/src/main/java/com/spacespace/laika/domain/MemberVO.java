package com.spacespace.laika.domain;

import java.sql.Date;

import org.apache.ibatis.type.Alias;


@Alias("memberVO")
public class MemberVO {
	
	private int index;
	private String id;
	private String pw;
	private String address;
	private String email;
	private String phone;
	private Date regDate;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [index=" + index + ", id=" + id + ", pw=" + pw + ", address=" + address + ", email=" + email
				+ ", phone=" + phone + ", regDate=" + regDate + "]";
	}
	

	

}
