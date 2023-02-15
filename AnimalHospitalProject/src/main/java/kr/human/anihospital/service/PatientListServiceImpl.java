package kr.human.anihospital.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import kr.human.anihospital.mapper.PatientListMapper;
import kr.human.anihospital.vo.PatientListVO;
import lombok.extern.slf4j.Slf4j;

@Service("PatientListService")
public class PatientListServiceImpl implements PatientListService {

	@Autowired
	PatientListMapper patientListMapper;

	@Override
	public List<PatientListVO> selectPatientList() {
		List<PatientListVO> patientList = null;
		try {
			patientList = patientListMapper.selectPatientList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return patientList;
	}

}
