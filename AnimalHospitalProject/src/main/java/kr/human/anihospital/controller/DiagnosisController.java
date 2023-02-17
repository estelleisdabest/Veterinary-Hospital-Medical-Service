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
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisController {
	
	@Autowired
	DiagnosisService diagnosisService;
	
	@GetMapping(value="/diagnosis")
	public String diagnosis(@RequestParam(required = false, defaultValue = "91") int seq, Model model) throws Exception {
		log.info("selectDiagnosisAnimalInfo 컨트롤러 받은값 : {}", seq);
		DiagnosisAnimalVO diagnosisAnimalVO = diagnosisService.selectDiagnosisAnimalInfo(seq);
		model.addAttribute("diagnosisAnimal", diagnosisAnimalVO);
		log.info("selectDiagnosisAnimalInfo 컨트롤러 : {}", diagnosisAnimalVO);
		
		List<DiagnosisDetailInMedicineVO> diadetailImMedicineList = diagnosisService.selectDiagnosisDetailInMedicine();
		model.addAttribute("diadetailImMedicineList", diadetailImMedicineList);
		log.info("selectDiagnosisDetailInMedicine 컨트롤러 : {}", diadetailImMedicineList);
	
		postscriptOneDiagnosisVO postOneDiagnosisVO = diagnosisService.selectPostscriptOneDiagnosis();
		model.addAttribute("postOneDiagnosisVO", postOneDiagnosisVO);
		log.info("selectPostscriptOneDiagnosis 컨트롤러 : {}", postOneDiagnosisVO);
		return "diagnosis";
	}
}
