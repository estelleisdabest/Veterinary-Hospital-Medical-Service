package kr.human.anihospital.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.NoticeEditService;
import kr.human.anihospital.vo.NoticeOneDetailVO;
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
		noticeEditService.updateNotice(noticeVO);
		return "noticeDetail";		
	}
	
	@GetMapping(value = "/noticeEdit")
	public String selectOneDetailNotice(@RequestParam Map<String, String> noticeOneDatailMap, Model model) {
		int seqNotice = Integer.parseInt(noticeOneDatailMap.get("seqNotice"));
		// noticeDetail화면에 수정할 값 표시 시작
		List<NoticeOneDetailVO> noticeOneDatailList = null;
		noticeOneDatailList = noticeEditService.selectOneDetailNotice(seqNotice);
		model.addAttribute("noticeOneDatailList", noticeOneDatailList);
		// noticeDetail화면에 수정할 값 표시 종료
		log.info("selectOneDetailNotice 서비스 에서 넘어온 값(컨트롤러) : {}", noticeOneDatailList);
		return "noticeEdit";
	}	
}
