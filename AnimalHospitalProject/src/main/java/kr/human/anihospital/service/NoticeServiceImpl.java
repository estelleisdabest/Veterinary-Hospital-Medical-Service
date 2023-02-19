package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeMapper;
import kr.human.anihospital.vo.NoticeListVO;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {

	// selectAll 매퍼
	@Autowired
	NoticeMapper noticeMapper;
	
	//----------------------------------------------------------------------------------------------------
	// 모든 공지를 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	@Override
	public List<NoticeListVO> selectNoticeList() {
		List<NoticeListVO> noticeList = null;
		try {
			noticeList = noticeMapper.selectNoticeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return noticeList;
	}	
}
