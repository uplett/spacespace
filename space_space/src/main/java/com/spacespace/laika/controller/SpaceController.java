package com.spacespace.laika.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spacespace.laika.domain.Criteria;
import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.domain.NoticeVO;
import com.spacespace.laika.domain.Pagination;
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
	
	@GetMapping(value = "notice")
	public String notice(Model model, Criteria cri) throws Exception {
		System.out.println("매핑됨-공지페이지");

		model.addAttribute("notice", service.notice_list(cri));
		
		Pagination pagination = new Pagination();
		pagination.setCri(cri);
		pagination.setTotalCount(service.notice_count());
		
		System.out.println("controller+"+service.notice_count());
		model.addAttribute("pagination", pagination);

		return "space/notice";
	}
	
	@GetMapping("delete_notice")
	public String deleteNotice() {
		return "redirect:/notice";
	}
	
	@RequestMapping("new_notice")
	public String newNotice() {
		System.out.println("매핑됨-공지추가페이지");
		return "space/new_notice";
	}
	
	
	// 공지사항 추가
	@PostMapping(value = "new_notice")
	public String notice_write(NoticeVO vo) throws Exception {
		
		service.notice_write(vo);
		
		return "redirect:/notice";
	}
	
	// 공지사항 출력
	@GetMapping(value = "detail")
	public String notice_detail(Model model, @RequestParam("seq")int seq) throws Exception {
		
		model.addAttribute("notice", service.notice_detail(seq));
		return "space/detail";
	}

}
