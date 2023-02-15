package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.NoticeAddService;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeAddController {
	@Autowired
	NoticeAddService noticeAddService;
	
	@PostMapping("/noticeAdd")
	public String insertNotice(@RequestParam Map<String, String> noticeAddMap, Model model) throws Exception{
		log.info("받은 값 : {}", noticeAddMap);
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setSeqDoctor(1);
		noticeVO.setSeqAnimalHospital(1);
		noticeVO.setNoticeSubject(noticeAddMap.get("noticeSubject"));
		noticeVO.setNoticeContent(noticeAddMap.get("noticeContent"));
		
		noticeAddService.insertNoticeInfo(noticeVO);
		
		return "noticeDetail";
	}
}
