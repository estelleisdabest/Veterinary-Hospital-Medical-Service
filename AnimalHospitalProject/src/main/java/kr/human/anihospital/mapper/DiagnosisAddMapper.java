package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.DiagnosisAddVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

@Mapper
public interface DiagnosisAddMapper {
	// ----------------------------------------------------------------------------------------------
	// 이전진료내역을 가져올 메서드
	// ----------------------------------------------------------------------------------------------
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;

	// ----------------------------------------------------------------------------------------------
	// 환자 정보을 가져올 메서드
	// ----------------------------------------------------------------------------------------------
	PatientInfoVO selectPatientInfo() throws Exception;
	
	// ----------------------------------------------------------------------------------------------
	// 진료내용을 추가할 진료내용
	// ----------------------------------------------------------------------------------------------
	void insertDiagnosis(DiagnosisAddVO diagnosisAddVO) throws Exception;
	
	// ----------------------------------------------------------------------------------------------
	// 주의사항 업데이트 내용
	// ----------------------------------------------------------------------------------------------
	void updateProtectorImportantPoint(DiagnosisAddVO diagnosisAddVO) throws Exception;
}
