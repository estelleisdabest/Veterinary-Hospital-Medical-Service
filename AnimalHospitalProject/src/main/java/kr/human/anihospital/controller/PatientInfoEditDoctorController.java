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

	@PostMapping("/patientInfoEditDoctor")
	public String patientInfoEditDoctor(@RequestParam int seqAnimal, Model model) throws Exception {
		AnimalVO animalVO = new AnimalVO();
		animalVO = patientInfoEditDoctorService.patientInfoDoctor(seqAnimal);
		log.info("patientInfo에서 받은 seq : {}", seqAnimal);
		model.addAttribute("animalVO", animalVO);
		log.info("animalVO : {}", animalVO);
		return "patientInfoEditDoctor";
	}

	@PostMapping("/patientInfoEditDoctorOk")
	public String patientInfoEditDoctorOk(@RequestParam Map<String, Object> map) throws Exception {
		log.info("수정값 : {} ", map);
		patientInfoEditDoctorService.updateAnimalDoctor(map);
		int seqAnimal = Integer.parseInt(String.valueOf(map.get("seqAnimal")));
		return "redirect:patientInfo?seqAnimal="+seqAnimal;
	}
}
