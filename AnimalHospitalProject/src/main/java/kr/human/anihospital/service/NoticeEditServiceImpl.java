package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.NoticeEditMapper;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Service("NoticeEditService")
@Slf4j
public class NoticeEditServiceImpl implements NoticeEditService {

	@Autowired
	NoticeEditMapper noticeEditMapper;
	
	@Override
	public void updateNoticeInfo(NoticeVO noticeVO) throws Exception {
		noticeEditMapper.updateNotice(noticeVO);
		log.info(noticeVO.getSeqNotice() + noticeVO.getNoticeSubject() + noticeVO.getNoticeContent());
	}
	
}
