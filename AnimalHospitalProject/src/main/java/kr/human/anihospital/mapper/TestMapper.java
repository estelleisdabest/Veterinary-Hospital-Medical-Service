package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestMapper {
	int selectTotalCount();
}
