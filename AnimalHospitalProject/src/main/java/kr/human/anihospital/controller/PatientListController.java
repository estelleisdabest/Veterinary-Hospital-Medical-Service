package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PatientListController {
	
	@GetMapping(value = "/patientListView")
	public String selectPatientList(Model model) {
		List<String> aniList = null;
		// 여기서 서비스를 호출해서 리스트에 넣고
		
		log.info("selectPatientList메서드 호출 : {}",  aniList);
		// 모델에 등록
		model.addAttribute("aniList", aniList);
		// 뷰로 간다.
		return "patientList";
	}
}
