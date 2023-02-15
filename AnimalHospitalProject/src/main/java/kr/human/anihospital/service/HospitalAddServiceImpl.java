package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.HospitalAddMapper;
import kr.human.anihospital.vo.AnimalHospitalVO;
import lombok.extern.slf4j.Slf4j;

@Service("HospitalAddService")
@Slf4j
public class HospitalAddServiceImpl implements HospitalAddService {
	@Autowired
	HospitalAddMapper hospitalAddMapper;

	@Override
	public void insertAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception {
		hospitalAddMapper.insertAnimalHospital(animalHospitalVO);
		log.info(animalHospitalVO.getSeqDoctor() + animalHospitalVO.getAnimalHospitalName() + animalHospitalVO.getAnimalHospitalAddress() + animalHospitalVO.getAnimalHospitalPhoneNo());
	}
}
