package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.AnimallookupService;
import kr.human.anihospital.vo.AnimallookupVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AnimallookupController {
	
	// 환자 진료내역 조회 Service
	@Autowired
	AnimallookupService animallookupService;
	
	//----------------------------------------------------------------------------------------------------
	// 한 명의 보호자에 따른 환자의 진료내역 리스트를 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	@GetMapping(value = "/animallookup")
	public String selectAnimallookup(@RequestParam(required = false, defaultValue = "2") int seqProtector, Model model) throws Exception{
		// animallookup에 띄울 값 표시 시작 ---------------------------------------------------------------------
		
		// 화면에 넘길 데이터를 담을 그릇 준비
		List<AnimallookupVO> animallookup = null;
		// 데이터 그릇에 담기
		animallookup = animallookupService.selectAnimallookup(seqProtector);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("animallookup", animallookup);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectAnimallookup 서비스에서 넘어온 값(컨트롤러) : {}", animallookup);
		
		// animallookup에 띄울 값 표시 종료 ---------------------------------------------------------------------
		
		return "animallookup";
	}
}
