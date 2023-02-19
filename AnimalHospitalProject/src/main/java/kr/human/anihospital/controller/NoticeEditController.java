package kr.human.anihospital.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.NoticeDetailService;
import kr.human.anihospital.service.NoticeEditService;
import kr.human.anihospital.vo.NoticeListVO;
import kr.human.anihospital.vo.NoticeOneDetailVO;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeEditController {

	// update 서비스
	@Autowired
	NoticeEditService noticeEditService;
	
	// select 서비스
	@Autowired
	NoticeDetailService noticeDetailService;
	
	//----------------------------------------------------------------------------------------------------
	// 공지 수정 및 수정 내용을 화면에 돌려줄 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping("/noticeEdit")
	public String updateNotice(@RequestParam Map<String, String> noticeEditMap, Model model) throws Exception {
		// 공지 수정 화면 - 수정화면에서 수정할 값을 받아 update처리 시작-------------------------------------
		
		// 화면에서 넘어온 데이터 찍어보기
		log.info("공지 수정화면에서 수정한 값(컨트롤러) : {}", noticeEditMap);
		
		// 화면에서 수정한 값 그릇에 담아 넘기기
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setSeqNotice(Integer.parseInt(noticeEditMap.get("seqNotice")));
		noticeVO.setNoticeSubject(noticeEditMap.get("noticeSubject"));
		noticeVO.setNoticeContent(noticeEditMap.get("noticeContent"));
		noticeEditService.updateNotice(noticeVO);
		// 공지 수정 화면 - 수정화면에서 수정할 값을 받아 update처리 종료-------------------------------------
		
		// 수정한 내용을 공지상세 화면에 표시할 select 시작--------------------------------------------------
		
		// 화면에 넘길 데이터를 담을 그릇 준비
		NoticeListVO noticeListVO = null;
		// SQL실행시 필요한 데이터 준비하기
		int seqNotice = Integer.parseInt(noticeEditMap.get("seqNotice"));
		// 데이터 그릇에 담기
		noticeListVO = noticeDetailService.selectNotice(seqNotice);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("noticeList",noticeListVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("수정한 공지내용을 가지고 서비스에서 돌아온 값(컨트롤러) : {}", noticeListVO);
		
		// 수정한 내용을 공지상세 화면에 표시할 select 종료--------------------------------------------------
		return "noticeDetail";		
	}
	
	//----------------------------------------------------------------------------------------------------
	// 수정화면으로 이동했을 때 수정할 내용을 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	@GetMapping(value = "/noticeEdit")
	public String selectOneDetailNotice(@RequestParam Map<String, String> noticeOneDatailMap, Model model) {
		int seqNotice = Integer.parseInt(noticeOneDatailMap.get("seqNotice"));
		// noticeDetail화면에 수정할 값 표시 시작---------------------------------------------------------
		
		// 화면에 넘길 데이터를 담을 그릇 준비
		List<NoticeOneDetailVO> noticeOneDatailList = null;
		// 데이터 그릇에 담기
		noticeOneDatailList = noticeEditService.selectOneDetailNotice(seqNotice);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("noticeOneDatailList", noticeOneDatailList);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectOneDetailNotice 서비스 에서 넘어온 값(컨트롤러) : {}", noticeOneDatailList);
		
		// noticeDetail화면에 수정할 값 표시 종료---------------------------------------------------------
		
		return "noticeEdit";
	}	
}
