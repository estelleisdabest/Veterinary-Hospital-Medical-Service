package kr.human.anihospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.human.anihospital.service.NaverMapService;
import kr.human.anihospital.vo.AnimalHospitalVO;
import kr.human.anihospital.vo.PharmacyLocationVO;

@RestController
public class NaverMapController {

	@Autowired
	NaverMapService naverMapService;

	@GetMapping("/hospitalMapRest")
	public List<AnimalHospitalVO> hospitalMapRest() {
		List<AnimalHospitalVO> hospitalList = null;
		hospitalList = naverMapService.selectHospitalMap();
		return hospitalList;
	}

	@GetMapping("/pharmacyMapRest")
	public List<PharmacyLocationVO> pharmacyMapRest() {
		List<PharmacyLocationVO> pharmacyList = naverMapService.selectPharmacyMap();
		return pharmacyList;
	}
}
