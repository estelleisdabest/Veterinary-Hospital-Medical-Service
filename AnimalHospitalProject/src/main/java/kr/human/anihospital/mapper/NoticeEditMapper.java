package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeOneDetailVO;
import kr.human.anihospital.vo.NoticeVO;

@Mapper
public interface NoticeEditMapper {
	void updateNotice(NoticeVO noticeVO) throws Exception;
	List<NoticeOneDetailVO> selectOneDetailNotice(int seqNotice) throws Exception;
}
