package com.spacespace.laika.persistence;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spacespace.laika.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate sql;	
	
	@Autowired
	private static final String memberMapper = "com.spacespace.laika.mappers.memberMapper";
	
	public void join(MemberVO vo) throws Exception{	
		System.out.println(vo.toString());
		sql.insert(memberMapper+".join", vo);
	}
	
	public int check_id(String id) throws Exception{
		return sql.selectOne("memberMapper.check_id", id);
	};
		
	public int check_email(String email) throws Exception{
			return sql.selectOne("memberMapper.check_email", email);
	
	};
	

	

}
