package kr.human.anihospital.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.DiagnosisAddService;
import kr.human.anihospital.vo.DiagnosisAddVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisAddController {
	
	@Autowired
	DiagnosisAddService diagnosisAddService;
	
	// 이전 진료내역 & 환자정보
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
	
	// 주의사항 update & 진료내용 insert
	@PostMapping(value = "/diagnosisAddOk")
	   public String updateProtectorImportantPoint(@RequestParam Map<String, String>  map, Model model) throws Exception{
	      log.info("받은 값 : {}", map);
	      DiagnosisAddVO diagnosisAddVO = new DiagnosisAddVO();
	      // 주의 사항 update
 	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setProtectorImportantPoint(map.get("protectorImportantPoint"));
	      // 서비스 호출
	      diagnosisAddService.updateProtectorImportantPoint(diagnosisAddVO);
	      // 진료내용 insert
	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setSeqAnimal(1);
	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setSeqMedicine(1);
	      diagnosisAddVO.setSeqAnimalHospital(1);
	      diagnosisAddVO.setDiagnosisSymptom(map.get("diagnosisSymptom"));
	      // 서비스 호출
	      diagnosisAddService.insertDiagnosis(diagnosisAddVO);
	      return "redirect:patientInfo";
	   }
}
