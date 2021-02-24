package com.spacespace.laika.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.domain.NoticeVO;
import com.spacespace.laika.service.MemberService;
import com.spacespace.laika.service.NoticeService;

@Controller
public class SpaceController {
	
	@Inject
	NoticeService service;
	
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
	
	@RequestMapping("new_notice")
	public String newNotice() {
		System.out.println("매핑됨-공지추가페이지");
		return "space/new_notice";
	}
	
	
	// 공지사항 추가
	@RequestMapping(value = "new_notice", method = RequestMethod.POST)
	public String notice_write(NoticeVO vo) throws Exception {
		
		System.out.println(vo.getTitle());
		System.out.println(vo.getText());
		
		service.notice_write(vo);
		return "space/notice";
	}

}
