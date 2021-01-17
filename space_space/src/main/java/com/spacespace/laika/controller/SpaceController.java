package com.spacespace.laika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpaceController {
	
	@RequestMapping("space")
	public String space() {
		System.out.println("매핑됨-소개페이지");
		return "space/space";
	}
	
	@RequestMapping("notice")
	public String notice() {
		System.out.println("매핑됨-공지페이지");
		return "space/notice";
	}


}
