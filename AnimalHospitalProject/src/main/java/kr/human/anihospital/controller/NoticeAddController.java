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
	
	// insert 서비스
	@Autowired
	NoticeAddService noticeAddService;
	
	//----------------------------------------------------------------------------------------------------
	// 공지를 추가할 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping("/noticeAddOk")
	public String insertNotice(@RequestParam Map<String, String> noticeAddMap, Model model) throws Exception{
		// 공지 추가 화면 - insert처리 시작-----------------------------------------------------------------
		
		// 화면에서 넘어온 데이터 찍어보기
		log.info("받은 값 : {}", noticeAddMap);
		
		// 화면에서 수정한 값 그릇에 담아 넘기기
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setSeqDoctor(1);
		noticeVO.setSeqAnimalHospital(1);
		noticeVO.setNoticeSubject(noticeAddMap.get("noticeAddSubject"));
		noticeVO.setNoticeContent(noticeAddMap.get("noticeAddContent"));
		noticeAddService.insertNotice(noticeVO);
		// 공지 추가 화면 - insert처리 종료-----------------------------------------------------------------
		return "성공";
	}
}
