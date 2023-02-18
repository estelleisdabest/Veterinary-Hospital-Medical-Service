package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.HospitalService;
import kr.human.anihospital.vo.AnimalHospitalVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HospitalController {

	@Autowired
	HospitalService hospitalService;

	@PostMapping("/hospitalAddOk")
	public String insertAnimalHospital(@RequestParam Map<String, String> animalHospitalMap, Model model)
			throws Exception {
		log.info("받은 값 : {}", animalHospitalMap);
		AnimalHospitalVO animalHospitalVO = new AnimalHospitalVO();
		animalHospitalVO.setSeqDoctor(1);
		animalHospitalVO.setAnimalHospitalName(animalHospitalMap.get("animalHospitalName"));
		animalHospitalVO.setAnimalHospitalAddress(
				animalHospitalMap.get("animalHospitalAddress") + animalHospitalMap.get("animalHospitalAddressDetail"));
		animalHospitalVO.setAnimalHospitalPhoneNo(animalHospitalMap.get("animalHospitalPhoneNo"));
		animalHospitalVO.setHospitalLocationLatitude(animalHospitalMap.get("hospitalLocationLatitude"));
		animalHospitalVO.setHospitalLocationLongitude(animalHospitalMap.get("hospitalLocationLongitude"));
		hospitalService.insertAnimalHospitalInfo(animalHospitalVO);
		return "redirect:hospitalMap";
	}

	@PostMapping("/hospitalEdit")
	public String hospitalEdit(@RequestParam int seq, Model model) {
		try {
			model.addAttribute("model", hospitalService.selectHospital(seq));
			model.addAttribute("seq", seq);
			log.info("seq로 읽은 값 : {}", hospitalService.selectHospital(seq));
			log.info("seq : {}", seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "hospitalEdit";
	}

	@PostMapping("/hospitalEditOk")
	public String updateAnimalHospital(@RequestParam Map<String, String> animalHospitalMap, Model model)
			throws Exception {
		log.info("받은 값 : {}", animalHospitalMap);
		AnimalHospitalVO animalHospitalVO = new AnimalHospitalVO();
		animalHospitalVO.setSeqAnimalHospital(Integer.parseInt(animalHospitalMap.get("seq")));
		animalHospitalVO.setSeqDoctor(Integer.parseInt(animalHospitalMap.get("seqDoctor")));
		animalHospitalVO.setAnimalHospitalName(animalHospitalMap.get("animalHospitalName"));
		animalHospitalVO.setAnimalHospitalAddress(
				animalHospitalMap.get("animalHospitalAddress") + animalHospitalMap.get("animalHospitalAddressDetail"));
		animalHospitalVO.setAnimalHospitalPhoneNo(animalHospitalMap.get("animalHospitalPhoneNo"));
		animalHospitalVO.setHospitalLocationLatitude(animalHospitalMap.get("hospitalLocationLatitude"));
		animalHospitalVO.setHospitalLocationLongitude(animalHospitalMap.get("hospitalLocationLongitude"));
		hospitalService.updateAnimalHospitalInfo(animalHospitalVO);
		return "redirect:hospitalMap";
	}
}
