package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.NoticeEditService;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeEditController {

	@Autowired
	NoticeEditService noticeEditService;
	
	@PostMapping("/noticeEdit")
	public String updateNotice(@RequestParam Map<String, String> noticeEditMap, Model model) throws Exception {
		log.info("받은 값 : {}", noticeEditMap);
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setSeqNotice(1);
		noticeVO.setNoticeSubject(noticeEditMap.get("noticeSubject"));
		noticeVO.setNoticeContent(noticeEditMap.get("noticeContent"));
		noticeEditService.updateNoticeInfo(noticeVO);
		return "noticeDetail";		
	}
}
