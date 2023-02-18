package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.PatientInfoEditProtectorService;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PatientInfoEditProtectorController {

	@Autowired
	PatientInfoEditProtectorService patientInfoEditProtectorService;
	
	// 여기서 정보 조회화면에서 seq 받아와야함
	@GetMapping("patientInfoEditProtector")
	public String PatientInfoEditProtectorSelect(Model model) {
		AnimalVO animalVO = new AnimalVO();
		animalVO = patientInfoEditProtectorService.selectPatient();
		log.info("animalVO : {}",animalVO);
		model.addAttribute("animalVO", animalVO);
		return "patientInfoEditProtector";
	}
	
	@PostMapping("patientInfoEditProtectorOk")
	public String PatientInfoEditProtectorOk(@RequestParam Map<String, Object> map) {
		log.info("수정값 : {}", map);
		patientInfoEditProtectorService.updatePatient(map);
		return "redirect:myPageProtector";
	}
}
