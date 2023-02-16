package kr.human.anihospital.controller;

import java.util.HashMap;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.DoctorInfoService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DoctorInfoController {

	@Autowired
	DoctorInfoService doctorInfoService;

	@GetMapping("/doctorInfo")
	public String viewMyInfoDoctor(Model model) {
		Map<String, Object> map = new HashMap<>();
		// **** 추후 seq는 반드시 웹에서 회원정보를 통해 받아야합니다.
		int seq = 6;
		map = doctorInfoService.viewMyInfoDoctor(seq);
		model.addAttribute("map", map);
		return "doctorInfo";
	}

	@PostMapping("/doctorInfoEdit")
	public String sendMyInfoDoctor(@RequestParam Map<String, Object> map, Model model) {
		log.info("받은값 : {}", map);
		model.addAttribute("map", map);
		return "doctorInfoEdit";
	}

	@PostMapping("/doctorInfoEditOk")
	public String editMyInfoDoctor(@RequestParam Map<String, Object> map) {
		log.info("받은값 : {}", map);
		doctorInfoService.editMyInfoDoctor(map);
		return "redirect:doctorInfo";
	}

}
