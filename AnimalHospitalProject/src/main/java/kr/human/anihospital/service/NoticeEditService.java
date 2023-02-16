package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeEditMapper;
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
}
