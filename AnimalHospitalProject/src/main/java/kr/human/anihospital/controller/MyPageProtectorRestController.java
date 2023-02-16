package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.MyPageProtectorService;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class MyPageProtectorRestController {

	@Autowired
	MyPageProtectorService myPageProtectorService;
	
	// 나중에 seq 처리 해줘야함
	// Ajax로 보호자 정보 처리를 하는 컨트롤러
	@PostMapping("/editMyPageProtectorOk")
	public String editMyPageProtectorOk(@RequestParam Map<String, Object> map, Model model) {
		log.info("수정값 : {}", map);
		map.put("seqProtector", 1);
		myPageProtectorService.updateProtector(map);
		return "성공";
	}
}