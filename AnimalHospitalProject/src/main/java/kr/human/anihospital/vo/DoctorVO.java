package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DoctorVO {
	private int seqDoctor;
	private String doctorId;
	private String doctorPassword;
	private String doctorName;
	private Date doctorWorkYear;
	private Date doctorAge;
	private Date doctorGender;
	private String doctorAddress;
	private String doctorPhoneNo;
	private int doctorRegistrationNumber;
	private String doctorPicture;
	private String doctorSay;
	private boolean doctorRole;
	private String doctorWorkSpace;
	private String doctorEducation;
	private Date doctorUpdateDate;
}
