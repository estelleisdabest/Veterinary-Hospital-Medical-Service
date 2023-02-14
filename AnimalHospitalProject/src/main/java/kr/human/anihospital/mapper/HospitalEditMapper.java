package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalHospitalVO;

@Mapper
public interface HospitalEditMapper {
	void updateAnimalHospital(AnimalHospitalVO animalHospitalVO) throws Exception;
}
