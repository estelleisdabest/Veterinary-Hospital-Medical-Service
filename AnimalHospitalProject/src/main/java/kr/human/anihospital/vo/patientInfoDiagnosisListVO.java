package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class patientInfoDiagnosisListVO {
	private String animalHospitalName;
	private Date diagnosisDate;
	private String diagnosisSymptom;
}
