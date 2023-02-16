package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeListVO;

@Mapper
public interface NoticeMapper {
	List<NoticeListVO> selectNoticeList() throws Exception;
}
