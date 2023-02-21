package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.PatientInfoService;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PatientInfoController {
	
	@Autowired
	PatientInfoService patientInfoService;
	
	@GetMapping(value = "/patientInfo")
	public String selectPatientInfoDiagnosis(@RequestParam int seqAnimal,Model model) throws Exception {
		// patientList에서 환자 1명의 seq를 받아와야함
		log.info("PatientList에서 받은 seqAnimal : {}",seqAnimal);
		List<patientInfoDiagnosisListVO> pidliat = null;
		PatientInfoVO patientInfoVO = null;
		pidliat = patientInfoService.selectPatientInfoDiagnosis();
		patientInfoVO = patientInfoService.selectPatientInfo(seqAnimal);
		model.addAttribute("pidliat", pidliat);
		model.addAttribute("patientInfoVO", patientInfoVO);
		log.info("selectPatientInfoDiagnosis메서드 호출(컨트롤러) : {}",  pidliat);
		log.info("selectPatientInfo메서드 호출(컨트롤러) : {}",  patientInfoVO);
		return "patientInfo";
	}
}
