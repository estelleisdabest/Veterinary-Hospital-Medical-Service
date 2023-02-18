package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.DiagnosisMapper;
import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;
import lombok.extern.slf4j.Slf4j;

@Service("DiagnosisService")
@Slf4j
public class DiagnosisServiceImpl implements DiagnosisService{
	
	@Autowired
	DiagnosisMapper diagnosisMapper;
	
	// diagnosis(진료기록)화면의 환자 정보 가져오기
	@Override
	public DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) {
		DiagnosisAnimalVO diagnosisAnimalVO = null;
		try {
			diagnosisAnimalVO = diagnosisMapper.selectDiagnosisAnimalInfo(seqDiagnosis);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectDiagnosisAnimalInfo 서비스 : {}", diagnosisAnimalVO);
		return diagnosisAnimalVO;
	}

	// diagnosis(진료기록)화면의 상세 진료 내역 및 처방목록 가져오기
	@Override
	public List<DiagnosisDetailInMedicineVO> selectDiagnosisDetailInMedicine(int seqDiagnosis) {
		List<DiagnosisDetailInMedicineVO> diadetailImMedicineList = null;
		try {
			diadetailImMedicineList = diagnosisMapper.selectDiagnosisDetailInMedicine(seqDiagnosis);
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectDiagnosisDetailInMedicine 서비스 : {}", diadetailImMedicineList);
		return diadetailImMedicineList;
	}
	
	// diagnosis(진료기록)화면의 진료후기 가져오기
	@Override
	public postscriptOneDiagnosisVO selectPostscriptOneDiagnosis() {
		postscriptOneDiagnosisVO postOneDiagnosisVO = null;
		try {
			postOneDiagnosisVO = diagnosisMapper.selectPostscriptOneDiagnosis();
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("selectPostscriptOneDiagnosis 서비스 : {}", postOneDiagnosisVO);
		return postOneDiagnosisVO;
	}
}
