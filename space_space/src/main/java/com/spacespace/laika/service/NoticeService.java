package com.spacespace.laika.service;
import com.spacespace.laika.domain.NoticeVO;

public interface NoticeService {
	
	
	public void notice_write(NoticeVO vo) throws Exception;
	
	public NoticeVO notice_detail(int index) throws Exception;
	
	public int notice_delete(String id) throws Exception;
	
	public int notice_notify(String id) throws Exception;
	

}
