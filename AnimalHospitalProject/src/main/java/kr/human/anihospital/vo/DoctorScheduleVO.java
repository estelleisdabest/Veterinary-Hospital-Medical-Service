package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DoctorScheduleVO {
	private int seqDoctorSchedule;
	private int seqDoctor;
	private Date scheduleDoctorHoliday;
	private String scheduleDoctorContent;
	private Date scheduleDoctorWriteDate;
	private Date scheduleDoctorUpdateDate;
}
