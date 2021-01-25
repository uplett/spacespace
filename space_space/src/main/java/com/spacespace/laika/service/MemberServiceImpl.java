package com.spacespace.laika.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.persistence.MemberDAO;

@Service
public class MemberServiceImpl {
	
	@Autowired
	MemberDAO dao;
	
	public void register(MemberVO vo) throws Exception{
		dao.register(vo);
	}

}
