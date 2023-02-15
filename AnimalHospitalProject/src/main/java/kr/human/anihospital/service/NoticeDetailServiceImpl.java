package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeDetailMapper;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Service("NoticeDetailService")
@Slf4j
public class NoticeDetailServiceImpl implements NoticeDetailService{
	
	@Autowired
	NoticeDetailMapper noticeDetailMapper;
	
	@Override
	public void deleteNoticeInfo(int seq_notice) throws Exception {
		log.info("삭제할 변호 : {}", seq_notice);
		noticeDetailMapper.deleteNotice(seq_notice);
		
	}
	

}
