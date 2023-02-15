package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.PatientListMapper;
import lombok.extern.slf4j.Slf4j;

@Service("PatientListService")
@Slf4j
public class PatientListServiceImpl implements PatientListService {

	@Autowired
	PatientListMapper patientListMapper;
	
	@Override
	public List<String> selectPatientList(List<String> aniList) throws Exception {
		log.info("{} 의 list1메서드 호출 : {}", this.getClass().getName(), aniList);
		return patientListMapper.selectPatientList(aniList);
	}
}
