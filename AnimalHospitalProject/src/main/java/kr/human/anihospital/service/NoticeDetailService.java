package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeDetailMapper;
import kr.human.anihospital.vo.NoticeListVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeDetailService {

	@Autowired
	NoticeDetailMapper noticeDetailMapper;
	
	public void deleteNotice(int seq_notice) {
		try {
			log.info("서비스 받은 값 : {}", seq_notice);
			noticeDetailMapper.deleteNotice(seq_notice);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public NoticeListVO selectNotice(int seqNotice) {
		NoticeListVO noticeListVO = null;
		log.info("서비스 받은 값 : {}", seqNotice);
		try {
			noticeListVO = noticeDetailMapper.selectNotice(seqNotice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return noticeListVO;
	}
}
