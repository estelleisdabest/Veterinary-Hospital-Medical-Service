package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimalLookupDetailVO;

@Mapper
public interface AnimalLookupDetailMapper {
	List<AnimalLookupDetailVO> selectAnimalLookupDetail() throws Exception;
}
