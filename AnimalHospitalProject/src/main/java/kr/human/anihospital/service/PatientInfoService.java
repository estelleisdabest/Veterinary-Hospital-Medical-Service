package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

public interface PatientInfoService {
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;
}
