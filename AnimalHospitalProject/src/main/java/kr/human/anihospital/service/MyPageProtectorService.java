package kr.human.anihospital.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.MyPageProtectorMapper;
import kr.human.anihospital.vo.OneProtectorPatientListVO;
import kr.human.anihospital.vo.PatientDiagnosisListVO;
import kr.human.anihospital.vo.OneProtectorPostscriptListVO;
import kr.human.anihospital.vo.ProtectorVO;
import lombok.extern.slf4j.Slf4j;

@Service("MyPageProtectorService")
@Slf4j
public class MyPageProtectorService {
	// selectAll 매퍼
	@Autowired
	MyPageProtectorMapper myPageProtectorMapper;
	
	// 모든 보호자 정보 조회할 메서드
	public ProtectorVO selectProtector(int seqProtector) {
		ProtectorVO vo = new ProtectorVO();
		try {
			vo = myPageProtectorMapper.selectProtector(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	// 보호자 정보 수정할 메서드
	public void updateProtector(Map<String, Object> map) {
		try {
			myPageProtectorMapper.updateProtector(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 보호자의 모든 환자 이전 진료 내역 조회할 메서드
	public List<PatientDiagnosisListVO> selectPatientDiagnosisList(int seqProtector) {
		List<PatientDiagnosisListVO> patientDiagnosisList = null;
		try {
			patientDiagnosisList = myPageProtectorMapper.selectPatientDiagnosisList(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return patientDiagnosisList;
	}
	//보호자의 환자 리스트 조회할 메서드
	public List<OneProtectorPatientListVO> selectOneProtectorPatientList (int seqProtector) {
		List<OneProtectorPatientListVO> oneProtectorPatientListVO = null;
		log.info("컨트롤러에서 넘어온 null 값 {}", oneProtectorPatientListVO);
		try {
			oneProtectorPatientListVO = myPageProtectorMapper.selectOneProtectorPatientList(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("매퍼에서 넘어온 값 {}", oneProtectorPatientListVO);
		return oneProtectorPatientListVO;
	}
	
	// 리스트 조회할 메서드
	public List<OneProtectorPostscriptListVO> selectOneProtectorPostcriptList (int seqProtector){
		List<OneProtectorPostscriptListVO> oneProtectorPostscriptListVO = null;
		log.info("컨트롤러에서 넘어온 null 값 {}", oneProtectorPostscriptListVO);
		try {
			oneProtectorPostscriptListVO = myPageProtectorMapper.selectOneProtectorPostcriptList(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("매퍼에서 넘어온 값 {}", oneProtectorPostscriptListVO);
		return oneProtectorPostscriptListVO;
		
	}
	
}
