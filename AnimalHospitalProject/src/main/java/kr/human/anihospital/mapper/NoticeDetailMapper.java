package kr.human.anihospital.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeListVO;

@Mapper
public interface NoticeDetailMapper {
   void deleteNotice(int seq_notice) throws Exception;
   NoticeListVO selectNotice(int seqNotice) throws Exception;
}