package com.spacespace.laika.persistence;

import com.spacespace.laika.domain.MemberVO;

public interface MemberDAO {
	
	public void join(MemberVO vo) throws Exception;
	

}
