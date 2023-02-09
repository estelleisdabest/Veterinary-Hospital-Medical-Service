package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {
	private int seqNotice;
	private int seqDoctor;
	private int seqAnimalHospital;
	private String noticeSubject;
	private String noticeContent;
	private Date noticeWriteDate;
	private Date noticeUpdateDate;
}
