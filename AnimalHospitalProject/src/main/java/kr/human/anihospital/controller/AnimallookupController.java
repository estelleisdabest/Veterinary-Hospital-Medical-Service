package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.AnimallookupService;
import kr.human.anihospital.vo.AnimallookupVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AnimallookupController {
	
	@Autowired
	AnimallookupService animallookupService;
	
	@GetMapping(value = "/animallookup")
	public String selectAnimallookup(Model model) throws Exception{
		List<AnimallookupVO> animallookup = null;
		// 여기서 서비스를 호출해서 리스트에 넣고
		animallookup = animallookupService.selectAnimallookup();
		// 모델에 등록
		model.addAttribute("animallookup", animallookup);
		log.info("selectAnimallookup메서드 호출 : {}", animallookup);
		// 뷰로 간다.
		return "animallookup";
	}
}
