package kr.human.anihospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.human.anihospital.mapper.AnimalLookupDetailMapper;
import kr.human.anihospital.vo.AnimalLookupDetailVO;
import lombok.extern.slf4j.Slf4j;

@Service("AnimallookupdetailService")
@Slf4j
public class AnimalLookupDetailServiceImpl implements AnimalLookupDetailService{
	
	@Autowired
	AnimalLookupDetailMapper animalLookupDetailMapper;

	@Override
	public List<AnimalLookupDetailVO> selectAnimalLookupDetail() {
		List<AnimalLookupDetailVO> animalLookupDetail = null;
		try {
			animalLookupDetail = animalLookupDetailMapper.selectAnimalLookupDetail();
		}catch (Exception e) {
			e.printStackTrace();
		}
		log.info("animalLookupDetailMapper에서 넘어온 값(서비스) : {}", animalLookupDetail);
		return animalLookupDetail;
	}
}
