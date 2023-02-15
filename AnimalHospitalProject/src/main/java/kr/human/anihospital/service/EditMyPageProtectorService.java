package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.EditMyPageProtectorMapper;
import kr.human.anihospital.vo.ProtectorVO;

@Service
public class EditMyPageProtectorService {

	@Autowired
	EditMyPageProtectorMapper editMyPageProtectorMapper;
	
	public void updateProtector(ProtectorVO protectorVO) {
		try {
			editMyPageProtectorMapper.updateProtector(protectorVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
