package kr.human.anihospital.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnimalLookupDetailVO {
	private int seqAnimal;
	private int seqDiagnosis;
	private String animalName;
	private String diagnosisSymptom;
	private String animalHospitalName;
	private String diagnosisDate;
}
