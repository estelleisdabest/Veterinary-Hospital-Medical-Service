package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeVO;

@Mapper
public interface NoticeAddMapper {
	//----------------------------------------------------------------------------------------------------
	// 공지를 추가해줄 메서드
	//----------------------------------------------------------------------------------------------------
	void insertNotice(NoticeVO noticeVO) throws SQLException;
}
