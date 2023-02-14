package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.HospitalAddService;
import kr.human.anihospital.vo.AnimalHospitalVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HospitalAddController {

	@Autowired
	HospitalAddService hospitalAddService;

	@PostMapping("/hospitalAdd")
	public String insertAnimalHospital(@RequestParam Map<String, String> animalHospitalMap, Model  model) throws Exception {
		log.info("받은 값 : {}", animalHospitalMap);
		AnimalHospitalVO animalHospitalVO = new AnimalHospitalVO();
		animalHospitalVO.setSeqDoctor(1);
		animalHospitalVO.setAnimalHospitalName(animalHospitalMap.get("animalHospitalName"));
		animalHospitalVO.setAnimalHospitalAddress(animalHospitalMap.get("animalHospitalAddress") + animalHospitalMap.get("animalHospitalAddressDetail"));
		animalHospitalVO.setAnimalHospitalPhoneNo(animalHospitalMap.get("animalHospitalPhoneNo"));
		animalHospitalVO.setHospitalLocationLatitude(animalHospitalMap.get("hospitalLocationLatitude"));
		animalHospitalVO.setHospitalLocationLongitude(animalHospitalMap.get("hospitalLocationLongitude"));
		hospitalAddService.insertAnimalHospitalInfo(animalHospitalVO);
		return "hospitalMap";
	}
}
