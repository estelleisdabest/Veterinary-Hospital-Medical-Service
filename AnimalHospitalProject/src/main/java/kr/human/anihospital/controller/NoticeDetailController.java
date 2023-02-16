package kr.human.anihospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.NoticeDetailService;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class NoticeDetailController {

	@Autowired
	NoticeDetailService noticeDetailService;
	
	@PostMapping("/noticeDetail")
	public String deleteNotice(@RequestParam int seq_notice) throws Exception {
		log.info("받은 값 : {}", seq_notice);
		noticeDetailService.deleteNotice(seq_notice);
		return "notice";
	}
}
