package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.HospitalAddMapper;
import kr.human.anihospital.mapper.NoticeAddMapper;
import kr.human.anihospital.mapper.NoticeMapper;
import kr.human.anihospital.vo.AnimalHospitalVO;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Service("NoticeAddService")
@Slf4j
public class NoticeAddServiceImpl implements NoticeAddService {
	@Autowired
	NoticeAddMapper noticeAddMapper;
	
	@Autowired
	PlatformTransactionManager manager;

	@Override
	public void insertNoticeInfo(NoticeVO noticeVO) throws Exception {
		noticeAddMapper.insertNotice(noticeVO);
		log.info(noticeVO.getSeqDoctor() + noticeVO.getSeqAnimalHospital() + noticeVO.getNoticeSubject() + noticeVO.getNoticeContent());
	}
}
