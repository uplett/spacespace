package com.spacespace.laika.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spacespace.laika.domain.Criteria;
import com.spacespace.laika.domain.MemberVO;
import com.spacespace.laika.domain.NoticeVO;
import com.spacespace.laika.persistence.MemberDAO;
import com.spacespace.laika.persistence.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDAO dao;
		

	public void notice_write(NoticeVO vo) throws Exception{
		
		String text = vo.getText().substring(3, vo.getText().length()-4);
		//썸머노트 p태그 삭제
		
		vo.setText(text);
		dao.notice_write(vo);
	};
	
	public List<NoticeVO> notice_list(Criteria cri) throws Exception{
		List<NoticeVO> list = dao.notice_list(cri);
		return list;
	};
	
	public NoticeVO notice_detail(int seq) throws Exception {
		return dao.notice_detail(seq);
	};
	
	public int notice_count() throws Exception{	
		
		int count = dao.notice_count();	
		System.out.println("noticeService"+count);
		return count;
		
	}
	
	public void notice_delete(int seq) throws Exception{
		dao.notice_delete(seq);
		
	};
	
	public int notice_notify(String email) throws Exception {
		return 1;
	}
	


}
