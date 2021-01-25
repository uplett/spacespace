package com.spacespace.laika.persistence;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.spacespace.laika.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired 
	@Qualifier("SqlSession")
	private SqlSession sql;
	
	public void register(MemberVO vo) throws Exception{
		sql.insert("memberMapper.register", vo);
	}
	
	

}
