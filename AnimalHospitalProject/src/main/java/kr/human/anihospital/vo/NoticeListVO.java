package kr.human.anihospital.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeListVO {
	private int seqNotice;
	private String noticeSubject;
	private String noticeContent;
	private String animalHospitalName;
	private String doctorName;
	private String noticeUpdateDate;
}
