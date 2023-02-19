package kr.human.anihospital.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.OneProtectorPatientListVO;
import kr.human.anihospital.vo.PatientDiagnosisListVO;
import kr.human.anihospital.vo.OneProtectorPostscriptListVO;
import kr.human.anihospital.vo.ProtectorVO;

@Mapper
public interface MyPageProtectorMapper {

	//----------------------------------------------------------------------------------------------------
	// 보호자정보, 보호자정보수정, 환자정보리스트, 이전 진료 내역리스트, 후기 리스트 메서드
	//----------------------------------------------------------------------------------------------------
	ProtectorVO selectProtector(int seqProtector) throws Exception; 
	List<PatientDiagnosisListVO> selectPatientDiagnosisList(int seqProtector) throws Exception;
	void updateProtector(Map<String, Object> map) throws Exception;
	List<OneProtectorPatientListVO> selectOneProtectorPatientList(int seqProtector) throws Exception;
	List<OneProtectorPostscriptListVO> selectOneProtectorPostcriptList(int seqProtector) throws Exception;
}
