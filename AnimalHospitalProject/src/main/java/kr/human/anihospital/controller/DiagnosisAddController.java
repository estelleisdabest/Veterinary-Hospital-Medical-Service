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
	// 이전 진료내역 & 환자정보select ,
	// 주의사항 update & 진료내용 insert 서비스 호출
	@Autowired
	DiagnosisAddService diagnosisAddService;
	// ----------------------------------------------------------------------------------------------------------------------
	// 이전 진료내역 & 환자정보를 가져올 메서드
	// ----------------------------------------------------------------------------------------------------------------------
	@GetMapping(value = "/diagnosisAdd")
	public String selectPatientInfoDiagnosis(Model model) throws Exception{
		// 화면에 표시할 select 시작 ----------------------------------------------------------------------------------------
		int seqAnimal = 1;
		// 화면에 넘길 데이터를 담을 그릇(List) 준비
		List<patientInfoDiagnosisListVO> pidliat = null;
		// 화면에 넘길 데이터를 담을 그릇(VO) 준비
		PatientInfoVO patientInfoVO = null;
		// 데이터 그릇(List)에 담기
		pidliat = diagnosisAddService.selectPatientInfoDiagnosis();
		// 데이터 그릇(VO)에 담기
		patientInfoVO  = diagnosisAddService.selectPatientInfo();
		// 받아온 데이터(List)를 화면에 넘겨주기
		model.addAttribute("pidliat",pidliat);
		// 받아온 데이터(VO)를 화면에 넘겨주기
		model.addAttribute("patientInfoVO", patientInfoVO);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기(List)
		log.info("selectPatientInfoDiagnosis메서드 호출 : {}",  pidliat);
		// 제대로 데이터가 담겨 있는지 로그에 찍어보기(VO)
		log.info("selectPatientInfo메서드 호출 : {}",  patientInfoVO);
		// 화면에 표시할 select 종료 ----------------------------------------------------------------------------------------
		return"diagnosisAdd";
	}
  
	// ----------------------------------------------------------------------------------------------------------------------
	// 주의사항 수정 & 진료내용 추가해줄 메서드
	// ----------------------------------------------------------------------------------------------------------------------
	@PostMapping(value = "/diagnosisAddOk")
	   public String updateProtectorImportantPoint(@RequestParam Map<String, String>  map, Model model) throws Exception{
		// 진료내용 작성 화면의 보호자 주의사항을 수정할 값을 받아 update & insert처리 시작 ----------------------------------
		
		// 화면에서 넘어온 데이터 찍어보기
		log.info("진료내용 작성화면에서 수정한 값(컨트롤러) : {}", map);
		// 화면에서 수정 & 추가한 값 그릇에 담아 넘기기
	      DiagnosisAddVO diagnosisAddVO = new DiagnosisAddVO();
	      // 주의 사항 수정
 	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setProtectorImportantPoint(map.get("protectorImportantPoint"));
	      // 수정 서비스 호출
	      diagnosisAddService.updateProtectorImportantPoint(diagnosisAddVO);
	      // 진료내용 인서트
	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setSeqAnimal(1);
	      diagnosisAddVO.setSeqProtector(1);
	      diagnosisAddVO.setSeqMedicine(1);
	      diagnosisAddVO.setSeqAnimalHospital(1);
	      diagnosisAddVO.setDiagnosisSymptom(map.get("diagnosisSymptom"));
	      // 추가 서비스 호출
	      diagnosisAddService.insertDiagnosis(diagnosisAddVO);
	      // 환자정보 상세 화면으로 이동 - 진료내용 작성화면에서 수정과 추가할 값을 받아 update & insert 처리 종료 --------
	      return "redirect:patientInfo";
	   }
}
