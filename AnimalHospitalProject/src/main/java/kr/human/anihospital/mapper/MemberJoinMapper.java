package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.ProtectorVO;

// 회원가입을 위한 Mapper
@Mapper
public interface MemberJoinMapper {

	void protectorMemberJoin(ProtectorVO protectorVO) throws SQLException;
}
