package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.NoticeDetailService;
import kr.human.anihospital.vo.NoticeListVO;
import kr.human.anihospital.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeDetailController {

	@Autowired
	NoticeDetailService noticeDetailService;
	
	@PostMapping("/noticeDetail")
	public String deleteNotice(@RequestParam int seqNotice) throws Exception {
		log.info("받은 값 : {}", seqNotice);
		noticeDetailService.deleteNotice(seqNotice);
		return "notice";
	}
	
	@GetMapping(value = "/noticeDetail")
	public String selectNotice(@RequestParam Map<String, String> noticeDetailMap, Model model) throws Exception{
		NoticeListVO noticeListVO = null;
		int seqNotice = Integer.parseInt(noticeDetailMap.get("seqNotice"));
		noticeListVO = noticeDetailService.selectNotice(seqNotice);
		model.addAttribute("noticeList",noticeListVO);
		log.info("서비스에서 돌아온 값 : {}", noticeListVO);
		return "noticeDetail";
	}
}
