package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.patientInfoDiagnosisListVO;

@Mapper
public interface PatientInfoMapper {
	List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() throws Exception;
}
