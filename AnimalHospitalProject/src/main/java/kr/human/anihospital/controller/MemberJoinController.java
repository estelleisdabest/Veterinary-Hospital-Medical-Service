package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.MemberJoinService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberJoinController {

	@Autowired
	MemberJoinService memberJoinService;

	// 보호자 회원가입
	@PostMapping("/protectorMemberJoinOk")
	public String protectorMemberJoin(@RequestParam Map<String, Object> map) {
		log.info("보호자 회원가입정보 : {}", map);
		memberJoinService.protectorMemberJoin(map);
		return "redirect:signin";
	}

	// 의사 회원가입
	@PostMapping("/doctorMemberJoinOk")
	public String doctorMemberJoinOk(@RequestParam Map<String, Object> map) {
		log.info("의사 회원가입정보 : {}", map);
		memberJoinService.doctorMemberJoin(map);
		return "redirect:signin";
	}

}
