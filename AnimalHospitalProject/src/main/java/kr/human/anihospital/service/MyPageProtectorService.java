package kr.human.anihospital.service;

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
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
