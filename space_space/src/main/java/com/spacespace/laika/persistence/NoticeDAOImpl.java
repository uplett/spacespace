package com.spacespace.laika.persistence;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spacespace.laika.domain.Criteria;
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
	
	public NoticeVO notice_detail(int seq) throws Exception{
		System.out.println("공지디테일");
		NoticeVO notice = sql.selectOne(noticeMapper+".notice_detail", seq);
		return notice;
	};
	
	public int notice_count() throws Exception{
		int count = sql.selectOne(noticeMapper+".notice_count");
		System.out.println("noticeDAO"+count);
		return count;
	};
	
	@Override
	public List<NoticeVO> notice_list(Criteria cri) throws Exception{
		System.out.println("전체공지");
		List<NoticeVO> notice_list = sql.selectList(noticeMapper+".notice_all", cri);
		return notice_list;
	};
	
	public void notice_delete(int seq) throws Exception{
		System.out.println("공지사항삭제");
		sql.selectOne(noticeMapper+".notice_delete", seq);
		
	};
		
	public int notice_notify(String id) throws Exception{
		System.out.println("공지사항수정");
		int result =  sql.selectOne(noticeMapper+".notice_notify", id);
		
		return result;
	};

	


	

}
