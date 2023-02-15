package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.HospitalAddMapper;
import kr.human.anihospital.mapper.HospitalEditMapper;
import kr.human.anihospital.vo.AnimalHospitalVO;
import lombok.extern.slf4j.Slf4j;

@Service("HospitalEditService")
@Slf4j
public class HospitalEditServiceImpl implements HospitalEditService {
	
	@Autowired
	HospitalEditMapper hospitalEditMapper;
	
	@Autowired
	PlatformTransactionManager manager;

	@Override
	public void updateAnimalHospitalInfo(AnimalHospitalVO animalHospitalVO) throws Exception {
		hospitalEditMapper.updateAnimalHospital(animalHospitalVO);
		log.info(animalHospitalVO.getSeqDoctor() + animalHospitalVO.getAnimalHospitalName() + animalHospitalVO.getAnimalHospitalAddress() + animalHospitalVO.getAnimalHospitalPhoneNo());
	}
}
