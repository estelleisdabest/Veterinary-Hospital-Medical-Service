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
	//----------------------------------------------------------------------------------------------------
	// 한 명의 보호자에 따른 특정 환자의 진료내역 리스트를 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	public List<AnimalLookupDetailVO> selectAnimalLookupDetail(int seqAnimal, int seqProtector) {
		// 특정 환자 진료내역 리스트를 Mapper에 넘겨주기
		List<AnimalLookupDetailVO> animalLookupDetail = null;
		try {
			// Mapper에 SQL 실행 시 필요한 데이터 넘겨주기 및 실행할 메서드 부르기
			animalLookupDetail = animalLookupDetailMapper.selectAnimalLookupDetail(seqAnimal, seqProtector);
		}catch (Exception e) {
			e.printStackTrace();
		}
		// Mapper가 실행되고 나서 가져온 데이터 확인하기
		log.info("animalLookupDetailMapper에서 넘어온 값(서비스) : {}", animalLookupDetail);
		return animalLookupDetail;
	}
}
