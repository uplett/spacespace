package com.spacespace.laika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping("event")
	public String event() {
		System.out.println("매핑됨-이벤트페이지");
		return "/event/event";
	}
	
	@RequestMapping("closedevent")
	public String closedEvent() {
		System.out.println("매핑됨-지난이벤트");
		return "/event/closedevent";
	}
	
	@RequestMapping("link")
	public String link() {
		System.out.println("매핑됨-링크");
		return "/link/link";
	}



}
