package kr.human.anihospital.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class postscriptOneDiagnosisVO {
	private String postscriptUpdateDate;
	private String animalHospitalName;
	private int postscriptSatisfaction;
	private String postscriptContent;
}
