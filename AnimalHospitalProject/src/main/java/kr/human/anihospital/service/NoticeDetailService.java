package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeDetailMapper;
import kr.human.anihospital.vo.NoticeListVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeDetailService {

	// selectOne & delete 매퍼
	@Autowired
	NoticeDetailMapper noticeDetailMapper;
	
	//----------------------------------------------------------------------------------------------------
	// 공지를 삭제해줄 메서드
	//----------------------------------------------------------------------------------------------------
	public void deleteNotice(int seqNotice) {
		// 공지 상세 화면 - 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
		try {
			// 삭제처리시 필요한 데이터 seq번호 로그로 찍어보기
			log.info("서비스 받은 값 : {}", seqNotice);
			// 삭제처리를 위해 mapper부르기
			noticeDetailMapper.deleteNotice(seqNotice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 공지 상세 화면 - 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
	}
	
	//----------------------------------------------------------------------------------------------------
	// 공지 상세 내용을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	public NoticeListVO selectNotice(int seqNotice) {
		// 수정한 내용을 공지상세 화면에 표시할 select 시작--------------------------------------------------
		
		// 데이터를 담을 그릇 준비하기
		NoticeListVO noticeListVO = null;
		
		// select에 필요한 seq번호 넘겨주기
		log.info("서비스 받은 값 : {}", seqNotice);
		try {
			// 데이터를 가져올 mapper부르기
			noticeListVO = noticeDetailMapper.selectNotice(seqNotice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 수정한 내용을 공지상세 화면에 표시할 select 종료--------------------------------------------------
		return noticeListVO;
	}
}
