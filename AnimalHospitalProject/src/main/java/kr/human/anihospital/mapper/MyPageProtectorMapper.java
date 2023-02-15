package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.ProtectorVO;

@Mapper
public interface MyPageProtectorMapper {
	
	ProtectorVO selectProtector(int seqProtector) throws SQLException;
}
