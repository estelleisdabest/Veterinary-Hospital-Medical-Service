package kr.human.anihospital.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.PatientDiagnosisListVO;
import kr.human.anihospital.vo.ProtectorVO;

@Mapper
public interface MyPageProtectorMapper {
	
	ProtectorVO selectProtector(int seqProtector) throws SQLException;
	List<PatientDiagnosisListVO> selectPatientDiagnosisList(int seqProtector) throws SQLException;
	void updateProtector(Map<String, Object> map) throws SQLException;
}
