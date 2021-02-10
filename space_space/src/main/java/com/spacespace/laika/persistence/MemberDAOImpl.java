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
		System.out.println("가입한 회원정보:"+vo.toString());
		sql.insert(memberMapper+".join", vo);
	}
	
	public int check_id(String id) throws Exception{
		System.out.println("ID 중복확인");
		int result = sql.selectOne(memberMapper+".check_id", id);
		
		return result;
	};
		
	public int check_email(String email) throws Exception{
		System.out.println("이메일 중복확인");
		System.out.println("전달받은 이메일:"+email);
		int result =  sql.selectOne(memberMapper+".check_email", email);
		
		return result;
	};
	

	

}
