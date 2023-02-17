package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.DiagnosisVO;
import kr.human.anihospital.vo.MedicineVO;

public interface DiagnosisService {
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) throws Exception;
	List<DiagnosisDetailInMedicineVO> selectDiagnosisDetailInMedicine() throws Exception;
}
