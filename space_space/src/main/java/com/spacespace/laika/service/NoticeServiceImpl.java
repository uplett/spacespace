package com.spacespace.laika.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public NoticeVO notice_detail(int index) throws Exception {
		return dao.notice_detail(index);
	};
	
	public int notice_delete(String index) throws Exception{
		return 1;
	};
	
	public int notice_notify(String email) throws Exception {
		return 1;
	}
	


}
