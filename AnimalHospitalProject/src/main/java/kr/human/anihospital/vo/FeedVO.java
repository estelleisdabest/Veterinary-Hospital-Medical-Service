package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FeedVO {
	private int seqFeed;
	private String feedName;
	private String feedCompany;
	private Date feedManufactureDate;
	private String feedAllergySymptom;
	private String feedSideEffect;
	private Date feedUpdateDate;
}
