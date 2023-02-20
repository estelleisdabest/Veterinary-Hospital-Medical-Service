package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;

public interface DiagnosisService {
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) throws Exception;
	List<DiagnosisDetailInMedicineVO> selectDiagnosisDetailInMedicine(int seqDiagnosis) throws Exception;
	postscriptOneDiagnosisVO selectPostscriptOneDiagnosis() throws Exception;
	void deletePostscript(int seqPostscript) throws Exception;
}
