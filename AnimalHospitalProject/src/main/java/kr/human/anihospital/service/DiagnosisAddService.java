package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.DiagnosisAddVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

public interface DiagnosisAddService {
	// 이전진료내역
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;
	// 환자 정보
	PatientInfoVO selectPatientInfo() throws Exception;
	// insert할 진료내용
	void insertDiagnosis(DiagnosisAddVO diagnosisAddVO) throws Exception;
	// 주의사항 수정
	void updateProtectorImportantPoint(DiagnosisAddVO diagnosisAddVO) throws Exception;
}
