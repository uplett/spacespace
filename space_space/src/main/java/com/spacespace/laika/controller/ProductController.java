package com.spacespace.laika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@RequestMapping("product")
	public String product() {
		System.out.println("매핑됨-전체상품페이지");
		return "product/product";
	}
	
	@RequestMapping("clothes")
	public String clothes() {
		System.out.println("매핑됨-의류페이지");
		return "product/clothes";
	}
	
	@RequestMapping("props")
	public String props() {
		System.out.println("매핑됨-의류페이지");
		return "product/props";
	}
	
	


}
