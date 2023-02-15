package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.AnimalVO;

public interface PatientListService {
	List<String> selectPatientList(List<String> aniList) throws Exception;
}
