package kr.human.anihospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.MyPageProtectorService;
import kr.human.anihospital.vo.ProtectorVO;

@Controller
public class MyPageProtectorController {

	@Autowired
	MyPageProtectorService myPageProtectorService;
	
	// 보호자 정보 조회용 테스트 화면
	@GetMapping(value = "/RestMyPageProtector")
	public String SelectProtector(Model model) {
		ProtectorVO vo = myPageProtectorService.selectProtector(1);
		model.addAttribute("protectInfo", vo);
		return "myPageProtectorEx";
	}
}
