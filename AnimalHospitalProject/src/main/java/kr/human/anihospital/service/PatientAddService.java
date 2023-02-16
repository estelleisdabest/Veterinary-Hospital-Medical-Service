package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.PatientAddMapper;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PatientAddService{
	
	@Autowired
	PatientAddMapper patientAddMapper;

	public void insertPatient(AnimalVO animalVO){
		try {
			log.info("서비스 받은 값 : {}", animalVO);
			patientAddMapper.insertPatient(animalVO);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
