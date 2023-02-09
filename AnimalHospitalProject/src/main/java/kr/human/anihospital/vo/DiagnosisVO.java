package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DiagnosisVO {
	private int seqDiagnosis;
	private int seqDoctor;
	private int seqAnimal;
	private int seqProtector;
	private int seqMedicine;
	private int seqAnimalHospital;
	private Date diagnosisDate;
	private String diagnosisSymptom;
	private Date diagnosisUpdateDate;
	private Date medicineUpdateDate;
	private Date nextDiagnosisDate;
}
