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
	
	@Autowired
	NoticeEditMapper noticeEditMapper;
	
	public void updateNotice(NoticeVO noticeVO) {
		try {
			log.info("서비스 받은 값 : {}", noticeVO);
			noticeEditMapper.updateNotice(noticeVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<NoticeOneDetailVO> selectOneDetailNotice(int seqNotice) {
		List<NoticeOneDetailVO> noticeOneDatailVO = null;
		try {
			noticeOneDatailVO = noticeEditMapper.selectOneDetailNotice(seqNotice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("mapper에서 넘어온 값 : {}", noticeOneDatailVO);
		return noticeOneDatailVO;
	}
}
