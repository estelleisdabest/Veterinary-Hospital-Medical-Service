package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PatientInfoMapper;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PatientInfoServiceImpl implements PatientInfoService {
	
	@Autowired
	PatientInfoMapper patientInfoMapper;
	
	@Override
	public List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() {
		List<patientInfoDiagnosisListVO> pidliat = null;
		try {
			pidliat = patientInfoMapper.selectPatientInfoDiagnosis();
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("patientInfoMapper에서 넘어온 값(서비스) : {}", pidliat);
		return pidliat;
	}
}
