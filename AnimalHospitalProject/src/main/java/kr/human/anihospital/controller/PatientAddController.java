package kr.human.anihospital.controller;

import java.text.SimpleDateFormat;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.PatientAddService;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
public class PatientAddController {
	
	@Autowired
	PatientAddService patientAddService;
	
	//----------------------------------------------------------------------------------------------------
	// 환자 등록을 할 메서드
	//----------------------------------------------------------------------------------------------------	
	@PostMapping("/patientAdd")
	public String insertPatient(@RequestParam Map<String, String> patientAddMap, Model model ) throws Exception{
		// 환자 등록 화면 - insert처리 시작-----------------------------------------------------------------
		
		// 화면에서 넘어온 데이터 찍어보기
		log.info("받은 값 : {}", patientAddMap);
		
		// 화면에서 수정한 값 그릇에 담아 넘기기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		AnimalVO animalVO = new AnimalVO();
		animalVO.setSeqProtector(Integer.valueOf(patientAddMap.get("seqProtector")));
		animalVO.setSeqDoctor(1);
		animalVO.setAnimalName(patientAddMap.get("animalName"));
		animalVO.setAnimalType(patientAddMap.get("animalType"));
		animalVO.setAnimalSize(patientAddMap.get("animalSize"));
		animalVO.setAnimalWeight(Float.parseFloat(patientAddMap.get("animalWeight")));
		animalVO.setAnimalAge(sdf.parse(patientAddMap.get("animalAge")));
		animalVO.setAnimalGender(Boolean.parseBoolean(patientAddMap.get("animalGender")));
		animalVO.setAnimalImportantSymptom(patientAddMap.get("animalImportantSymptom"));
		
		patientAddService.insertPatient(animalVO);
		// 환자 등록 화면 - insert처리 종료-----------------------------------------------------------------
		return "animallookup";
	}
}
