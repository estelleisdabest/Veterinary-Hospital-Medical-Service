package kr.human.anihospital.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PatientInfoEditProtectorMapper;
import kr.human.anihospital.vo.AnimalVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PatientInfoEditProtectorService {

	@Autowired
	PatientInfoEditProtectorMapper patientInfoEditProtectorMapper;
	//----------------------------------------------------------------------------------------------------
	// 환자 정보 수정 페이지에서 사용할 환자 정보
	//----------------------------------------------------------------------------------------------------	
	public AnimalVO selectPatient() {
		AnimalVO animalVO = new AnimalVO();
		try {
			animalVO = patientInfoEditProtectorMapper.selectPatient();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return animalVO;
	}
	
	//----------------------------------------------------------------------------------------------------
	// 보호자의 환자 정보 수정
	//----------------------------------------------------------------------------------------------------
	public void updatePatient(Map<String, Object> map) {
		try {
			patientInfoEditProtectorMapper.updatePatient(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//----------------------------------------------------------------------------------------------------
	// 환자 추가 
	//----------------------------------------------------------------------------------------------------
	public void insertPatient(AnimalVO animalVO){
		try {
			log.info("서비스 받은 값 : {}", animalVO);
			patientInfoEditProtectorMapper.insertPatient(animalVO);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
