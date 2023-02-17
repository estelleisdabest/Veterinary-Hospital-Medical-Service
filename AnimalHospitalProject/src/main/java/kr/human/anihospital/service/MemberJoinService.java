package kr.human.anihospital.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.MemberJoinMapper;
import kr.human.anihospital.vo.ProtectorVO;

@Service
public class MemberJoinService {

	@Autowired
	MemberJoinMapper memberJoinMapper;

	public void protectorMemberJoin(Map<String, Object> map) {
		ProtectorVO protectorVO = new ProtectorVO();
		try {
			protectorVO.setProtectorId(String.valueOf(map.get("email")));
			protectorVO.setProtectorPassword(String.valueOf(map.get("password")));
			protectorVO.setProtectorName(String.valueOf(map.get("protector_name")));
			protectorVO.setProtectorGender(
					Integer.parseInt(String.valueOf(map.get("protector_gender"))) == 1 ? true : false);
			String dateString = map.get("protector_year") + "-" + map.get("protector_month") + "-"
					+ map.get("protector_date");
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = simpleDateFormat.parse(dateString);
			protectorVO.setProtectorAge(date);
			protectorVO.setProtectorAddress(String.valueOf(map.get("protector_address")));
			protectorVO.setProtectorPhoneNo(String.valueOf(map.get("protector_phoneNumber")));
			memberJoinMapper.protectorMemberJoin(protectorVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
