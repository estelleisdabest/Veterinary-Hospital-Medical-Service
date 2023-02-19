package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.NoticeService;
import kr.human.anihospital.vo.NoticeListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeController {

	// selectAll 서비스
	@Autowired
	NoticeService noticeService;
	
	//----------------------------------------------------------------------------------------------------
	// 모든 공지 내용을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	@GetMapping(value = "/notice")
	public String selectNoticeList(Model model) throws Exception {
		// notice화면에 표시할 값 가져오기 시작-------------------------------------------------------------
		
		// 모든 공지를 담을 그릇 준비
		List<NoticeListVO> noticeList = null;
		// 준비한 그릇에 화면에 표시할 공지 내용을 담는다.
		noticeList = noticeService.selectNoticeList();
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("noticeList", noticeList);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectNoticeList 메서드 호출 : {}", noticeList);
		
		// notice화면에 표시할 값 가져오기 시작-------------------------------------------------------------
		return "notice";
	}
}
