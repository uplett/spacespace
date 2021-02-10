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
	};
	
	public int check_id(String id) throws Exception{
		//체크될 경우 1 반환
		int result = dao.check_id(id);
		return result;
	};
	
	public int check_email(String email) throws Exception {
		int result = dao.check_email(email);
		System.out.println(result);
		return result;
	};
	


}
