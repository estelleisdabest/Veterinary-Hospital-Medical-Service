package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.DiagnosisAddService;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisAddController {

	@Autowired
	DiagnosisAddService diagnosisAddService;
	
	@GetMapping(value = "/diagnosisAdd")
	public String selectPatientInfoDiagnosis(Model model) throws Exception{
		int seqAnimal = 1;
		
		List<patientInfoDiagnosisListVO> pidliat = null;
		PatientInfoVO patientInfoVO = null;
		
		pidliat = diagnosisAddService.selectPatientInfoDiagnosis();
		patientInfoVO  = diagnosisAddService.selectPatientInfo();
		
		model.addAttribute("pidliat",pidliat);
		model.addAttribute("patientInfoVO", patientInfoVO);
		
		log.info("selectPatientInfoDiagnosis메서드 호출 : {}",  pidliat);
		log.info("selectPatientInfo메서드 호출 : {}",  patientInfoVO);
		
		return"diagnosisAdd";
	}

}
