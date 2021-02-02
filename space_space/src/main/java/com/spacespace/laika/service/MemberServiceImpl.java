package com.spacespace.laika.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
		

	public void join(MemberVO vo) throws Exception{
		dao.join(vo);
	}
	
	public void check_id(String id) throws Exception{
		
	};
	
	public void check_email(String email) throws Exception {
		
	}
	


}
