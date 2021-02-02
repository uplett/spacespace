package com.spacespace.laika.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.service.MemberService;

@Controller
public class AdminController {
	
	@Inject
	MemberService service;
	
	@RequestMapping("error")
	public String error() {
		System.out.println("매핑됨-에러");
		return "/admin/error";
	}
	
	
	
//회원가입
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		System.out.println("매핑됨-회원가입폼");		
		return "/admin/join";
	}
	
	
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join_post(MemberVO vo) throws Exception {
		service.join(vo);
		return "/admin/join_result";
	}
	
	@ResponseBody
	@RequestMapping(value = "/dupl_id", method = RequestMethod.POST)
	public void id_check(String memberID) throws Exception{
		System.out.println("아이디중복확인");
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("매핑됨-로그인 필요");
		return "/admin/login";
	}
	
	@RequestMapping("product_info")
	public String productInfo() {
		System.out.println("매핑됨-상품정보");
		return "/admin/product_info";
	}
	
	@RequestMapping("user_info")
	public String userInfo() {
		System.out.println("매핑됨-유저정보");
		return "/admin/user_info";
	}

}
