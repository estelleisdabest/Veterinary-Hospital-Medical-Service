package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostscriptVO {
	private int seqPostscript;
	private int seqProtector;
	private int seqDoctor;
	private int seqDiagnosis;
	private int seqAnimal;
	private Date postscriptReportingDate;
	private String postscriptContent;
	private int postscriptSatisfaction;
	private Date postscriptUpdateDate;
}
