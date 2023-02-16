package kr.human.anihospital.service;

import kr.human.anihospital.vo.DiagnosisAnimalVO;

public interface DiagnosisService {
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDiagnosis) throws Exception;
}
