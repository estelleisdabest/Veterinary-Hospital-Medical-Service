package kr.human.anihospital.service;

import java.util.List;

import kr.human.anihospital.vo.AnimallookupVO;

public interface AnimallookupService {
	List<AnimallookupVO> selectAnimallookup() throws Exception;
}
