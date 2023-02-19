package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.AnimalLookupDetailVO;

public interface AnimalLookupDetailService {
	List<AnimalLookupDetailVO> selectAnimalLookupDetail() throws Exception;
}
