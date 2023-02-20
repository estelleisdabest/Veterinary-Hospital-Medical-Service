package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;

public interface DiagnosisService {
	//----------------------------------------------------------------------------------------------------
	// 진료내역에 동물정보를 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) throws Exception;
	//----------------------------------------------------------------------------------------------------
	// 진료내역에 복용한 약정보를 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	List<DiagnosisDetailInMedicineVO> selectDiagnosisDetailInMedicine(int seqDiagnosis) throws Exception;
	//----------------------------------------------------------------------------------------------------
	// 진료내역에 후기를 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	postscriptOneDiagnosisVO selectPostscriptOneDiagnosis() throws Exception;
	//----------------------------------------------------------------------------------------------------
	// 진료내역에서 후기를 삭제할 메서드
	//----------------------------------------------------------------------------------------------------
	void deletePostscript(int seqPostscript) throws Exception;
}
