package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.MyPageProtectorService;
import kr.human.anihospital.vo.PatientDiagnosisListVO;
import kr.human.anihospital.vo.ProtectorVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MyPageProtectorController {

	@Autowired
	MyPageProtectorService myPageProtectorService;
	
	// 나중에 seq 처리 해줘야함(보호자 로그인 정보)
	@GetMapping(value = "/myPageProtector")
	public String myPageProtector(@RequestParam(required = false, defaultValue = "1") int seqProtector, Model model) {
		ProtectorVO protectInfo = myPageProtectorService.selectProtector(seqProtector);
		model.addAttribute("protectInfo", protectInfo);
		
		List<PatientDiagnosisListVO> patientDiagnosisList = myPageProtectorService.selectPatientDiagnosisList(seqProtector);
		model.addAttribute("patientDiagnosisList", patientDiagnosisList);
		
		return "myPageProtector";
		
	}
	// 보호자 정보 수정할때 수정되지 않는 값을 보여줌
	// 나중에 seq 처리 해줘야함(보호자 로그인 정보)
	@GetMapping(value = "/editMyPageProtector")
	public String editMyPageProtector(Model model) {
		ProtectorVO vo = myPageProtectorService.selectProtector(1);
		log.info("받은값 {}" ,vo);
		model.addAttribute("protectInfo", vo);
		return "editMyPageProtector";
	}
}
