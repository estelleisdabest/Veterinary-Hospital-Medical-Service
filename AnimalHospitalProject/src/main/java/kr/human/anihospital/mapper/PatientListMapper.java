package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalVO;

@Mapper
public interface PatientListMapper {
	List<String> selectPatientList(List<String> aniList) throws Exception;
}
