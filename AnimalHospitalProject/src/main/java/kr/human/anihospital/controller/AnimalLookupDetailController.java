package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.human.anihospital.service.AnimalLookupDetailService;
import kr.human.anihospital.vo.AnimalLookupDetailVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AnimalLookupDetailController {
		
	@Autowired
	AnimalLookupDetailService animalLookupDetailService;
	
	@GetMapping(value = "/animallookupdetail")
	public String selectAnimalLookupDetail(Model model) throws Exception{
		List<AnimalLookupDetailVO> animalLookupDetail = null;
		animalLookupDetail = animalLookupDetailService.selectAnimalLookupDetail();
		model.addAttribute("animalLookupDetail", animalLookupDetail);
		log.info("selectAnimalLookupDetail 컨트롤러 : {}", animalLookupDetail);
		return "animallookupdetail";
	}
}
