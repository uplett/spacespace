package com.spacespace.laika.service;
import com.spacespace.laika.domain.MemberVO;

public interface MemberService {
	
	
	public void join(MemberVO vo) throws Exception;
	
	public void check_id(String id) throws Exception;
	
	public void check_email(String email) throws Exception;
	

}
