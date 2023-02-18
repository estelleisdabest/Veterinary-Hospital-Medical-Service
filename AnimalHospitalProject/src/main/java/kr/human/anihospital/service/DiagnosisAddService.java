package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

public interface DiagnosisAddService {
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;
	PatientInfoVO selectPatientInfo() throws Exception;
}
