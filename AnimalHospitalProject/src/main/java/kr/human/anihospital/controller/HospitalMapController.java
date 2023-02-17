package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.HospitalMapService;
import kr.human.anihospital.vo.AnimalHospitalVO;

@RestController
public class HospitalMapController {

	@Autowired
	HospitalMapService hospitalMapService;
	
	@GetMapping("/hospitalMapRest")
	public List<AnimalHospitalVO> hospitalMapRest() {
		List<AnimalHospitalVO> list = null;
		list = hospitalMapService.selectMap();
		return list;
	}
}
