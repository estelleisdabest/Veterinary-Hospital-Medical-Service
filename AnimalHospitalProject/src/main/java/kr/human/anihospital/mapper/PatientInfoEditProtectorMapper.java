package kr.human.anihospital.mapper;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalVO;

@Mapper
public interface PatientInfoEditProtectorMapper {
	
	AnimalVO selectPatient() throws SQLException;
	
	void updatePatient(Map<String, Object> map) throws SQLException;
}
