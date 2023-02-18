package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalHospitalVO;

@Mapper
public interface HospitalMapper {
	AnimalHospitalVO selectHospital(int seq) throws SQLException;

	void insertAnimalHospital(AnimalHospitalVO animalHospitalVO) throws Exception;

	void updateAnimalHospital(AnimalHospitalVO animalHospitalVO) throws Exception;
}
