package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.NoticeListVO;

public interface NoticeService {
	List<NoticeListVO> selectNoticeList() throws Exception;
}
