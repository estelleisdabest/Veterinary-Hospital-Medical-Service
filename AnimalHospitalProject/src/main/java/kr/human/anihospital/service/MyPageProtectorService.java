package kr.human.anihospital.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.MyPageProtectorMapper;
import kr.human.anihospital.vo.PatientDiagnosisListVO;
import kr.human.anihospital.vo.ProtectorVO;
import lombok.extern.slf4j.Slf4j;

@Service("MyPageProtectorService")
@Slf4j
public class MyPageProtectorService {

	@Autowired
	MyPageProtectorMapper myPageProtectorMapper;
	
	// 보호자 정보 조회
	public ProtectorVO selectProtector(int seqProtector) {
		ProtectorVO vo = new ProtectorVO();
		try {
			vo = myPageProtectorMapper.selectProtector(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	// 보호자 정보 수정
	public void updateProtector(Map<String, Object> map) {
		try {
			myPageProtectorMapper.updateProtector(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 보호자의 모든 환자 이전 진료 내역 조회
	public List<PatientDiagnosisListVO> selectPatientDiagnosisList(int seqProtector) {
		List<PatientDiagnosisListVO> patientDiagnosisList = null;
		try {
			patientDiagnosisList = myPageProtectorMapper.selectPatientDiagnosisList(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return patientDiagnosisList;
	}
	
}
