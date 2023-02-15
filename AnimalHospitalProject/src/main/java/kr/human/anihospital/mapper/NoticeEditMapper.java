package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeVO;

@Mapper
public interface NoticeEditMapper {
	void updateNotice(NoticeVO noticeVO) throws Exception;
}
