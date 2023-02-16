package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;


import kr.human.anihospital.vo.PostscriptVO;

@Mapper
public interface PostscriptUpdateMapper {

	void updatePostscript(PostscriptVO postscriptVO) throws Exception;
}
