package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.DiagnosisAddMapper;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;
@Service("diagnosisAddService")
@Slf4j
public class DiagnosisAddServiceImpl implements DiagnosisAddService{

	@Autowired
	DiagnosisAddMapper diagnosisAddMapper;

	@Override
	public List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() {
		List<patientInfoDiagnosisListVO> pidliat = null;
		try {
			pidliat = diagnosisAddMapper.selectPatientInfoDiagnosis();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("patientInfoMapper에서 넘어온 값(서비스) : {}", pidliat);
		return pidliat;
	}

	
	@Override
	public PatientInfoVO selectPatientInfo() {
		PatientInfoVO patientInfoVO = null;
		try {
			patientInfoVO = diagnosisAddMapper.selectPatientInfo();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectPatientInfo mapper에서 넘어온 값(서비스) : {}", patientInfoVO);
		return patientInfoVO ;
	}
	
}
