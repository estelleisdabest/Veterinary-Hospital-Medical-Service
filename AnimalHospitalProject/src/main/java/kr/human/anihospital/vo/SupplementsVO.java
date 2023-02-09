package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupplementsVO {
	private int seqSupplements;
	private String supplementsName;
	private String supplementsFamily;
	private String supplementsCompany;
	private Date supplementsManufactureDate;
	private String supplementsSideEffect;
	private Date supplementsUpdateDate;
}
