package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.AnimallookupVO;

@Mapper
public interface AnimallookupMapper {
	List<AnimallookupVO> selectAnimallookup() throws Exception;
}
