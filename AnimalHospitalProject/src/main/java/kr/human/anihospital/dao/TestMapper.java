package kr.human.anihospital.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestMapper {
	int selectTotalCount();
}
