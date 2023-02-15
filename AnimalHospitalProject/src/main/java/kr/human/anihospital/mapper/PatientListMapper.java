package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.PatientListVO;

@Mapper
public interface PatientListMapper {
	List<PatientListVO> selectPatientList() throws Exception;
}
