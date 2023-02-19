package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalLookupDetailVO;

@Mapper
public interface AnimalLookupDetailMapper {
	//----------------------------------------------------------------------------------------------------
	// 한 명의 보호자에 따른 특정 환자의 진료내역 리스트를 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	List<AnimalLookupDetailVO> selectAnimalLookupDetail(int seqAnimal, int seqProtector) throws Exception;
}
