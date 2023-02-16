package kr.human.anihospital.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.MyPageProtectorMapper;
import kr.human.anihospital.vo.ProtectorVO;

@Service("MyPageProtectorService")
public class MyPageProtectorService {

	@Autowired
	MyPageProtectorMapper myPageProtectorMapper;
	
	// 보호자 정보 조회
	public ProtectorVO selectProtector(int seqProtector) {
		ProtectorVO vo = new ProtectorVO();
		try {
			vo = myPageProtectorMapper.selectProtector(seqProtector);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	// 보호자 정보 수정
	public void updateProtector(Map<String, Object> map) {
		try {
			myPageProtectorMapper.updateProtector(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
