package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.PostscriptVO;

@Mapper
public interface PostscriptMapper {
	//----------------------------------------------------------------------------------------------------
	// 후기 추가 메서드, 
	//----------------------------------------------------------------------------------------------------
	void insertPostscript(PostscriptVO postscriptVO ) throws Exception;
	//----------------------------------------------------------------------------------------------------
	// 후기 수정 메서드
	//----------------------------------------------------------------------------------------------------
	void updatePostscript(PostscriptVO postscriptVO) throws Exception;
}
