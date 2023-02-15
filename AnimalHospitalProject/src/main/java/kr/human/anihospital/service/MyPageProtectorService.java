package kr.human.anihospital.service;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.MyPageProtectorMapper;
import kr.human.anihospital.vo.ProtectorVO;

@Service("MyPageProtectorService")
public class MyPageProtectorService {

	@Autowired
	MyPageProtectorMapper myPageProtectorMapper;
	
	public ProtectorVO selectProtector(int seqProtector) {
		ProtectorVO vo = null;
		try {
			vo = myPageProtectorMapper.selectProtector(seqProtector);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date = sdf.format(vo.getProtectorAge());
			vo.setProtectorAge(sdf.parse(date));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
