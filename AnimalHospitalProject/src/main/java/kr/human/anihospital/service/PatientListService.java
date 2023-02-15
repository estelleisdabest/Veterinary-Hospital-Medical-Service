package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.PatientListVO;

public interface PatientListService {
	List<PatientListVO> selectPatientList() throws Exception;
}
