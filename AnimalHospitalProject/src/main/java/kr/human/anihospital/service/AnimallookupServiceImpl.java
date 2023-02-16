package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.AnimallookupMapper;
import kr.human.anihospital.vo.AnimallookupVO;
import lombok.extern.slf4j.Slf4j;

@Service("AnimallookupService")
@Slf4j
public class AnimallookupServiceImpl implements AnimallookupService{
	
	@Autowired
	AnimallookupMapper animallookupMapper;

	@Override
	public List<AnimallookupVO> selectAnimallookup() {
		List<AnimallookupVO> animallookup = null;
		try {
			animallookup = animallookupMapper.selectAnimallookup();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("animallookupMapper에서 넘어온 값(서비스) : {}", animallookup);
		return animallookup;
	}
}
