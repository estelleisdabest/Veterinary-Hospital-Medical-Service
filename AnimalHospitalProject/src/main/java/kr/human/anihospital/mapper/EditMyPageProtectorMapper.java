package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.ProtectorVO;

@Mapper
public interface EditMyPageProtectorMapper {
	void updateProtector(ProtectorVO protectorVO ) throws SQLException;
}
