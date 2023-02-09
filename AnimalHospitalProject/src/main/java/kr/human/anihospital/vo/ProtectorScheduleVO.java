package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProtectorScheduleVO {
	private int seqProtectorSchedule;
	private int seqProtector;
	private int seqAnimal;
	private int seqDoctorSchedule;
	private Date scheduleProtectorHoliday;
	private String scheduleProtectorContent;
	private Date scheduleProtectorWriteDate;
	private Date scheduleProtectorUpdateDate;
}
