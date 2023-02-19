package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeListVO;

@Mapper
public interface NoticeDetailMapper {
	//----------------------------------------------------------------------------------------------------
	// 공지를 삭제해줄 메서드
	//----------------------------------------------------------------------------------------------------
	void deleteNotice(int seqNotice) throws Exception;
	
	//----------------------------------------------------------------------------------------------------
	// 공지 상세 내용을 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	NoticeListVO selectNotice(int seqNotice) throws Exception;
}