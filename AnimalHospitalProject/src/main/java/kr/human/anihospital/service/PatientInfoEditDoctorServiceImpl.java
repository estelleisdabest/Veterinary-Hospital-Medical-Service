package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PatientInfoEditDoctorMapper;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;

@Service("PatientInfoEditDoctorService")
@Slf4j
public class PatientInfoEditDoctorServiceImpl implements PatientInfoEditDoctorService {
	
	@Autowired
	PatientInfoEditDoctorMapper patientInfoEditDoctorMapper;

	// 의사가 환자 정보를 수정
	public void updateAnimalDoctor(AnimalVO animalVO) throws Exception {
		log.info("PatientInfoEditDoctorService 수정값 : {}", animalVO);
		patientInfoEditDoctorMapper.updateAnimalDoctor(animalVO);
		log.info(animalVO.getAnimalType() + animalVO.getAnimalSize() + animalVO.getAnimalWeight() + animalVO.getAnimalImportantSymptom());
	}
}
