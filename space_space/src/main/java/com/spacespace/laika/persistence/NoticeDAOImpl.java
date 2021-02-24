package com.spacespace.laika.persistence;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.domain.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	private SqlSessionTemplate sql;	
	
	@Autowired
	private static final String noticeMapper = "com.spacespace.laika.mappers.noticeMapper";
	
	public void notice_write(NoticeVO vo) throws Exception{	
		System.out.println("공지사항추가");
		sql.insert(noticeMapper+".notice_write", vo);
	}
	
	public NoticeVO notice_detail(int index) throws Exception{
		System.out.println("공지디테일");
		NoticeVO notice = sql.selectOne(noticeMapper+".notice_detail", index);
		return notice;
	};
	
	public int notice_delete(String id) throws Exception{
		System.out.println("공지사항삭제");
		int result = sql.selectOne(noticeMapper+".notice_delete", id);
		
		return result;
	};
		
	public int notice_notify(String id) throws Exception{
		System.out.println("공지사항수정");
		int result =  sql.selectOne(noticeMapper+".notice_notify", id);
		
		return result;
	}


	

}
