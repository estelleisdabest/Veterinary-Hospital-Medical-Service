package kr.human.anihospital.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeOneDetailVO {
	private int seqNotice;
	private String doctorName;
	private String animalHospitalName;
	private String noticeUpdateDate;
	private String noticeSubject;
	private String noticeContent;
}
