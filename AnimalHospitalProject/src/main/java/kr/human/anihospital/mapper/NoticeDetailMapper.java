package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeDetailMapper {
	void deleteNotice(int seq_notice) throws Exception;
}
