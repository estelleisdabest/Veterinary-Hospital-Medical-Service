package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeListVO;

@Mapper
public interface NoticeMapper {
	
	//----------------------------------------------------------------------------------------------------
	// 모든 공지 내용을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	List<NoticeListVO> selectNoticeList() throws Exception;
}
