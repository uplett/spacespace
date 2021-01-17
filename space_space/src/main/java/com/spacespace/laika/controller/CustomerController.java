package com.spacespace.laika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	
	@RequestMapping("modify")
	public String modify() {
		System.out.println("매핑됨-정보수정");
		return "/customer/modify";
	}
	
	@RequestMapping("contact")
	public String contact() {
		System.out.println("매핑됨-1:1문의");
		return "/customer/contact";
	}
	
	@RequestMapping("shipping")
	public String shipping() {
		System.out.println("매핑됨-배송정보");
		return "/customer/shipping";
	}
	
	@RequestMapping("mybag")
	public String productInfo() {
		System.out.println("매핑됨-장바구니");
		return "/customer/mybag";
	}
	

}
