package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalVO;

@Mapper
public interface PatientAddMapper {
	void insertPatient(AnimalVO animalVO) throws SQLException;
}
