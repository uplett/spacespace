package com.spacespace.laika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("board")
	public String board() {
		System.out.println("매핑됨-문의게시판");
		return "/board/board";
	}
	
	@RequestMapping("qna")
	public String qna() {
		System.out.println("매핑됨-자주묻는질문");
		return "/board/qna";
	}


}
