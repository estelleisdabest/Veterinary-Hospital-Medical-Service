package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.PostscriptVO;

@Mapper
public interface PostscriptSaveMapper {
	//----------------------------------------------------------------------------------------------------
	// 후기 리스트를 가져올 메서드
	//----------------------------------------------------------------------------------------------------
	void insertPostscript(PostscriptVO postscriptVO ) throws Exception;
}
