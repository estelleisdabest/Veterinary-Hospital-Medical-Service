package kr.human.anihospital.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.DiagnosisService;
import kr.human.anihospital.vo.DiagnosisAnimalVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisController {
	
	@Autowired
	DiagnosisService diagnosisService;
	
	@GetMapping(value="/diagnosis")
	public String selectDiagnosisAnimalInfo(Model model) throws Exception {
		DiagnosisAnimalVO diagnosisAnimalVO = diagnosisService.selectDiagnosisAnimalInfo(102);
		model.addAttribute("diagnosisAnimal", diagnosisAnimalVO);
		log.info("selectAnimal 컨트롤러 : {}", diagnosisAnimalVO);
		return "diagnosis";
	}
}
