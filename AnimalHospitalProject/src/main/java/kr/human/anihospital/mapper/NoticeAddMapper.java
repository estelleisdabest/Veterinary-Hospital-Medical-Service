package kr.human.anihospital.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeVO;

@Mapper
public interface NoticeAddMapper {
	void insertNotice(NoticeVO noticeVO) throws SQLException;
}
