package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.DiagnosisAddMapper;
import kr.human.anihospital.vo.DiagnosisAddVO;
import kr.human.anihospital.vo.PatientInfoVO;
import kr.human.anihospital.vo.patientInfoDiagnosisListVO;
import lombok.extern.slf4j.Slf4j;

@Service("DiagnosisAddService")
@Slf4j
public class DiagnosisAddServiceImpl implements DiagnosisAddService {

	@Autowired
	DiagnosisAddMapper diagnosisAddMapper;
	
	// 이전진료내역
	@Override
	public List<patientInfoDiagnosisListVO> selectPatientInfoDiagnosis() {
		List<patientInfoDiagnosisListVO> pidliat = null;
		try {
			pidliat = diagnosisAddMapper.selectPatientInfoDiagnosis();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("patientInfoMapper에서 넘어온 값(서비스) : {}", pidliat);
		return pidliat;
	}

	// 환자 정보
	@Override
	public PatientInfoVO selectPatientInfo() {
		PatientInfoVO patientInfoVO = null;
		try {
			patientInfoVO = diagnosisAddMapper.selectPatientInfo();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectPatientInfo mapper에서 넘어온 값(서비스) : {}", patientInfoVO);
		return patientInfoVO ;
	}
	
	// insert할 진료내용
	@Override
	public void insertDiagnosis(DiagnosisAddVO diagnosisAddVO) {
		try {
			log.info("컨트롤러에서 넘어온 값(서비스) : {}", diagnosisAddVO);
			diagnosisAddMapper.insertDiagnosis(diagnosisAddVO);
			log.info("매퍼에서 넘어온 값(서비스) : {}", diagnosisAddVO);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
  
	// 주의사항 입력 내용
	@Override
	public void updateProtectorImportantPoint(DiagnosisAddVO diagnosisAddVO) {
		try {
			log.info("서비스에서 받은 값 : {}", diagnosisAddVO);
			diagnosisAddMapper.updateProtectorImportantPoint(diagnosisAddVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
