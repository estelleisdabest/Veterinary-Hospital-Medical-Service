package kr.human.anihospital.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.DiagnosisService;
import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.DiagnosisVO;
import kr.human.anihospital.vo.MedicineVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisController {
	
	@Autowired
	DiagnosisService diagnosisService;
	
	@GetMapping(value="/diagnosis")
	public String diagnosis(@RequestParam(required = false, defaultValue = "130") int seqDiagnosis, Model model) throws Exception {
		log.info("selectDiagnosisAnimalInfo 컨트롤러 받은값 : {}", seqDiagnosis);
		DiagnosisAnimalVO diagnosisAnimalVO = diagnosisService.selectDiagnosisAnimalInfo(seqDiagnosis);
		model.addAttribute("diagnosisAnimal", diagnosisAnimalVO);
		log.info("selectDiagnosisAnimalInfo 컨트롤러 : {}", diagnosisAnimalVO);
		
		List<DiagnosisDetailInMedicineVO> diadetailImMedicineList = diagnosisService.selectDiagnosisDetailInMedicine(seqDiagnosis);
		model.addAttribute("diadetailImMedicineList", diadetailImMedicineList);
		log.info("selectDiagnosisDetailInMedicine 컨트롤러 : {}", diadetailImMedicineList);
	
		return "diagnosis";
	}
}
