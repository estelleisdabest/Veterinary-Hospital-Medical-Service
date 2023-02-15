package kr.human.anihospital.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.PatientListService;
import kr.human.anihospital.vo.PatientListVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PatientListController {
	
	@Autowired
	PatientListService patientListService;
	
	@GetMapping(value = "/patientList")
	public String selectPatientList(Model model) throws Exception {
		List<PatientListVO> patientList = null;
		// 여기서 서비스를 호출해서 리스트에 넣고
		patientList = patientListService.selectPatientList();
		// 모델에 등록
		model.addAttribute("patientList", patientList);
		model.addAttribute("hello", "hello");
		log.info("selectPatientList메서드 호출 : {}",  patientList);
		// 뷰로 간다.
		return "patientList";
	}
}
