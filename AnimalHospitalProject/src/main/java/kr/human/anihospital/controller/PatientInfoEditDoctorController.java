package kr.human.anihospital.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.PatientInfoEditDoctorService;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PatientInfoEditDoctorController {
	
	@Autowired
	PatientInfoEditDoctorService patientInfoEditDoctorService;
	
	// 나중에 seq 처리 해줘야함
	@PostMapping("/patientInfoEditDoctor")
	public String patientInfoEditDoctor(@RequestParam Map<String, String> animalMap, Model model) throws Exception {
		log.info(" PatientInfoEditDoctorController 수정값 : {}", animalMap);
		AnimalVO animalVO = new AnimalVO();
		animalVO.setSeqAnimal(56);
		animalVO.setSeqProtector(1);
		animalVO.setSeqDoctor(1);
		animalVO.setAnimalName(animalMap.get("animalName"));
		animalVO.setAnimalType(animalMap.get("animalType"));
		animalVO.setAnimalSize(animalMap.get("animalSize"));
		animalVO.setAnimalWeight(Float.parseFloat(animalMap.get("animalWeight")));
		animalVO.setAnimalGender(Boolean.parseBoolean(animalMap.get("animalGender")));
		animalVO.setAnimalImportantSymptom(animalMap.get("animalImportantSymptom"));
		patientInfoEditDoctorService.updateAnimalDoctor(animalVO);
		return "patientInfo";
	}
}
