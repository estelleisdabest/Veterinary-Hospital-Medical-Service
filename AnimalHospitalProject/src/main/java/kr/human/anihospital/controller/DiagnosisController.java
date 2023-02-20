package kr.human.anihospital.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.DiagnosisService;
import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DiagnosisController {
	
	// selectAll 서비스
	@Autowired
	DiagnosisService diagnosisService;
	
	//----------------------------------------------------------------------------------------------------
	// 모든 진료내역을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	@GetMapping(value="/diagnosis")
	public String diagnosis(@RequestParam(required = false, defaultValue = "130") int seqDiagnosis, Model model) throws Exception {
		// diagnosis화면에 표시할 값 가져오기 시작-------------------------------------------------------------
		
		
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectDiagnosisAnimalInfo 컨트롤러 받은값 : {}", seqDiagnosis);
		// 준비한 그릇에 화면에 표시할 내용을 담는다.
		DiagnosisAnimalVO diagnosisAnimalVO = diagnosisService.selectDiagnosisAnimalInfo(seqDiagnosis);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("diagnosisAnimal", diagnosisAnimalVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectDiagnosisAnimalInfo 컨트롤러 : {}", diagnosisAnimalVO);
		
		// 모든 약정보를 담을 그릇 준비
		List<DiagnosisDetailInMedicineVO> diadetailImMedicineList = diagnosisService.selectDiagnosisDetailInMedicine(seqDiagnosis);
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("diadetailImMedicineList", diadetailImMedicineList);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectDiagnosisDetailInMedicine 컨트롤러 : {}", diadetailImMedicineList);
	
		// 준비한 그릇에 화면에 표시할 내용을 담는다.
		postscriptOneDiagnosisVO postOneDiagnosisVO = diagnosisService.selectPostscriptOneDiagnosis();
		// 받아온 데이터 화면에 넘겨주기
		model.addAttribute("postOneDiagnosisVO", postOneDiagnosisVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기
		log.info("selectPostscriptOneDiagnosis 컨트롤러 : {}", postOneDiagnosisVO);
		
		
		// diagnosis화면에 표시할 값 가져오기 시작-------------------------------------------------------------
		return "diagnosis";
	}
	
	
	//----------------------------------------------------------------------------------------------------
	// 진료내역에 후기를 삭제할 메서드
	//----------------------------------------------------------------------------------------------------
	@PostMapping(value = "/deletePostscript")
	public String deletePostscript(@RequestParam int seqPostscript) throws Exception{
		// 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
		
		
		// 화면에서 넘겨받은 seq값 로그로 찍어보기
		log.info("deletePostscript 컨트롤 : {}",seqPostscript);
		
		// 삭제처리를 위해 서비스 호출하기
		diagnosisService.deletePostscript(seqPostscript);
		
		// 화면에서 삭제할 데이터의 seq값을 받아 delete처리 시작------------------------------
		return "redirect:diagnosis";
	}
}
