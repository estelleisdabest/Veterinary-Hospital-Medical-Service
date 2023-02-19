package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.NoticeDetailService;
import kr.human.anihospital.vo.NoticeListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeDetailController {

	// selectOne & delete 서비스
	@Autowired
	NoticeDetailService noticeDetailService;
	
	//----------------------------------------------------------------------------------------------------
	// 공지를 삭제해줄 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping("/noticeDetail")
	public String deleteNotice(@RequestParam int seqNotice) throws Exception {
		// 공지 상세 화면 - 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
		
		// 화면에서 넘겨받은 seq값 로그로 찍어보기
		log.info("받은 값 : {}", seqNotice);
		
		// 삭제처리를 위해 서비스 호출하기
		noticeDetailService.deleteNotice(seqNotice);
		
		// 공지 상세 화면 - 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
		return "notice";
	}
	
	//----------------------------------------------------------------------------------------------------
	// 공지 상세 내용을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	@GetMapping(value = "/noticeDetail")
	public String selectNotice(@RequestParam Map<String, String> noticeDetailMap, Model model) throws Exception{
		// 수정한 내용을 공지상세 화면에 표시할 select 시작--------------------------------------------------
		
		// 화면에 넘길 데이터를 담을 그릇 준비
		NoticeListVO noticeListVO = null;
		// SQL실행시 필요한 데이터 준비하기
		int seqNotice = Integer.parseInt(noticeDetailMap.get("seqNotice"));
		// 데이터 그릇에 담기
		noticeListVO = noticeDetailService.selectNotice(seqNotice);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("noticeList",noticeListVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("서비스에서 돌아온 값 : {}", noticeListVO);
		
		// 수정한 내용을 공지상세 화면에 표시할 select 종료--------------------------------------------------
		return "noticeDetail";
	}
}
