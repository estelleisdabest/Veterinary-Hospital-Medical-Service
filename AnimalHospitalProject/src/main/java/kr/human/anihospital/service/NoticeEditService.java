package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeEditMapper;
import kr.human.anihospital.vo.NoticeOneDetailVO;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeEditService {
	
	// update 매퍼
	@Autowired
	NoticeEditMapper noticeEditMapper;
	
	//----------------------------------------------------------------------------------------------------
	// 공지 수정 및 수정 내용을 화면에 돌려줄 메서드
	//----------------------------------------------------------------------------------------------------
	public void updateNotice(NoticeVO noticeVO) {
		// 수정할 내용을 mapper에 넘겨주기
		try {
			noticeEditMapper.updateNotice(noticeVO);
			// mapper가 실행되고 나서 가져온 데이터 확인하기
			log.info("수정할 공지 내용을 서비스에서 받은 값(서비스) : {}", noticeVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//----------------------------------------------------------------------------------------------------
	// 수정화면으로 이동했을 때 수정할 내용을 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	public List<NoticeOneDetailVO> selectOneDetailNotice(int seqNotice) {
		// mapper에서 실행한 결과값 담을 그릇 준비
		List<NoticeOneDetailVO> noticeOneDatailVO = null;
		try {
			// mapper에 SQL실행시 필요한 데이터 넘겨주기 및 실행할 메서드 부르기
			noticeOneDatailVO = noticeEditMapper.selectOneDetailNotice(seqNotice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// mapper가 실행되고 나서 가져온 데이터 확인하기
		log.info("공지 상세 내용을 가지고 mapper에서 넘어온 값(서비스) : {}", noticeOneDatailVO);
		return noticeOneDatailVO;
	}
}
