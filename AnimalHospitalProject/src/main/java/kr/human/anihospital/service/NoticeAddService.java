package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeAddMapper;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeAddService {
	
	@Autowired
	NoticeAddMapper noticeAddMapper;
	
	public void insertNotice (NoticeVO noticeVO) {
		try {
			log.info("서비스 받은 값 : {}", noticeVO);
			noticeAddMapper.insertNotice(noticeVO);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
