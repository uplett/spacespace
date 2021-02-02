package com.spacespace.laika.persistence;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spacespace.laika.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSessionTemplate sql;
			
	
	public void join(MemberVO vo) throws Exception{
		sql.insert("memberMapper.join", vo);
	}
	
	public int check_id(String id) throws Exception{
		return sql.selectOne("memberMapper.check_id", id);
	};
		
	public int check_email(String email) throws Exception{
			return sql.selectOne("memberMapper.check_email", email);
	
	};
	

	

}
