package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnimallookupVO {
	private int seqDiagnosis;
	private String animalName;
	private String diagnosisSymptom;
	private String animalHospitalName;
	private Date diagnosisDate;
}
