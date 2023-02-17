package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DiagnosisDetailInMedicineVO {
	private int seqDiagnosis;
	private String diagnosisDate;
	private String animalHospitalName;
	private int seqDoctor;
	private String doctorName;
	private String animalName;
	private String diagnosisSymptom;
	private String medicineName;
	private String medicineManufactureDate;
	private String medicineDetailName;
	private String medicineMedicationGuide;
	private String medicineSideEffect;
}
