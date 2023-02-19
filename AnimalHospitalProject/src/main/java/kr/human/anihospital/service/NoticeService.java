package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.NoticeListVO;

public interface NoticeService {
	
	//----------------------------------------------------------------------------------------------------
	// 모든 공지를 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	List<NoticeListVO> selectNoticeList() throws Exception;
}
