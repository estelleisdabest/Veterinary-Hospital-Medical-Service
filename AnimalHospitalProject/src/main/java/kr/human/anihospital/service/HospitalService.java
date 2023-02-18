package kr.human.anihospital.service;

import kr.human.anihospital.vo.AnimalHospitalVO;

public interface HospitalService {
	AnimalHospitalVO selectHospital(int seq) throws Exception;

	void insertAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception;

	void updateAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception;
}
