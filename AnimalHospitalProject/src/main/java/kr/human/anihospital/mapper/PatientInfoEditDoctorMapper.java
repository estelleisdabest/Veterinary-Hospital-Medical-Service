package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalVO;

@Mapper
public interface PatientInfoEditDoctorMapper {
	void updateAnimalDoctor(AnimalVO animalVO) throws Exception;
}
