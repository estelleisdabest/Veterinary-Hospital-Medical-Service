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

	@Autowired
	NoticeService noticeService;
	
	@GetMapping(value = "/notice")
	public String selectNoticeList(Model model) throws Exception {
		List<NoticeListVO> noticeList = null;
		// 여기서 서비스를 호출해서 리스트에 넣고
		noticeList = noticeService.selectNoticeList();
		// 모델에 등록
		model.addAttribute("noticeList", noticeList);
		log.info("selectNoticeList 메서드 호출 : {}", noticeList);
		// 뷰로 간다.
		return "notice";
	}
}
