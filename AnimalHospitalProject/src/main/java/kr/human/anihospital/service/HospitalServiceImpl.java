package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.HospitalMapper;
import kr.human.anihospital.vo.AnimalHospitalVO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class HospitalServiceImpl implements HospitalService {
	@Autowired
	HospitalMapper hospitalMapper;
	
	@Autowired
	PlatformTransactionManager manager;

	@Override
	public void insertAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception {
		hospitalMapper.insertAnimalHospital(animalHospitalVO);
		log.info(animalHospitalVO.getSeqDoctor() + animalHospitalVO.getAnimalHospitalName()
				+ animalHospitalVO.getAnimalHospitalAddress() + animalHospitalVO.getAnimalHospitalPhoneNo());
	}
	@Override
	public void updateAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception {
		hospitalMapper.updateAnimalHospital(animalHospitalVO);
		log.info(animalHospitalVO.getSeqDoctor() + animalHospitalVO.getAnimalHospitalName()
				+ animalHospitalVO.getAnimalHospitalAddress() + animalHospitalVO.getAnimalHospitalPhoneNo());
	}

	@Override
	public AnimalHospitalVO selectHospital(int seq) throws Exception {
		AnimalHospitalVO animalHospitalVO = new AnimalHospitalVO();
		animalHospitalVO = hospitalMapper.selectHospital(seq);
		return animalHospitalVO;
	}

}
