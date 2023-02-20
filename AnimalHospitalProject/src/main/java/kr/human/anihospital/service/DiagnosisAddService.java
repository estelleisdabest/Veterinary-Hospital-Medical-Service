package kr.human.anihospital.service;

import java.util.List;


import kr.human.anihospital.vo.DiagnosisAddVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

public interface DiagnosisAddService {
	// ----------------------------------------------------------------------------------------------
	// 이전진료내역을 표시해줄 메서드
	// ----------------------------------------------------------------------------------------------
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;
	
	// ----------------------------------------------------------------------------------------------
	// 환자 정보을 표시해줄 메서드
	// ----------------------------------------------------------------------------------------------
	PatientInfoVO selectPatientInfo() throws Exception;
	
	// ----------------------------------------------------------------------------------------------
	// 진료내용을 추가해줄 메서드
	// ----------------------------------------------------------------------------------------------
	void insertDiagnosis(DiagnosisAddVO diagnosisAddVO) throws Exception;
	
	// ----------------------------------------------------------------------------------------------
	// 주의사항 수정 및 수정 내용을 화면에 돌려줄 메서드
	// ----------------------------------------------------------------------------------------------
	void updateProtectorImportantPoint(DiagnosisAddVO diagnosisAddVO) throws Exception;
}
