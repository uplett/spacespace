package com.spacespace.laika.persistence;

import java.util.List;

import com.spacespace.laika.domain.Criteria;
import com.spacespace.laika.domain.NoticeVO;

public interface NoticeDAO {
	
	public void notice_write(NoticeVO vo) throws Exception;
	
	public List<NoticeVO> notice_list(Criteria cri) throws Exception;
	
	public NoticeVO notice_detail(int index) throws Exception;

	public int notice_count() throws Exception;
	
	public void notice_delete(int seq) throws Exception;

	public int notice_notify(String id) throws Exception;
	

}
