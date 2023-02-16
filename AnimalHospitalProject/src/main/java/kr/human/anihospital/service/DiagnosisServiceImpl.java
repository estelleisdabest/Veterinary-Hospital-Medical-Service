package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.DiagnosisMapper;
import kr.human.anihospital.vo.DiagnosisAnimalVO;
import lombok.extern.slf4j.Slf4j;

@Service("DiagnosisService")
@Slf4j
public class DiagnosisServiceImpl implements DiagnosisService{
	
	@Autowired
	DiagnosisMapper diagnosisMapper;
	
	@Override
	public DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) {
		DiagnosisAnimalVO diagnosisAnimalVO = null;
		try {
			diagnosisAnimalVO = diagnosisMapper.selectDiagnosisAnimalInfo(seqDiagnosis);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectAnimal 서비스 : {}", diagnosisAnimalVO);
		return diagnosisAnimalVO;
	}
}
