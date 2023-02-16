package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.NoticeAddService;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class NoticeAddController {
	@Autowired
	NoticeAddService noticeAddService;
	
	// 나중에 seq 처리 해줘야함
	@PostMapping("/noticeAddOk")
	public String insertNotice(@RequestParam Map<String, String> noticeAddMap, Model model) throws Exception{
		log.info("받은 값 : {}", noticeAddMap);
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setSeqDoctor(1);
		noticeVO.setSeqAnimalHospital(1);
		noticeVO.setNoticeSubject(noticeAddMap.get("noticeAddSubject"));
		noticeVO.setNoticeContent(noticeAddMap.get("noticeAddContent"));
		
		noticeAddService.insertNotice(noticeVO);
		
		return "성공";
	}
}
