package kr.human.anihospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.EditMyPageProtectorService;
import kr.human.anihospital.vo.ProtectorVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class EditMyPageProtectorController {

	@Autowired
	EditMyPageProtectorService editMyPageProtectorService;
	
	// 나중에 seq 처리 해줘야함
	@PostMapping("/editMyPageProtectorOk")
	public String editMyPageProtectorOk(@ModelAttribute ProtectorVO protectorVO) {
		log.info("받은 값 : {}", protectorVO);
		protectorVO.setSeqProtector(1);
		editMyPageProtectorService.updateProtector(protectorVO);
		return "성공";
	}
}
